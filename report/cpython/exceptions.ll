inline.NumInlined: 39
inline.NumDeleted: 18
begin_hunk_0_@err_formatunraisable:bb.a
  call void @PyErr_SetRaisedException(ptr noundef nonnull %i.o) #8
  br label %bb.f

bb.f:                                             ; preds = %.thread, %_Py_NewRef.exit, %bb.c
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.u = load ptr, ptr %i.d, align 16, !tbaa !10
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.w = load ptr, ptr %i.f, align 16, !tbaa !10
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.y = load ptr, ptr %i.h, align 16, !tbaa !10
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.aa = load ptr, ptr %i.j, align 16, !tbaa !10
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.ac = load ptr, ptr %i.l, align 16, !tbaa !10
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !10
  call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef %i.t, ptr noundef %i.u, ptr noundef %i.v, ptr noundef %i.w, ptr noundef %i.x, ptr noundef %i.y, ptr noundef %i.z, ptr noundef %i.aa, ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef %i.ad) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.f ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_testcapi_err_set_raised(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.b = icmp ugt i32 %i.a, -1073741825
  br i1 %i.b, label %Py_INCREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i32 %i.a, 1
  store i32 %i.c, ptr %1, align 8, !tbaa !24
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.a, %bb.b
  tail call void @PyErr_SetRaisedException(ptr noundef nonnull %1) #8
  %i.d = tail call ptr @PyErr_Occurred() #8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %Py_INCREF.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 27, ptr noundef nonnull @__PRETTY_FUNCTION__._testcapi_err_set_raised) #9
  unreachable

bb.d:                                             ; preds = %Py_INCREF.exit
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_testcapi_exception_print(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond = icmp ult i64 %i.a, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.7, i64 noundef %2, i64 noundef 1, i64 noundef 2) #8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_testcapi_exception_print_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !10     ; 5 uses
  %i.d = icmp slt i64 %2, 2
  br i1 %i.d, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = tail call i32 @PyObject_IsTrue(ptr noundef %i.f) #8 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %_testcapi_exception_print_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %i.c, i64 8        ; 2 uses
  %.val8.i = load ptr, ptr %i.i, align 8, !tbaa !26 ; 2 uses
  %i.j = getelementptr i8, ptr %.val8.i, i64 168
  %.val9.i = load i64, ptr %i.j, align 8, !tbaa !27
  %i.k = and i64 %.val9.i, 1073741824
  %.not7.i = icmp eq i64 %i.k, 0
  br i1 %.not7.i, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  tail call void @PyErr_Display(ptr noundef nonnull %.val8.i, ptr noundef nonnull %i.c, ptr noundef null) #8
  br label %_testcapi_exception_print_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @PyException_GetTraceback(ptr noundef nonnull %i.c) #8 ; 5 uses
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !26
  tail call void @PyErr_Display(ptr noundef %.val.i, ptr noundef nonnull %i.c, ptr noundef %i.l) #8
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_testcapi_exception_print_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i.i.i, label %bb.i, label %_testcapi_exception_print_impl.exit

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !24
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %_testcapi_exception_print_impl.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #8
  br label %_testcapi_exception_print_impl.exit

.thread:                                          ; preds = %bb.c, %bb.e
  tail call void @PyErr_DisplayException(ptr noundef %i.c) #8
  br label %_testcapi_exception_print_impl.exit

_testcapi_exception_print_impl.exit:              ; preds = %.thread, %bb.j, %bb.i, %bb.h, %bb.g, %.thread.i, %bb.d, %bb.b
  %.011 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ @_Py_NoneStruct, %.thread.i ], [ @_Py_NoneStruct, %bb.g ], [ @_Py_NoneStruct, %bb.h ], [ @_Py_NoneStruct, %bb.i ], [ @_Py_NoneStruct, %bb.j ], [ @_Py_NoneStruct, %.thread ]
  ret ptr %.011
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_testcapi_fatal_error(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !6
  %i.c = call i32 (ptr, i64, ptr, ...) @_PyArg_ParseStack(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !6
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @PyEval_SaveThread() #8         ; 0 uses
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._testcapi_fatal_error_impl, ptr noundef %i.d) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._testcapi_fatal_error_impl, ptr noundef %i.d) #9
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal ptr @_testcapi_make_exception_with_doc(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 3 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 8
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !26 ; 3 uses
  %i.e = getelementptr i8, ptr %.val.i, i64 168
  %.val3.i = load i64, ptr %i.e, align 8, !tbaa !27
  %i.f = and i64 %.val3.i, 67108864
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 24, ptr noundef nonnull @__PRETTY_FUNCTION__.PyTuple_GET_SIZE) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.val.i, @PyLong_Type
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not3.i.i = icmp eq ptr %.val.i, @PyBool_Type
  br i1 %.not3.i.i, label %bb.g, label %PyTuple_GET_SIZE.exit

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #9
  unreachable

