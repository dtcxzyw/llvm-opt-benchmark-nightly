Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_testclinic?download=true
inline.NumInlined: 454
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@unicode_converter:bb.a
; Function Attrs: nounwind uwtable
define internal ptr @bool_converter(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp ult i64 %2, 4
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.6, i64 noundef %2, i64 noundef 0, i64 noundef 3) #11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %.thread40, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !13
  %i.d = tail call i32 @PyObject_IsTrue(ptr noundef %i.c) #11
  %.fr = freeze i32 %i.d                          ; 2 uses
  %i.e = icmp slt i32 %.fr, 0
  br i1 %i.e, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp eq i64 %2, 1
  br i1 %i.f, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = tail call i32 @PyObject_IsTrue(ptr noundef %i.h) #11 ; 4 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = icmp samesign ult i64 %2, 3
  br i1 %i.k, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.n = tail call i32 @PyLong_AsInt(ptr noundef %i.m) #11 ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @PyErr_Occurred() #11
  %.not24 = icmp eq ptr %i.p, null
  br i1 %.not24, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g, %bb.e
  %.017 = phi i32 [ %i.i, %bb.h ], [ 1, %bb.e ], [ %i.i, %bb.g ], [ %i.i, %bb.i ]
  %.0 = phi i32 [ %i.n, %bb.h ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %bb.i ]
  %.not.i = icmp eq i32 %.fr, 0
  %spec.select = select i1 %.not.i, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  %.017.fr = freeze i32 %.017
  %.not5.i = icmp eq i32 %.017.fr, 0
  %i.q = select i1 %.not5.i, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  %.0.fr = freeze i32 %.0
  %.not6.i = icmp eq i32 %.0.fr, 0
  %spec.select44 = select i1 %.not6.i, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %.thread40

.thread40:                                        ; preds = %bb.j, %bb.c
  %i.r = phi ptr [ @_Py_TrueStruct, %bb.c ], [ %i.q, %bb.j ]
  %i.s = phi ptr [ @_Py_TrueStruct, %bb.c ], [ %spec.select, %bb.j ]
  %i.t = phi ptr [ @_Py_TrueStruct, %bb.c ], [ %spec.select44, %bb.j ]
  %i.u = tail call ptr (i32, ...) @pack_arguments_newref(i32 noundef 3, ptr noundef nonnull %i.s, ptr noundef nonnull %i.r, ptr noundef nonnull %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.f, %bb.d, %bb.b, %.thread40
  %.019 = phi ptr [ %i.u, %.thread40 ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.i ], [ null, %bb.b ]
  ret ptr %.019
}

; Function Attrs: nounwind uwtable
define internal ptr @bool_converter_c_default(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp ult i64 %2, 5
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.7, i64 noundef %2, i64 noundef 0, i64 noundef 4) #11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !13
  %i.d = tail call i32 @PyObject_IsTrue(ptr noundef %i.c) #11 ; 5 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp eq i64 %2, 1
  br i1 %i.f, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = tail call i32 @PyObject_IsTrue(ptr noundef %i.h) #11 ; 4 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = icmp samesign ult i64 %2, 3
  br i1 %i.k, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.n = tail call i32 @PyObject_IsTrue(ptr noundef %i.m) #11 ; 3 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = icmp eq i64 %2, 3
  br i1 %i.p, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.s = tail call i32 @PyObject_IsTrue(ptr noundef %i.r) #11 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.e, %bb.c
  %.023 = phi i32 [ 1, %bb.c ], [ %i.d, %bb.e ], [ %i.d, %bb.g ], [ %i.d, %bb.i ], [ %i.d, %bb.j ]
  %.022 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ %i.i, %bb.g ], [ %i.i, %bb.i ], [ %i.i, %bb.j ]
  %.021 = phi i32 [ -2, %bb.c ], [ -2, %bb.e ], [ -2, %bb.g ], [ %i.n, %bb.i ], [ %i.n, %bb.j ]
  %.0 = phi i32 [ -3, %bb.c ], [ -3, %bb.e ], [ -3, %bb.g ], [ -3, %bb.i ], [ %i.s, %bb.j ]
  %i.u = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.107, i32 noundef range(i32 0, -2147483648) %.023, i32 noundef range(i32 0, -2147483648) %.022, i32 noundef range(i32 -2, -2147483648) %.021, i32 noundef range(i32 -3, -2147483648) %.0) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.k
  %.024 = phi ptr [ %i.u, %bb.k ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.b ]
  ret ptr %.024
}

; Function Attrs: nounwind uwtable
define internal ptr @char_converter(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca [14 x ptr], align 16              ; 17 uses
  %or.cond = icmp ult i64 %2, 15
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.8, i64 noundef %2, i64 noundef 0, i64 noundef 14) #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.hc, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = icmp slt i64 %2, 1
  br i1 %i.c, label %bb.fc, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %1, align 8, !tbaa !13     ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val254 = load ptr, ptr %i.e, align 8, !tbaa !16 ; 5 uses
  %i.f = getelementptr i8, ptr %.val254, i64 168
  %.val268 = load i64, ptr %i.f, align 8, !tbaa !25
  %i.g = and i64 %.val268, 134217728
  %.not186 = icmp eq i64 %i.g, 0
  br i1 %.not186, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq ptr %.val254, @PyLong_Type
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

