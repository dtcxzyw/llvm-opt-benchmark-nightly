Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_bisectmodule?download=true
inline.NumInlined: 26
inline.NumDeleted: 11
begin_hunk_0_@_bisect_bisect_right:bb.a
  %i.r = call ptr @_PyNumber_Index(ptr noundef nonnull %i.q) #4 ; 5 uses
  %.not63 = icmp eq ptr %i.r, null
  br i1 %.not63, label %Py_DECREF.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.r) #4 ; 4 uses
  %i.t = load i32, ptr %i.r, align 8, !tbaa !46   ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.r, align 8, !tbaa !46
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.r) #4
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g
  %i.w = icmp eq i64 %i.s, -1
  br i1 %i.w, label %Py_DECREF.exit.thread, label %bb.j

Py_DECREF.exit.thread:                            ; preds = %bb.f, %Py_DECREF.exit
  %i.x = call ptr @PyErr_Occurred() #4
  %.not64 = icmp eq ptr %i.x, null
  br i1 %.not64, label %.thread74, label %.thread77

bb.j:                                             ; preds = %Py_DECREF.exit
  %i.y = icmp slt i64 %i.s, 0
  br i1 %i.y, label %.thread74, label %bb.k

.thread74:                                        ; preds = %Py_DECREF.exit.thread, %bb.j
  %i.z = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !45
  call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.11) #4
  br label %.thread77

bb.k:                                             ; preds = %bb.j
  %i.aa = add i64 %i.e, -3                        ; 2 uses
  %.not65 = icmp eq i64 %i.aa, 0
  br i1 %.not65, label %.thread81, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %.046 = phi i64 [ %i.aa, %bb.k ], [ %i.f, %bb.e ]
  %.1 = phi i64 [ %i.s, %bb.k ], [ 0, %bb.e ]     ; 2 uses
  %i.ab = getelementptr i8, ptr %i.l, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45 ; 2 uses
  %.not66 = icmp eq ptr %i.ac, null
  br i1 %.not66, label %.thread85, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = call i32 @_Py_convert_optional_to_ssize_t(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.b) #4
  %.not67 = icmp eq i32 %i.ad, 0
  br i1 %.not67, label %.thread77, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = icmp eq i64 %.046, 1
  br i1 %i.ae, label %.thread81, label %.thread85

.thread85:                                        ; preds = %bb.l, %bb.n
  %i.af = getelementptr i8, ptr %i.l, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !45
  br label %.thread81

.thread81:                                        ; preds = %.thread, %bb.k, %bb.n, %.thread85
  %.284 = phi i64 [ %.1, %.thread85 ], [ %.1, %bb.n ], [ 0, %.thread ], [ %i.s, %bb.k ]
  %.044 = phi ptr [ %i.ag, %.thread85 ], [ @_Py_NoneStruct, %bb.n ], [ @_Py_NoneStruct, %.thread ], [ @_Py_NoneStruct, %bb.k ]
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !52
  %i.ai = call fastcc i64 @internal_bisect_right(ptr noundef %i.m, ptr noundef %i.o, i64 noundef %.284, i64 noundef %i.ah, ptr noundef %.044) ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread81
  %i.ak = call ptr @PyErr_Occurred() #4
  %.not69 = icmp eq ptr %i.ak, null
  br i1 %.not69, label %bb.p, label %.thread77

bb.p:                                             ; preds = %bb.o, %.thread81
  %i.al = call ptr @PyLong_FromSsize_t(i64 noundef %i.ai) #4
  br label %.thread77