PyTuple_GET_SIZE.exit:                            ; preds = %bb.f
  %i.g = getelementptr i8, ptr %3, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %PyTuple_GET_SIZE.exit
  %.fr = phi i64 [ %i.h, %PyTuple_GET_SIZE.exit ], [ 0, %bb.a ]
  %i.i = add i64 %.fr, %2                         ; 2 uses
  %i.j = add i64 %i.i, -1                         ; 2 uses
  %i.k = add i64 %2, -1
  %i.l = icmp ult i64 %i.k, 4
  %i.m = icmp ne ptr %1, null
  %i.n = and i1 %i.m, %i.l
  %or.cond5 = and i1 %.not, %i.n
  br i1 %or.cond5, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @_testcapi_make_exception_with_doc._parser, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not59 = icmp eq ptr %i.o, null
  br i1 %.not59, label %bb.x, label %.thread

.thread:                                          ; preds = %bb.h, %bb.i
  %i.p = phi ptr [ %i.o, %bb.i ], [ %1, %bb.h ]   ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !10   ; 3 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val70 = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.s = getelementptr i8, ptr %.val70, i64 168
  %.val72 = load i64, ptr %i.s, align 8, !tbaa !27
  %i.t = and i64 %.val72, 268435456
  %.not60 = icmp eq i64 %i.t, 0
  br i1 %.not60, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull %i.q) #8
  br label %bb.x

bb.k:                                             ; preds = %.thread
  %i.u = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.q, ptr noundef nonnull %i.b) #8 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.x, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #10
  %i.x = load i64, ptr %i.b, align 8, !tbaa !29
  %.not61 = icmp eq i64 %i.w, %i.x
  br i1 %.not61, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.y, ptr noundef nonnull @.str.45) #8
  br label %bb.x

bb.n:                                             ; preds = %bb.l
  %.not62 = icmp eq i64 %i.j, 0
  br i1 %.not62, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = getelementptr i8, ptr %i.p, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !10  ; 4 uses
  %.not63 = icmp eq ptr %i.aa, null
  br i1 %.not63, label %.thread77, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ac = getelementptr i8, ptr %.val, i64 168
  %.val71 = load i64, ptr %i.ac, align 8, !tbaa !27
  %i.ad = and i64 %.val71, 268435456
  %.not64 = icmp eq i64 %i.ad, 0
  br i1 %.not64, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, ptr noundef nonnull %i.aa) #8
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ae = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.c) #8 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.thread74, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #10
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !29
  %.not65 = icmp eq i64 %i.ag, %i.ah
  br i1 %.not65, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.ai, ptr noundef nonnull @.str.45) #8
  br label %.thread74

bb.u:                                             ; preds = %bb.s
  %i.aj = add i64 %i.i, -2                        ; 2 uses
  %.not66 = icmp eq i64 %i.aj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br i1 %.not66, label %bb.w, label %.thread77

.thread74:                                        ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.x

.thread77:                                        ; preds = %bb.u, %bb.o
  %.147 = phi i64 [ %i.j, %bb.o ], [ %i.aj, %bb.u ]
  %.043 = phi ptr [ null, %bb.o ], [ %i.ae, %bb.u ] ; 2 uses
  %i.ak = getelementptr i8, ptr %i.p, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !10 ; 3 uses
  %.not67 = icmp ne ptr %i.al, null
  %.not68 = icmp eq i64 %.147, 1
  %or.cond = select i1 %.not67, i1 %.not68, i1 false
  br i1 %or.cond, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread77
  %i.am = getelementptr i8, ptr %i.p, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !10
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %.thread77, %bb.n, %bb.v
  %.144 = phi ptr [ %.043, %bb.v ], [ %.043, %.thread77 ], [ null, %bb.n ], [ %i.ae, %bb.u ]
  %.1 = phi ptr [ %i.al, %bb.v ], [ %i.al, %.thread77 ], [ null, %bb.n ], [ null, %bb.u ]
  %.041 = phi ptr [ %i.an, %bb.v ], [ null, %.thread77 ], [ null, %bb.n ], [ null, %bb.u ]
  %i.ao = call ptr @PyErr_NewExceptionWithDoc(ptr noundef nonnull %i.u, ptr noundef %.144, ptr noundef %.1, ptr noundef %.041) #8
  br label %bb.x