bb.g:                                             ; preds = %bb.e
  %.not3.i.i = icmp eq ptr %.val254, @PyBool_Type
  br i1 %.not3.i.i, label %bb.h, label %PyBytes_GET_SIZE.exit

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

PyBytes_GET_SIZE.exit:                            ; preds = %bb.g
  %i.h = getelementptr i8, ptr %i.d, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %.not189 = icmp eq i64 %i.i, 1
  br i1 %.not189, label %PyBytes_AS_STRING.exit, label %PyBytes_GET_SIZE.exit288

PyBytes_GET_SIZE.exit288:                         ; preds = %PyBytes_GET_SIZE.exit
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13
  %i.k = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.j, ptr noundef nonnull @.str.108, i64 noundef %i.i) #11 ; 0 uses
  br label %bb.hc

PyBytes_AS_STRING.exit:                           ; preds = %PyBytes_GET_SIZE.exit
  %i.l = getelementptr i8, ptr %i.d, i64 32
  br label %bb.x

bb.i:                                             ; preds = %bb.d
  %.not.i291 = icmp eq ptr %.val254, @PyByteArray_Type
  br i1 %.not.i291, label %bb.k, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.i
  %i.m = tail call i32 @PyType_IsSubtype(ptr noundef %.val254, ptr noundef nonnull @PyByteArray_Type) #11
  %.not420 = icmp eq i32 %i.m, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !13    ; 5 uses
  br i1 %.not420, label %bb.w, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %PyObject_TypeCheck.exit
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 8
  %.val.i292.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !16 ; 2 uses
  %i.n = getelementptr i8, ptr %.pre, i64 8
  %.not.i.i293 = icmp eq ptr %.val.i292.pre, @PyByteArray_Type
  br i1 %.not.i.i293, label %bb.k, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %PyObject_TypeCheck.exit.thread
  %i.o = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i292.pre, ptr noundef nonnull @PyByteArray_Type) #11
  %.not11.i = icmp eq i32 %i.o, 0
  br i1 %.not11.i, label %bb.j, label %thread-pre-split.i

bb.j:                                             ; preds = %PyObject_TypeCheck.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.PyByteArray_GET_SIZE) #12
  unreachable

thread-pre-split.i:                               ; preds = %PyObject_TypeCheck.exit.i
  %.val4.i.pr.i = load ptr, ptr %i.n, align 8, !tbaa !16
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %thread-pre-split.i, %PyObject_TypeCheck.exit.thread
  %3 = phi ptr [ %.pre, %thread-pre-split.i ], [ %.pre, %PyObject_TypeCheck.exit.thread ], [ %i.d, %bb.i ]
  %.val4.i.i = phi ptr [ %.val4.i.pr.i, %thread-pre-split.i ], [ @PyByteArray_Type, %PyObject_TypeCheck.exit.thread ], [ @PyByteArray_Type, %bb.i ] ; 2 uses
  %.not.i3.i = icmp eq ptr %.val4.i.i, @PyLong_Type
  br i1 %.not.i3.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

bb.m:                                             ; preds = %bb.k
  %.not3.i.i294 = icmp eq ptr %.val4.i.i, @PyBool_Type
  br i1 %.not3.i.i294, label %bb.n, label %PyByteArray_GET_SIZE.exit

bb.n:                                             ; preds = %bb.m
  tail call void @__assert_fail(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

PyByteArray_GET_SIZE.exit:                        ; preds = %bb.m
  %i.p = getelementptr i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !26
  %.not188 = icmp eq i64 %i.q, 1
  br i1 %.not188, label %bb.u, label %bb.o

bb.o:                                             ; preds = %PyByteArray_GET_SIZE.exit
  %i.r = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13
  %i.s = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8        ; 2 uses
  %.val.i295 = load ptr, ptr %i.t, align 8, !tbaa !16 ; 2 uses
  %.not.i.i296 = icmp eq ptr %.val.i295, @PyByteArray_Type
  br i1 %.not.i.i296, label %bb.q, label %PyObject_TypeCheck.exit.i297

PyObject_TypeCheck.exit.i297:                     ; preds = %bb.o
  %i.u = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i295, ptr noundef nonnull @PyByteArray_Type) #11
  %.not11.i298 = icmp eq i32 %i.u, 0
  br i1 %.not11.i298, label %bb.p, label %thread-pre-split.i299

bb.p:                                             ; preds = %PyObject_TypeCheck.exit.i297
  tail call void @__assert_fail(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.PyByteArray_GET_SIZE) #12
  unreachable