.thread77:                                        ; preds = %.thread74, %Py_DECREF.exit.thread, %bb.p, %bb.d, %bb.m, %bb.o
  %.048 = phi ptr [ null, %bb.o ], [ %i.al, %bb.p ], [ null, %bb.m ], [ null, %bb.d ], [ null, %Py_DECREF.exit.thread ], [ null, %.thread74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.048
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_bisect_insort_right(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 !guid !75 {
bb.a:
  %i.a = alloca [5 x ptr], align 16               ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.e = add i64 %i.d, %2                         ; 2 uses
  %i.f = add i64 %i.e, -2                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i64 -1, ptr %i.b, align 8, !tbaa !52
  %i.g = add i64 %2, -2
  %i.h = icmp ult i64 %i.g, 3
  %i.i = icmp ne ptr %1, null
  %i.j = and i1 %i.i, %i.h
  %or.cond5 = and i1 %.not, %i.j
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @_bisect_insort_right._parser, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #4 ; 2 uses
  %.not58 = icmp eq ptr %i.k, null
  br i1 %.not58, label %_bisect_insort_right_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %1, %bb.c ]   ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45   ; 5 uses
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45   ; 4 uses
  %.not59 = icmp eq i64 %i.f, 0
  br i1 %.not59, label %.thread88, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.p = getelementptr i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45   ; 2 uses
  %.not60 = icmp eq ptr %i.q, null
  br i1 %.not60, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call ptr @_PyNumber_Index(ptr noundef nonnull %i.q) #4 ; 5 uses
  %.not61 = icmp eq ptr %i.r, null
  br i1 %.not61, label %Py_DECREF.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.r) #4 ; 4 uses
  %i.t = load i32, ptr %i.r, align 8, !tbaa !46   ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.r, align 8, !tbaa !46
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.r) #4
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g
  %i.w = icmp eq i64 %i.s, -1
  br i1 %i.w, label %Py_DECREF.exit.thread, label %bb.j

Py_DECREF.exit.thread:                            ; preds = %bb.f, %Py_DECREF.exit
  %i.x = call ptr @PyErr_Occurred() #4
  %.not62 = icmp eq ptr %i.x, null
  br i1 %.not62, label %.thread72, label %_bisect_insort_right_impl.exit

bb.j:                                             ; preds = %Py_DECREF.exit
  %i.y = icmp slt i64 %i.s, 0
  br i1 %i.y, label %.thread72, label %bb.k

.thread72:                                        ; preds = %Py_DECREF.exit.thread, %bb.j
  %i.z = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !45
  call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.11) #4
  br label %_bisect_insort_right_impl.exit

bb.k:                                             ; preds = %bb.j
  %i.aa = add i64 %i.e, -3                        ; 2 uses
  %.not63 = icmp eq i64 %i.aa, 0
  br i1 %.not63, label %.thread88, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %.044 = phi i64 [ %i.aa, %bb.k ], [ %i.f, %bb.e ]
  %.1 = phi i64 [ %i.s, %bb.k ], [ 0, %bb.e ]     ; 3 uses
  %i.ab = getelementptr i8, ptr %i.l, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45 ; 2 uses
  %.not64 = icmp eq ptr %i.ac, null
  br i1 %.not64, label %.thread83, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = call i32 @_Py_convert_optional_to_ssize_t(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.b) #4
  %.not65 = icmp eq i32 %i.ad, 0
  br i1 %.not65, label %_bisect_insort_right_impl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = icmp eq i64 %.044, 1
  %.pre93 = load i64, ptr %i.b, align 8, !tbaa !52 ; 2 uses
  br i1 %i.ae, label %.thread88, label %.thread83

.thread83:                                        ; preds = %bb.n, %bb.l
  %i.af = phi i64 [ -1, %bb.l ], [ %.pre93, %bb.n ] ; 2 uses
  %i.ag = getelementptr i8, ptr %i.l, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !45 ; 4 uses
  %i.ai = icmp eq ptr %i.ah, @_Py_NoneStruct
  br i1 %i.ai, label %.thread88, label %bb.o

.thread88:                                        ; preds = %.thread, %bb.k, %bb.n, %.thread83
  %i.aj = phi i64 [ %i.af, %.thread83 ], [ %.pre93, %bb.n ], [ -1, %.thread ], [ -1, %bb.k ]
  %.04292 = phi ptr [ %i.ah, %.thread83 ], [ @_Py_NoneStruct, %bb.n ], [ @_Py_NoneStruct, %.thread ], [ @_Py_NoneStruct, %bb.k ]
  %.28291 = phi i64 [ %.1, %.thread83 ], [ %.1, %bb.n ], [ 0, %.thread ], [ %i.s, %bb.k ]
  %i.ak = call fastcc i64 @internal_bisect_right(ptr noundef %i.m, ptr noundef %i.o, i64 noundef %.28291, i64 noundef %i.aj, ptr noundef nonnull %.04292)
  br label %Py_DECREF.exit36.i