bb.x:                                             ; preds = %.thread74, %bb.j, %bb.m, %bb.q, %bb.w, %bb.i, %bb.k
  %.048 = phi ptr [ null, %bb.k ], [ null, %bb.m ], [ %i.ao, %bb.w ], [ null, %.thread74 ], [ null, %bb.q ], [ null, %bb.j ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.048
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_testcapi_exc_set_object(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.10, i64 noundef %2, i64 noundef 2, i64 noundef 2) #8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !10
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  tail call void @PyErr_SetObject(ptr noundef %i.b, ptr noundef %i.d) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal ptr @_testcapi_exc_set_object_fetch(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.11, i64 noundef %2, i64 noundef 2, i64 noundef 2) #8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !10
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr @uninitialized, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr @uninitialized, ptr %i.b, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store ptr @uninitialized, ptr %i.c, align 8, !tbaa !10
  tail call void @PyErr_SetObject(ptr noundef %i.e, ptr noundef %i.g) #8
  call void @PyErr_Fetch(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #8
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !10   ; 5 uses
  %.not.i = icmp eq ptr %i.h, @uninitialized
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__assert_fail(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.35, i32 noundef 134, ptr noundef nonnull @__PRETTY_FUNCTION__._testcapi_exc_set_object_fetch_impl) #9
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !10
  %.not2.i = icmp eq ptr %i.i, @uninitialized
  br i1 %.not2.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @__assert_fail(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.35, i32 noundef 135, ptr noundef nonnull @__PRETTY_FUNCTION__._testcapi_exc_set_object_fetch_impl) #9
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %.not3.i = icmp eq ptr %i.j, @uninitialized
  br i1 %.not3.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @__assert_fail(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.35, i32 noundef 136, ptr noundef nonnull @__PRETTY_FUNCTION__._testcapi_exc_set_object_fetch_impl) #9
  unreachable

bb.i:                                             ; preds = %bb.g
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %Py_XDECREF.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = load i32, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i.i.i, label %bb.k, label %Py_XDECREF.exitthread-pre-split.i

bb.k:                                             ; preds = %bb.j
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.h, align 8, !tbaa !24
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.l, label %Py_XDECREF.exitthread-pre-split.i

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.h) #8
  br label %Py_XDECREF.exitthread-pre-split.i

Py_XDECREF.exitthread-pre-split.i:                ; preds = %bb.l, %bb.k, %bb.j
  %.pr.i = load ptr, ptr %i.c, align 8, !tbaa !10
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %Py_XDECREF.exitthread-pre-split.i, %bb.i
  %i.n = phi ptr [ %.pr.i, %Py_XDECREF.exitthread-pre-split.i ], [ %i.j, %bb.i ] ; 4 uses
  %.not.i4.i = icmp eq ptr %i.n, null
  br i1 %.not.i4.i, label %_testcapi_exc_set_object_fetch_impl.exit, label %bb.m

bb.m:                                             ; preds = %Py_XDECREF.exit.i
  %i.o = load i32, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %.not.i.i5.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i.i5.i, label %bb.n, label %_testcapi_exc_set_object_fetch_impl.exit

bb.n:                                             ; preds = %bb.m
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !24
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.o, label %_testcapi_exc_set_object_fetch_impl.exit

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.n) #8
  br label %_testcapi_exc_set_object_fetch_impl.exit

_testcapi_exc_set_object_fetch_impl.exit:         ; preds = %Py_XDECREF.exit.i, %bb.m, %bb.n, %bb.o
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %_testcapi_exc_set_object_fetch_impl.exit
  %.0 = phi ptr [ %i.r, %_testcapi_exc_set_object_fetch_impl.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_testcapi_err_setstring(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = call i32 (ptr, i64, ptr, ...) @_PyArg_ParseStack(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.g = icmp eq ptr %i.e, @_Py_NoneStruct
  %spec.store.select.i = select i1 %i.g, ptr null, ptr %i.e
  call void @PyErr_SetString(ptr noundef %spec.store.select.i, ptr noundef %i.f) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_testcapi_err_setfromerrnowithfilename(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.e = call i32 (ptr, i64, ptr, ...) @_PyArg_ParseStack(ptr noundef %1, i64 noundef %2, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4, !tbaa !6
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.i = icmp eq ptr %i.g, @_Py_NoneStruct
  %spec.store.select.i = select i1 %i.i, ptr null, ptr %i.g
  %i.j = tail call ptr @__errno_location() #11
  store i32 %i.f, ptr %i.j, align 4, !tbaa !6
end_hunk_0