thread-pre-split.i299:                            ; preds = %PyObject_TypeCheck.exit.i297
  %.val4.i.pr.i300 = load ptr, ptr %i.t, align 8, !tbaa !16
  br label %bb.q

bb.q:                                             ; preds = %thread-pre-split.i299, %bb.o
  %.val4.i.i302 = phi ptr [ %.val4.i.pr.i300, %thread-pre-split.i299 ], [ @PyByteArray_Type, %bb.o ] ; 2 uses
  %.not.i3.i300 = icmp eq ptr %.val4.i.i302, @PyLong_Type
  br i1 %.not.i3.i300, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

bb.s:                                             ; preds = %bb.q
  %.not3.i.i301 = icmp eq ptr %.val4.i.i302, @PyBool_Type
  br i1 %.not3.i.i301, label %bb.t, label %PyByteArray_GET_SIZE.exit302

bb.t:                                             ; preds = %bb.s
  tail call void @__assert_fail(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

PyByteArray_GET_SIZE.exit302:                     ; preds = %bb.s
  %i.v = getelementptr i8, ptr %i.s, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !26
  %i.x = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.r, ptr noundef nonnull @.str.109, i64 noundef %i.w) #11 ; 0 uses
  br label %bb.hc

bb.u:                                             ; preds = %PyByteArray_GET_SIZE.exit
  %i.y = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val.i303 = load ptr, ptr %i.z, align 8, !tbaa !16 ; 2 uses
  %.not.i.i304 = icmp eq ptr %.val.i303, @PyByteArray_Type
  br i1 %.not.i.i304, label %PyByteArray_AS_STRING.exit, label %PyObject_TypeCheck.exit.i305

PyObject_TypeCheck.exit.i305:                     ; preds = %bb.u
  %i.aa = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i303, ptr noundef nonnull @PyByteArray_Type) #11
  %.not3.i = icmp eq i32 %i.aa, 0
  br i1 %.not3.i, label %bb.v, label %PyByteArray_AS_STRING.exit

bb.v:                                             ; preds = %PyObject_TypeCheck.exit.i305
  tail call void @__assert_fail(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__.PyByteArray_AS_STRING) #12
  unreachable

PyByteArray_AS_STRING.exit:                       ; preds = %bb.u, %PyObject_TypeCheck.exit.i305
  %i.ab = getelementptr i8, ptr %i.y, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28
  br label %bb.x

bb.w:                                             ; preds = %PyObject_TypeCheck.exit
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, ptr noundef %.pre) #11
  br label %bb.hc

bb.x:                                             ; preds = %PyByteArray_AS_STRING.exit, %PyBytes_AS_STRING.exit
  %.0182.in = phi ptr [ %i.l, %PyBytes_AS_STRING.exit ], [ %i.ac, %PyByteArray_AS_STRING.exit ]
  %.0182 = load i8, ptr %.0182.in, align 1, !tbaa !10 ; 15 uses
  %i.ad = icmp eq i64 %2, 1
  br i1 %i.ad, label %bb.fc, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ae = getelementptr i8, ptr %1, i64 8         ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !13 ; 4 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %.val253 = load ptr, ptr %i.ag, align 8, !tbaa !16 ; 5 uses
  %i.ah = getelementptr i8, ptr %.val253, i64 168
  %.val267 = load i64, ptr %i.ah, align 8, !tbaa !25
  %i.ai = and i64 %.val267, 134217728
  %.not190 = icmp eq i64 %i.ai, 0
  br i1 %.not190, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not.i.i309 = icmp eq ptr %.val253, @PyLong_Type
  br i1 %.not.i.i309, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

bb.ab:                                            ; preds = %bb.z
  %.not3.i.i310 = icmp eq ptr %.val253, @PyBool_Type
  br i1 %.not3.i.i310, label %bb.ac, label %PyBytes_GET_SIZE.exit311

bb.ac:                                            ; preds = %bb.ab
  tail call void @__assert_fail(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

PyBytes_GET_SIZE.exit311:                         ; preds = %bb.ab
  %i.aj = getelementptr i8, ptr %i.af, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !26 ; 2 uses
  %.not193 = icmp eq i64 %i.ak, 1
  br i1 %.not193, label %PyBytes_AS_STRING.exit321, label %PyBytes_GET_SIZE.exit317

PyBytes_GET_SIZE.exit317:                         ; preds = %PyBytes_GET_SIZE.exit311
  %i.al = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13
  %i.am = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.al, ptr noundef nonnull @.str.112, i64 noundef %i.ak) #11 ; 0 uses
  br label %bb.hc

PyBytes_AS_STRING.exit321:                        ; preds = %PyBytes_GET_SIZE.exit311
  %i.an = getelementptr i8, ptr %i.af, i64 32
  br label %bb.am