bb.o:                                             ; preds = %.thread83
  %i.al = call ptr @PyObject_CallOneArg(ptr noundef %i.ah, ptr noundef %i.o) #4 ; 5 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_bisect_insort_right_impl.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = call fastcc i64 @internal_bisect_right(ptr noundef %i.m, ptr noundef nonnull %i.al, i64 noundef %.1, i64 noundef %i.af, ptr noundef %i.ah) ; 3 uses
  %i.ao = load i32, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %.not.i35.i = icmp sgt i32 %i.ao, -1
  br i1 %.not.i35.i, label %bb.q, label %Py_DECREF.exit36.i

bb.q:                                             ; preds = %bb.p
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.al, align 8, !tbaa !46
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.r, label %Py_DECREF.exit36.i

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #4
  br label %Py_DECREF.exit36.i

Py_DECREF.exit36.i:                               ; preds = %bb.r, %bb.q, %bb.p, %.thread88
  %.028.i = phi i64 [ %i.ak, %.thread88 ], [ %i.an, %bb.p ], [ %i.an, %bb.q ], [ %i.an, %bb.r ] ; 3 uses
  %i.ar = icmp slt i64 %.028.i, 0
  br i1 %i.ar, label %_bisect_insort_right_impl.exit, label %bb.s

bb.s:                                             ; preds = %Py_DECREF.exit36.i
  %i.as = getelementptr i8, ptr %i.m, i64 8
  %.val.i = load ptr, ptr %i.as, align 8, !tbaa !53
  %.not.i67 = icmp eq ptr %.val.i, @PyList_Type
  br i1 %.not.i67, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.at = call i32 @PyList_Insert(ptr noundef nonnull %i.m, i64 noundef %.028.i, ptr noundef %i.o) #4
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %_bisect_insort_right_impl.exit, label %Py_DECREF.exit.i

bb.u:                                             ; preds = %bb.s
  %i.av = call ptr @PyModule_GetState(ptr noundef %0) #4
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !55
  %i.ax = call ptr (ptr, ptr, ptr, ...) @_PyObject_CallMethod(ptr noundef nonnull %i.m, ptr noundef %i.aw, ptr noundef nonnull @.str.15, i64 noundef %.028.i, ptr noundef %i.o) #4 ; 4 uses
  %.not34.i = icmp eq ptr %i.ax, null
  br i1 %.not34.i, label %_bisect_insort_right_impl.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !46 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ay, -1
  br i1 %.not.i.i, label %bb.w, label %Py_DECREF.exit.i

bb.w:                                             ; preds = %bb.v
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !46
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.x, label %Py_DECREF.exit.i

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.ax) #4
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  br label %_bisect_insort_right_impl.exit

_bisect_insort_right_impl.exit:                   ; preds = %.thread72, %Py_DECREF.exit.thread, %Py_DECREF.exit.i, %bb.u, %bb.t, %Py_DECREF.exit36.i, %bb.o, %bb.d, %bb.m
  %.046 = phi ptr [ null, %bb.d ], [ null, %bb.m ], [ null, %bb.t ], [ null, %bb.o ], [ null, %Py_DECREF.exit36.i ], [ @_Py_NoneStruct, %Py_DECREF.exit.i ], [ null, %bb.u ], [ null, %Py_DECREF.exit.thread ], [ null, %.thread72 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.046
}