bb.ad:                                            ; preds = %bb.y
  %.not.i322 = icmp eq ptr %.val253, @PyByteArray_Type
  br i1 %.not.i322, label %bb.af, label %PyObject_TypeCheck.exit323

PyObject_TypeCheck.exit323:                       ; preds = %bb.ad
  %i.ao = tail call i32 @PyType_IsSubtype(ptr noundef %.val253, ptr noundef nonnull @PyByteArray_Type) #11
  %.not421 = icmp eq i32 %i.ao, 0
  %.pre435 = load ptr, ptr %i.ae, align 8, !tbaa !13 ; 5 uses
  br i1 %.not421, label %bb.al, label %PyObject_TypeCheck.exit323.thread

PyObject_TypeCheck.exit323.thread:                ; preds = %PyObject_TypeCheck.exit323
  %.phi.trans.insert436 = getelementptr i8, ptr %.pre435, i64 8
  %.val.i324.pre = load ptr, ptr %.phi.trans.insert436, align 8, !tbaa !16 ; 2 uses
  %i.ap = getelementptr i8, ptr %.pre435, i64 8
  %.not.i.i325 = icmp eq ptr %.val.i324.pre, @PyByteArray_Type
  br i1 %.not.i.i325, label %bb.af, label %PyObject_TypeCheck.exit.i326

PyObject_TypeCheck.exit.i326:                     ; preds = %PyObject_TypeCheck.exit323.thread
  %i.aq = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i324.pre, ptr noundef nonnull @PyByteArray_Type) #11
  %.not11.i327 = icmp eq i32 %i.aq, 0
  br i1 %.not11.i327, label %bb.ae, label %thread-pre-split.i332

bb.ae:                                            ; preds = %PyObject_TypeCheck.exit.i326
  tail call void @__assert_fail(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.PyByteArray_GET_SIZE) #12
  unreachable

thread-pre-split.i332:                            ; preds = %PyObject_TypeCheck.exit.i326
  %.val4.i.pr.i333 = load ptr, ptr %i.ap, align 8, !tbaa !16
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %thread-pre-split.i332, %PyObject_TypeCheck.exit323.thread
  %4 = phi ptr [ %.pre435, %thread-pre-split.i332 ], [ %.pre435, %PyObject_TypeCheck.exit323.thread ], [ %i.af, %bb.ad ]
  %.val4.i.i335 = phi ptr [ %.val4.i.pr.i333, %thread-pre-split.i332 ], [ @PyByteArray_Type, %PyObject_TypeCheck.exit323.thread ], [ @PyByteArray_Type, %bb.ad ] ; 2 uses
  %.not.i3.i329 = icmp eq ptr %.val4.i.i335, @PyLong_Type
  br i1 %.not.i3.i329, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

bb.ah:                                            ; preds = %bb.af
  %.not3.i.i330 = icmp eq ptr %.val4.i.i335, @PyBool_Type
  br i1 %.not3.i.i330, label %bb.ai, label %PyByteArray_GET_SIZE.exit331

bb.ai:                                            ; preds = %bb.ah
  tail call void @__assert_fail(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

PyByteArray_GET_SIZE.exit331:                     ; preds = %bb.ah
  %i.ar = getelementptr i8, ptr %4, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !26
  %.not192 = icmp eq i64 %i.as, 1
  br i1 %.not192, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %PyByteArray_GET_SIZE.exit331
  %i.at = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !13
  %i.av = tail call fastcc i64 @PyByteArray_GET_SIZE(ptr noundef %i.au)
  %i.aw = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.at, ptr noundef nonnull @.str.113, i64 noundef %i.av) #11 ; 0 uses
  br label %bb.hc

bb.ak:                                            ; preds = %PyByteArray_GET_SIZE.exit331
  %i.ax = load ptr, ptr %i.ae, align 8, !tbaa !13
  %i.ay = tail call fastcc ptr @PyByteArray_AS_STRING(ptr noundef %i.ax)
  br label %bb.am

bb.al:                                            ; preds = %PyObject_TypeCheck.exit323
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.111, ptr noundef %.pre435) #11
  br label %bb.hc

bb.am:                                            ; preds = %bb.ak, %PyBytes_AS_STRING.exit321
  %.0180.in = phi ptr [ %i.an, %PyBytes_AS_STRING.exit321 ], [ %i.ay, %bb.ak ]
  %.0180 = load i8, ptr %.0180.in, align 1, !tbaa !10 ; 14 uses
  %i.az = icmp samesign ult i64 %2, 3
  br i1 %i.az, label %bb.fc, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ba = getelementptr i8, ptr %1, i64 16        ; 6 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !13 ; 3 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %.val252 = load ptr, ptr %i.bc, align 8, !tbaa !16 ; 3 uses
  %i.bd = getelementptr i8, ptr %.val252, i64 168
  %.val266 = load i64, ptr %i.bd, align 8, !tbaa !25
  %i.be = and i64 %.val266, 134217728
  %.not194 = icmp eq i64 %i.be, 0
  br i1 %.not194, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bf = tail call fastcc i64 @PyBytes_GET_SIZE(ptr noundef nonnull %i.bb)
  %.not197 = icmp eq i64 %i.bf, 1
  br i1 %.not197, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bg = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !13
  %i.bi = tail call fastcc i64 @PyBytes_GET_SIZE(ptr noundef %i.bh)
  %i.bj = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bg, ptr noundef nonnull @.str.115, i64 noundef %i.bi) #11 ; 0 uses
  br label %bb.hc

bb.aq:                                            ; preds = %bb.ao
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !13 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %.val.i332 = load ptr, ptr %i.bl, align 8, !tbaa !16
  %i.bm = getelementptr i8, ptr %.val.i332, i64 168
  %.val2.i333 = load i64, ptr %i.bm, align 8, !tbaa !25
  %i.bn = and i64 %.val2.i333, 134217728
  %.not.i334 = icmp eq i64 %i.bn, 0
  br i1 %.not.i334, label %bb.ar, label %PyBytes_AS_STRING.exit335

bb.ar:                                            ; preds = %bb.aq
  tail call void @__assert_fail(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, i32 noundef 25, ptr noundef nonnull @__PRETTY_FUNCTION__.PyBytes_AS_STRING) #12
  unreachable

PyBytes_AS_STRING.exit335:                        ; preds = %bb.aq
  %i.bo = getelementptr i8, ptr %i.bk, i64 32
  br label %bb.aw

bb.as:                                            ; preds = %bb.an
  %.not.i336 = icmp eq ptr %.val252, @PyByteArray_Type
  br i1 %.not.i336, label %PyObject_TypeCheck.exit337.thread, label %PyObject_TypeCheck.exit337

PyObject_TypeCheck.exit337:                       ; preds = %bb.as
  %i.bp = tail call i32 @PyType_IsSubtype(ptr noundef %.val252, ptr noundef nonnull @PyByteArray_Type) #11
  %.not422 = icmp eq i32 %i.bp, 0
  %.pre438 = load ptr, ptr %i.ba, align 8, !tbaa !13 ; 2 uses
  br i1 %.not422, label %bb.av, label %PyObject_TypeCheck.exit337.thread

PyObject_TypeCheck.exit337.thread:                ; preds = %bb.as, %PyObject_TypeCheck.exit337
  %i.bq = phi ptr [ %i.bb, %bb.as ], [ %.pre438, %PyObject_TypeCheck.exit337 ]
  %i.br = tail call fastcc i64 @PyByteArray_GET_SIZE(ptr noundef %i.bq)
  %.not196 = icmp eq i64 %i.br, 1
  br i1 %.not196, label %bb.au, label %bb.at

bb.at:                                            ; preds = %PyObject_TypeCheck.exit337.thread
  %i.bs = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !13
  %i.bu = tail call fastcc i64 @PyByteArray_GET_SIZE(ptr noundef %i.bt)
  %i.bv = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bs, ptr noundef nonnull @.str.116, i64 noundef %i.bu) #11 ; 0 uses
  br label %bb.hc

bb.au:                                            ; preds = %PyObject_TypeCheck.exit337.thread
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !13
  %i.bx = tail call fastcc ptr @PyByteArray_AS_STRING(ptr noundef %i.bw)
  br label %bb.aw

bb.av:                                            ; preds = %PyObject_TypeCheck.exit337
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.111, ptr noundef %.pre438) #11
  br label %bb.hc

bb.aw:                                            ; preds = %bb.au, %PyBytes_AS_STRING.exit335
  %.0178.in = phi ptr [ %i.bo, %PyBytes_AS_STRING.exit335 ], [ %i.bx, %bb.au ]
  %.0178 = load i8, ptr %.0178.in, align 1, !tbaa !10 ; 13 uses
  %i.by = icmp eq i64 %2, 3
  br i1 %i.by, label %bb.fc, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.bz = getelementptr i8, ptr %1, i64 24        ; 6 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !13 ; 3 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %.val251 = load ptr, ptr %i.cb, align 8, !tbaa !16 ; 3 uses
  %i.cc = getelementptr i8, ptr %.val251, i64 168
  %.val265 = load i64, ptr %i.cc, align 8, !tbaa !25
  %i.cd = and i64 %.val265, 134217728
  %.not198 = icmp eq i64 %i.cd, 0
  br i1 %.not198, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ce = tail call fastcc i64 @PyBytes_GET_SIZE(ptr noundef nonnull %i.ca)
  %.not201 = icmp eq i64 %i.ce, 1
  br i1 %.not201, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cf = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13
  %i.cg = load ptr, ptr %i.bz, align 8, !tbaa !13
  %i.ch = tail call fastcc i64 @PyBytes_GET_SIZE(ptr noundef %i.cg)
  %i.ci = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cf, ptr noundef nonnull @.str.118, i64 noundef %i.ch) #11 ; 0 uses
  br label %bb.hc