; Function Attrs: nounwind uwtable
define internal ptr @_bisect_bisect_left(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 !guid !76 {
bb.a:
  %i.a = alloca [5 x ptr], align 16               ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.e = add i64 %i.d, %2                         ; 2 uses
  %i.f = add i64 %i.e, -2                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i64 -1, ptr %i.b, align 8, !tbaa !52
  %i.g = add i64 %2, -2
  %i.h = icmp ult i64 %i.g, 3
  %i.i = icmp ne ptr %1, null
  %i.j = and i1 %i.i, %i.h
  %or.cond5 = and i1 %.not, %i.j
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @_bisect_bisect_left._parser, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #4 ; 2 uses
  %.not60 = icmp eq ptr %i.k, null
  br i1 %.not60, label %.thread77, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %1, %bb.c ]   ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45
  %.not61 = icmp eq i64 %i.f, 0
  br i1 %.not61, label %.thread81, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.p = getelementptr i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45   ; 2 uses
  %.not62 = icmp eq ptr %i.q, null
  br i1 %.not62, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call ptr @_PyNumber_Index(ptr noundef nonnull %i.q) #4 ; 5 uses
  %.not63 = icmp eq ptr %i.r, null
  br i1 %.not63, label %Py_DECREF.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.r) #4 ; 4 uses
  %i.t = load i32, ptr %i.r, align 8, !tbaa !46   ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.r, align 8, !tbaa !46
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.r) #4
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g
  %i.w = icmp eq i64 %i.s, -1
  br i1 %i.w, label %Py_DECREF.exit.thread, label %bb.j

Py_DECREF.exit.thread:                            ; preds = %bb.f, %Py_DECREF.exit
  %i.x = call ptr @PyErr_Occurred() #4
  %.not64 = icmp eq ptr %i.x, null
  br i1 %.not64, label %.thread74, label %.thread77

bb.j:                                             ; preds = %Py_DECREF.exit
  %i.y = icmp slt i64 %i.s, 0
  br i1 %i.y, label %.thread74, label %bb.k

.thread74:                                        ; preds = %Py_DECREF.exit.thread, %bb.j
  %i.z = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !45
  call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.11) #4
  br label %.thread77

bb.k:                                             ; preds = %bb.j
  %i.aa = add i64 %i.e, -3                        ; 2 uses
  %.not65 = icmp eq i64 %i.aa, 0
  br i1 %.not65, label %.thread81, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %.046 = phi i64 [ %i.aa, %bb.k ], [ %i.f, %bb.e ]
  %.1 = phi i64 [ %i.s, %bb.k ], [ 0, %bb.e ]     ; 2 uses
  %i.ab = getelementptr i8, ptr %i.l, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45 ; 2 uses
  %.not66 = icmp eq ptr %i.ac, null
  br i1 %.not66, label %.thread85, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = call i32 @_Py_convert_optional_to_ssize_t(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.b) #4
  %.not67 = icmp eq i32 %i.ad, 0
  br i1 %.not67, label %.thread77, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = icmp eq i64 %.046, 1
  br i1 %i.ae, label %.thread81, label %.thread85

.thread85:                                        ; preds = %bb.l, %bb.n
  %i.af = getelementptr i8, ptr %i.l, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !45
  br label %.thread81

.thread81:                                        ; preds = %.thread, %bb.k, %bb.n, %.thread85
  %.284 = phi i64 [ %.1, %.thread85 ], [ %.1, %bb.n ], [ 0, %.thread ], [ %i.s, %bb.k ]
  %.044 = phi ptr [ %i.ag, %.thread85 ], [ @_Py_NoneStruct, %bb.n ], [ @_Py_NoneStruct, %.thread ], [ @_Py_NoneStruct, %bb.k ]
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !52
  %i.ai = call fastcc i64 @internal_bisect_left(ptr noundef %i.m, ptr noundef %i.o, i64 noundef %.284, i64 noundef %i.ah, ptr noundef %.044) ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread81
  %i.ak = call ptr @PyErr_Occurred() #4
  %.not69 = icmp eq ptr %i.ak, null
  br i1 %.not69, label %bb.p, label %.thread77

bb.p:                                             ; preds = %bb.o, %.thread81
  %i.al = call ptr @PyLong_FromSsize_t(i64 noundef %i.ai) #4
  br label %.thread77