bb.ba:                                            ; preds = %bb.ay
  %i.cj = load ptr, ptr %i.bz, align 8, !tbaa !13 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  %.val.i338 = load ptr, ptr %i.ck, align 8, !tbaa !16
  %i.cl = getelementptr i8, ptr %.val.i338, i64 168
  %.val2.i339 = load i64, ptr %i.cl, align 8, !tbaa !25
  %i.cm = and i64 %.val2.i339, 134217728
  %.not.i340 = icmp eq i64 %i.cm, 0
  br i1 %.not.i340, label %bb.bb, label %PyBytes_AS_STRING.exit341

bb.bb:                                            ; preds = %bb.ba
  tail call void @__assert_fail(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, i32 noundef 25, ptr noundef nonnull @__PRETTY_FUNCTION__.PyBytes_AS_STRING) #12
  unreachable

PyBytes_AS_STRING.exit341:                        ; preds = %bb.ba
  %i.cn = getelementptr i8, ptr %i.cj, i64 32
  br label %bb.bg

bb.bc:                                            ; preds = %bb.ax
  %.not.i342 = icmp eq ptr %.val251, @PyByteArray_Type
  br i1 %.not.i342, label %PyObject_TypeCheck.exit343.thread, label %PyObject_TypeCheck.exit343

PyObject_TypeCheck.exit343:                       ; preds = %bb.bc
  %i.co = tail call i32 @PyType_IsSubtype(ptr noundef %.val251, ptr noundef nonnull @PyByteArray_Type) #11
  %.not423 = icmp eq i32 %i.co, 0
  %.pre439 = load ptr, ptr %i.bz, align 8, !tbaa !13 ; 2 uses
  br i1 %.not423, label %bb.bf, label %PyObject_TypeCheck.exit343.thread

PyObject_TypeCheck.exit343.thread:                ; preds = %bb.bc, %PyObject_TypeCheck.exit343
  %i.cp = phi ptr [ %i.ca, %bb.bc ], [ %.pre439, %PyObject_TypeCheck.exit343 ]
  %i.cq = tail call fastcc i64 @PyByteArray_GET_SIZE(ptr noundef %i.cp)
  %.not200 = icmp eq i64 %i.cq, 1
  br i1 %.not200, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %PyObject_TypeCheck.exit343.thread
  %i.cr = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13
  %i.cs = load ptr, ptr %i.bz, align 8, !tbaa !13
  %i.ct = tail call fastcc i64 @PyByteArray_GET_SIZE(ptr noundef %i.cs)
  %i.cu = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cr, ptr noundef nonnull @.str.119, i64 noundef %i.ct) #11 ; 0 uses
  br label %bb.hc

bb.be:                                            ; preds = %PyObject_TypeCheck.exit343.thread
  %i.cv = load ptr, ptr %i.bz, align 8, !tbaa !13
  %i.cw = tail call fastcc ptr @PyByteArray_AS_STRING(ptr noundef %i.cv)
  br label %bb.bg

bb.bf:                                            ; preds = %PyObject_TypeCheck.exit343
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.111, ptr noundef %.pre439) #11
  br label %bb.hc

bb.bg:                                            ; preds = %bb.be, %PyBytes_AS_STRING.exit341
  %.0176.in = phi ptr [ %i.cn, %PyBytes_AS_STRING.exit341 ], [ %i.cw, %bb.be ]
  %.0176 = load i8, ptr %.0176.in, align 1, !tbaa !10 ; 12 uses
  %i.cx = icmp samesign ult i64 %2, 5
  br i1 %i.cx, label %bb.fc, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cy = getelementptr i8, ptr %1, i64 32        ; 6 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !13 ; 3 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  %.val250 = load ptr, ptr %i.da, align 8, !tbaa !16 ; 3 uses
  %i.db = getelementptr i8, ptr %.val250, i64 168
  %.val264 = load i64, ptr %i.db, align 8, !tbaa !25
  %i.dc = and i64 %.val264, 134217728
  %.not202 = icmp eq i64 %i.dc, 0
  br i1 %.not202, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dd = tail call fastcc i64 @PyBytes_GET_SIZE(ptr noundef nonnull %i.cz)
  %.not205 = icmp eq i64 %i.dd, 1
  br i1 %.not205, label %bb.bk, label %bb.bj
end_hunk_0
begin_hunk_1_@pack_arguments_newref:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = getelementptr i8, ptr %i.c, i64 16
  %i.h = getelementptr i8, ptr %i.c, i64 32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %PyTuple_SET_ITEM.exit
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %PyTuple_SET_ITEM.exit ] ; 4 uses
  %i.i = load i32, ptr %1, align 16               ; 3 uses
  %i.j = icmp ult i32 %i.i, 41
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.e, align 16
  %i.l = zext nneg i32 %i.i to i64
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l
  %i.n = add nuw nsw i32 %i.i, 8
  store i32 %i.n, ptr %1, align 16
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  store ptr %i.p, ptr %i.d, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = phi ptr [ %i.m, %bb.f ], [ %i.o, %bb.g ]
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13   ; 4 uses
  %.not25 = icmp eq ptr %i.r, null
  br i1 %.not25, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = call i32 @_PyObject_IsFreed(ptr noundef nonnull %i.r) #11
  %.not26 = icmp eq i32 %i.s, 0
  br i1 %.not26, label %bb.l, label %.critedge