.thread77:                                        ; preds = %.thread74, %Py_DECREF.exit.thread, %bb.p, %bb.d, %bb.m, %bb.o
  %.048 = phi ptr [ null, %bb.o ], [ %i.al, %bb.p ], [ null, %bb.m ], [ null, %bb.d ], [ null, %Py_DECREF.exit.thread ], [ null, %.thread74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.048
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_bisect_insort_left(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 !guid !77 {
bb.a:
  %i.a = alloca [5 x ptr], align 16               ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.e = add i64 %i.d, %2                         ; 2 uses
  %i.f = add i64 %i.e, -2                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i64 -1, ptr %i.b, align 8, !tbaa !52
  %i.g = add i64 %2, -2
  %i.h = icmp ult i64 %i.g, 3
  %i.i = icmp ne ptr %1, null
  %i.j = and i1 %i.i, %i.h
  %or.cond5 = and i1 %.not, %i.j
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @_bisect_insort_left._parser, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #4 ; 2 uses
  %.not58 = icmp eq ptr %i.k, null
  br i1 %.not58, label %_bisect_insort_left_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %1, %bb.c ]   ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45   ; 5 uses
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45   ; 4 uses
  %.not59 = icmp eq i64 %i.f, 0
  br i1 %.not59, label %.thread88, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.p = getelementptr i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45   ; 2 uses
  %.not60 = icmp eq ptr %i.q, null
  br i1 %.not60, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call ptr @_PyNumber_Index(ptr noundef nonnull %i.q) #4 ; 5 uses
  %.not61 = icmp eq ptr %i.r, null
  br i1 %.not61, label %Py_DECREF.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.r) #4 ; 4 uses
  %i.t = load i32, ptr %i.r, align 8, !tbaa !46   ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.r, align 8, !tbaa !46
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.r) #4
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g
  %i.w = icmp eq i64 %i.s, -1
  br i1 %i.w, label %Py_DECREF.exit.thread, label %bb.j

Py_DECREF.exit.thread:                            ; preds = %bb.f, %Py_DECREF.exit
  %i.x = call ptr @PyErr_Occurred() #4
  %.not62 = icmp eq ptr %i.x, null
  br i1 %.not62, label %.thread72, label %_bisect_insort_left_impl.exit

bb.j:                                             ; preds = %Py_DECREF.exit
  %i.y = icmp slt i64 %i.s, 0
  br i1 %i.y, label %.thread72, label %bb.k

.thread72:                                        ; preds = %Py_DECREF.exit.thread, %bb.j
  %i.z = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !45
  call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.11) #4
  br label %_bisect_insort_left_impl.exit

bb.k:                                             ; preds = %bb.j
  %i.aa = add i64 %i.e, -3                        ; 2 uses
  %.not63 = icmp eq i64 %i.aa, 0
  br i1 %.not63, label %.thread88, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %.044 = phi i64 [ %i.aa, %bb.k ], [ %i.f, %bb.e ]
  %.1 = phi i64 [ %i.s, %bb.k ], [ 0, %bb.e ]     ; 3 uses
  %i.ab = getelementptr i8, ptr %i.l, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45 ; 2 uses
  %.not64 = icmp eq ptr %i.ac, null
  br i1 %.not64, label %.thread83, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = call i32 @_Py_convert_optional_to_ssize_t(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.b) #4
  %.not65 = icmp eq i32 %i.ad, 0
  br i1 %.not65, label %_bisect_insort_left_impl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = icmp eq i64 %.044, 1
  %.pre93 = load i64, ptr %i.b, align 8, !tbaa !52 ; 2 uses
  br i1 %i.ae, label %.thread88, label %.thread83

.thread83:                                        ; preds = %bb.n, %bb.l
  %i.af = phi i64 [ -1, %bb.l ], [ %.pre93, %bb.n ] ; 2 uses
  %i.ag = getelementptr i8, ptr %i.l, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !45 ; 4 uses
  %i.ai = icmp eq ptr %i.ah, @_Py_NoneStruct
  br i1 %i.ai, label %.thread88, label %bb.o