.critedge:                                        ; preds = %bb.i
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
  %i.u = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !13
  %i.v = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.u, ptr noundef nonnull @.str.92, i32 noundef %i.t, ptr noundef nonnull %i.r) #11 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  %i.w = load i32, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %.not.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %.critedge
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.c, align 8, !tbaa !10
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.c) #11
  br label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.h, %bb.i
  %.0 = phi ptr [ %i.r, %bb.i ], [ @_Py_NoneStruct, %bb.h ] ; 3 uses
  %i.z = load i32, ptr %.0, align 8, !tbaa !10    ; 2 uses
  %i.aa = icmp ugt i32 %i.z, -1073741825
  br i1 %i.aa, label %_Py_NewRef.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = add nuw i32 %i.z, 1
  store i32 %i.ab, ptr %.0, align 8, !tbaa !10
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.l, %bb.m
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !16 ; 3 uses
  %i.ac = getelementptr i8, ptr %.val.i, i64 168
  %.val7.i = load i64, ptr %i.ac, align 8, !tbaa !25
  %i.ad = and i64 %.val7.i, 67108864
  %.not.i30 = icmp eq i64 %i.ad, 0
  br i1 %.not.i30, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_Py_NewRef.exit
  call void @__assert_fail(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef 34, ptr noundef nonnull @__PRETTY_FUNCTION__.PyTuple_SET_ITEM) #12
  unreachable

bb.o:                                             ; preds = %_Py_NewRef.exit
  %.not.i.i = icmp eq ptr %.val.i, @PyLong_Type
  br i1 %.not.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

bb.q:                                             ; preds = %bb.o
  %.not3.i.i = icmp eq ptr %.val.i, @PyBool_Type
  br i1 %.not3.i.i, label %bb.r, label %_Py_SIZE_impl.exit.i

bb.r:                                             ; preds = %bb.q
  call void @__assert_fail(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

_Py_SIZE_impl.exit.i:                             ; preds = %bb.q
  %i.ae = load i64, ptr %i.g, align 8, !tbaa !26
  %i.af = icmp sgt i64 %i.ae, %indvars.iv
  br i1 %i.af, label %PyTuple_SET_ITEM.exit, label %bb.s

bb.s:                                             ; preds = %_Py_SIZE_impl.exit.i
  call void @__assert_fail(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94, i32 noundef 36, ptr noundef nonnull @__PRETTY_FUNCTION__.PyTuple_SET_ITEM) #12
  unreachable

PyTuple_SET_ITEM.exit:                            ; preds = %_Py_SIZE_impl.exit.i
  %i.ag = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv
  store ptr %.0, ptr %i.ag, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %.critedge29, label %bb.e, !llvm.loop !68

.critedge29:                                      ; preds = %PyTuple_SET_ITEM.exit
  call void @llvm.va_end.p0(ptr nonnull %1)
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.k, %bb.j, %.critedge, %.critedge29
  %.3 = phi ptr [ %i.c, %.critedge29 ], [ null, %.critedge ], [ null, %bb.j ], [ null, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %Py_DECREF.exit
  %.4 = phi ptr [ %.3, %Py_DECREF.exit ], [ null, %bb.c ]
  ret ptr %.4
}

declare ptr @PyErr_Occurred() local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

declare i32 @_PyObject_IsFreed(ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #2

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #2

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @PyBytes_GET_SIZE(ptr nofree noundef readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !16  ; 3 uses
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val3 = load i64, ptr %i.b, align 8, !tbaa !25
  %i.c = and i64 %.val3, 134217728
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, i32 noundef 30, ptr noundef nonnull @__PRETTY_FUNCTION__.PyBytes_GET_SIZE) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %.val, @PyLong_Type
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not3.i = icmp eq ptr %.val, @PyBool_Type
  br i1 %.not3.i, label %bb.f, label %_Py_SIZE_impl.exit

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

_Py_SIZE_impl.exit:                               ; preds = %bb.e
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  ret i64 %i.e
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @PyByteArray_GET_SIZE(ptr nofree noundef readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %.not.i = icmp eq ptr %.val, @PyByteArray_Type
  br i1 %.not.i, label %bb.c, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyByteArray_Type) #11
  %.not11 = icmp eq i32 %i.b, 0
  br i1 %.not11, label %bb.b, label %thread-pre-split

bb.b:                                             ; preds = %PyObject_TypeCheck.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.PyByteArray_GET_SIZE) #12
  unreachable

thread-pre-split:                                 ; preds = %PyObject_TypeCheck.exit
  %.val4.i.pr = load ptr, ptr %i.a, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %thread-pre-split
  %.val4.i = phi ptr [ %.val4.i.pr, %thread-pre-split ], [ @PyByteArray_Type, %bb.a ] ; 2 uses
  %.not.i3 = icmp eq ptr %.val4.i, @PyLong_Type
  br i1 %.not.i3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not3.i = icmp eq ptr %.val4.i, @PyBool_Type
  br i1 %.not3.i, label %bb.f, label %_Py_SIZE_impl.exit

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

_Py_SIZE_impl.exit:                               ; preds = %bb.e
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26
  ret i64 %i.d
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @PyByteArray_AS_STRING(ptr nofree noundef readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %.not.i = icmp eq ptr %.val, @PyByteArray_Type
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyByteArray_Type) #11
  %.not3 = icmp eq i32 %i.b, 0
  br i1 %.not3, label %bb.b, label %PyObject_TypeCheck.exit.thread

bb.b:                                             ; preds = %PyObject_TypeCheck.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__.PyByteArray_AS_STRING) #12
  unreachable

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare ptr @PyLong_FromUnsignedLong(i64 noundef) local_unnamed_addr #2

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #2

declare i64 @PyLong_AsNativeBytes(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #2

declare i32 @_PyLong_UnsignedShort_Converter(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyLong_UnsignedInt_Converter(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyLong_UnsignedLong_Converter(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyIndex_Check(ptr noundef) local_unnamed_addr #2

declare i64 @PyLong_AsLongLong(ptr noundef) local_unnamed_addr #2

declare ptr @PyLong_FromLongLong(i64 noundef) local_unnamed_addr #2

declare i32 @_PyLong_UnsignedLongLong_Converter(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyLong_FromUnsignedLongLong(i64 noundef) local_unnamed_addr #2

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #2

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #2

declare i32 @_Py_convert_optional_to_ssize_t(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_Py_convert_optional_to_non_negative_ssize_t(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #2

declare i32 @_PyEval_SliceIndex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyEval_SliceIndexNotNone(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyLong_Size_t_Converter(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyLong_FromSize_t(i64 noundef) local_unnamed_addr #2

declare double @PyFloat_AsDouble(ptr noundef) local_unnamed_addr #2

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #2

declare { double, double } @PyComplex_AsCComplex(ptr noundef) local_unnamed_addr #2

declare ptr @PyComplex_FromCComplex(double, double) local_unnamed_addr #2

declare i32 @_PyArg_ParseStack(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #2

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #2

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #2

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #2

declare i32 @PyBuffer_ToContiguous(ptr noundef, ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare void @PyBytesWriter_Discard(ptr noundef) local_unnamed_addr #2

declare ptr @PyBytesWriter_Finish(ptr noundef) local_unnamed_addr #2

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyTuple_FromArray(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare i32 @_PyArg_ParseStackAndKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @PySequence_Contains(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyArg_NoPositional(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyDict_New() local_unnamed_addr #2

declare ptr @PyTuple_GetSlice(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyType_GenericNew(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef ptr @_testclinic_TestClass_get_defining_class(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(ret: address, provenance) %1, ptr nofree readnone captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) #0 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %.not6 = icmp eq ptr %4, null
  br i1 %.not6, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr i8, ptr %4, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !16 ; 3 uses
  %i.b = getelementptr i8, ptr %.val.i, i64 168
  %.val3.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.c = and i64 %.val3.i, 67108864
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef 24, ptr noundef nonnull @__PRETTY_FUNCTION__.PyTuple_GET_SIZE) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.val.i, @PyLong_Type
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

bb.g:                                             ; preds = %bb.e
  %.not3.i.i = icmp eq ptr %.val.i, @PyBool_Type
  br i1 %.not3.i.i, label %bb.h, label %PyTuple_GET_SIZE.exit

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

PyTuple_GET_SIZE.exit:                            ; preds = %bb.g
  %i.d = getelementptr i8, ptr %4, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  %.not7 = icmp eq i64 %i.e, 0
  br i1 %.not7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %PyTuple_GET_SIZE.exit, %bb.a
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.244) #11
  br label %_testclinic_TestClass_get_defining_class_impl.exit

bb.j:                                             ; preds = %PyTuple_GET_SIZE.exit, %bb.b
  %i.g = load i32, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_testclinic_TestClass_get_defining_class_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %1, align 8, !tbaa !10
  br label %_testclinic_TestClass_get_defining_class_impl.exit

_testclinic_TestClass_get_defining_class_impl.exit: ; preds = %bb.k, %bb.j, %bb.i
  %.0 = phi ptr [ null, %bb.i ], [ %1, %bb.j ], [ %1, %bb.k ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_testclinic_TestClass_get_defining_class_arg(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b
end_hunk_1