.thread88:                                        ; preds = %.thread, %bb.k, %bb.n, %.thread83
  %i.aj = phi i64 [ %i.af, %.thread83 ], [ %.pre93, %bb.n ], [ -1, %.thread ], [ -1, %bb.k ]
  %.04292 = phi ptr [ %i.ah, %.thread83 ], [ @_Py_NoneStruct, %bb.n ], [ @_Py_NoneStruct, %.thread ], [ @_Py_NoneStruct, %bb.k ]
  %.28291 = phi i64 [ %.1, %.thread83 ], [ %.1, %bb.n ], [ 0, %.thread ], [ %i.s, %bb.k ]
  %i.ak = call fastcc i64 @internal_bisect_left(ptr noundef %i.m, ptr noundef %i.o, i64 noundef %.28291, i64 noundef %i.aj, ptr noundef nonnull %.04292)
  br label %Py_DECREF.exit36.i

bb.o:                                             ; preds = %.thread83
  %i.al = call ptr @PyObject_CallOneArg(ptr noundef %i.ah, ptr noundef %i.o) #4 ; 5 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_bisect_insort_left_impl.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = call fastcc i64 @internal_bisect_left(ptr noundef %i.m, ptr noundef nonnull %i.al, i64 noundef %.1, i64 noundef %i.af, ptr noundef %i.ah) ; 3 uses
  %i.ao = load i32, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %.not.i35.i = icmp sgt i32 %i.ao, -1
  br i1 %.not.i35.i, label %bb.q, label %Py_DECREF.exit36.i

bb.q:                                             ; preds = %bb.p
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.al, align 8, !tbaa !46
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.r, label %Py_DECREF.exit36.i

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #4
  br label %Py_DECREF.exit36.i

Py_DECREF.exit36.i:                               ; preds = %bb.r, %bb.q, %bb.p, %.thread88
  %.028.i = phi i64 [ %i.ak, %.thread88 ], [ %i.an, %bb.p ], [ %i.an, %bb.q ], [ %i.an, %bb.r ] ; 3 uses
  %i.ar = icmp slt i64 %.028.i, 0
  br i1 %i.ar, label %_bisect_insort_left_impl.exit, label %bb.s

bb.s:                                             ; preds = %Py_DECREF.exit36.i
  %i.as = getelementptr i8, ptr %i.m, i64 8
  %.val.i = load ptr, ptr %i.as, align 8, !tbaa !53
  %.not.i67 = icmp eq ptr %.val.i, @PyList_Type
  br i1 %.not.i67, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.at = call i32 @PyList_Insert(ptr noundef nonnull %i.m, i64 noundef %.028.i, ptr noundef %i.o) #4
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %_bisect_insort_left_impl.exit, label %Py_DECREF.exit.i

bb.u:                                             ; preds = %bb.s
  %i.av = call ptr @PyModule_GetState(ptr noundef %0) #4
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !55
  %i.ax = call ptr (ptr, ptr, ptr, ...) @_PyObject_CallMethod(ptr noundef nonnull %i.m, ptr noundef %i.aw, ptr noundef nonnull @.str.15, i64 noundef %.028.i, ptr noundef %i.o) #4 ; 4 uses
  %.not34.i = icmp eq ptr %i.ax, null
  br i1 %.not34.i, label %_bisect_insort_left_impl.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !46 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ay, -1
  br i1 %.not.i.i, label %bb.w, label %Py_DECREF.exit.i

bb.w:                                             ; preds = %bb.v
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !46
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.x, label %Py_DECREF.exit.i

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.ax) #4
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  br label %_bisect_insort_left_impl.exit

_bisect_insort_left_impl.exit:                    ; preds = %.thread72, %Py_DECREF.exit.thread, %Py_DECREF.exit.i, %bb.u, %bb.t, %Py_DECREF.exit36.i, %bb.o, %bb.d, %bb.m
  %.046 = phi ptr [ null, %bb.d ], [ null, %bb.m ], [ null, %bb.t ], [ null, %bb.o ], [ null, %Py_DECREF.exit36.i ], [ @_Py_NoneStruct, %Py_DECREF.exit.i ], [ null, %bb.u ], [ null, %Py_DECREF.exit.thread ], [ null, %.thread72 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.046
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @_Py_convert_optional_to_ssize_t(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @internal_bisect_right(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #3 !guid !79 {
bb.a:
  %i.a = icmp eq i64 %3, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @PySequence_Size(ptr noundef %0) #4 ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %Py_XDECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.058 = phi i64 [ %i.b, %bb.b ], [ %3, %bb.a ]  ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val110 = load ptr, ptr %i.d, align 8, !tbaa !53 ; 3 uses
  %i.e = getelementptr i8, ptr %.val110, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %.not.i111 = icmp eq ptr %i.f, null
  br i1 %.not.i111, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 3 uses
  %.not14.i = icmp eq ptr %i.h, null
  br i1 %.not14.i, label %bb.e, label %get_sq_item.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr i8, ptr %.val110, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65   ; 2 uses
  %.not15.i = icmp eq ptr %i.j, null
  br i1 %.not15.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67
  %.not16.i = icmp eq ptr %i.l, null
  br i1 %.not16.i, label %bb.g, label %get_sq_item.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %get_sq_item.exit.thread

get_sq_item.exit.thread:                          ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ @.str.14, %bb.g ], [ @.str.13, %bb.f ]
  %i.m = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !45
  %i.n = getelementptr i8, ptr %.val110, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.p = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.m, ptr noundef nonnull %.0.i, ptr noundef %i.o) #4 ; 0 uses
  br label %Py_XDECREF.exit

get_sq_item.exit:                                 ; preds = %bb.d
  %i.q = tail call i32 @Py_EnterRecursiveCall(ptr noundef nonnull @.str.12) #4
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.h, label %Py_XDECREF.exit

bb.h:                                             ; preds = %get_sq_item.exit
  %i.r = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.r, align 8, !tbaa !53  ; 2 uses
  %i.s = icmp slt i64 %2, %.058
  br i1 %i.s, label %.lr.ph.lr.ph, label %.outer._crit_edge

.lr.ph.lr.ph:                                     ; preds = %bb.h
  %i.t = getelementptr i8, ptr %.val, i64 200
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !69
  %.not84 = icmp eq ptr %4, @_Py_NoneStruct       ; 2 uses
  %.fr = freeze ptr %i.u
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %Py_DECREF.exit
  %.045.ph164 = phi i64 [ %2, %.lr.ph.lr.ph ], [ %.3, %Py_DECREF.exit ] ; 6 uses
  %.048.ph163 = phi ptr [ %.fr, %.lr.ph.lr.ph ], [ %.351, %Py_DECREF.exit ] ; 6 uses
  %.159.ph162 = phi i64 [ %.058, %.lr.ph.lr.ph ], [ %.4, %Py_DECREF.exit ] ; 6 uses
  %.not85 = icmp eq ptr %.048.ph163, null
  br i1 %.not85, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.v = add i64 %.045.ph164, %.159.ph162
  %i.w = lshr i64 %i.v, 1                         ; 5 uses
  %i.x = tail call ptr %i.h(ptr noundef %0, i64 noundef %i.w) #4 ; 7 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %Py_DECREF.exit102, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us
  br i1 %.not84, label %Py_DECREF.exit102.thread.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = tail call ptr @PyObject_CallOneArg(ptr noundef %4, ptr noundef nonnull %i.x) #4 ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %Py_DECREF.exit98.thread121, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load i32, ptr %i.x, align 8, !tbaa !46  ; 2 uses
  %.not.i101.us = icmp sgt i32 %i.ab, -1
  br i1 %.not.i101.us, label %bb.l, label %Py_DECREF.exit102.thread.us

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.x, align 8, !tbaa !46
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %Py_DECREF.exit102.thread.us

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.x) #4
  br label %Py_DECREF.exit102.thread.us

.lr.ph.split:                                     ; preds = %.lr.ph, %Py_DECREF.exit98
  %.045156 = phi i64 [ %.146, %Py_DECREF.exit98 ], [ %.045.ph164, %.lr.ph ] ; 9 uses
  %.159155 = phi i64 [ %.260, %Py_DECREF.exit98 ], [ %.159.ph162, %.lr.ph ] ; 7 uses
end_hunk_0
