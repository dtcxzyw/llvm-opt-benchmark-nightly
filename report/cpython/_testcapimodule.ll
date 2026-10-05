Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_testcapimodule?download=true
inline.NumInlined: 130
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@gen_get_code:bb.a
  %.0 = phi ptr [ %i.d, %PyObject_TypeCheck.exit.thread ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @get_feature_macros(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyDict_New() #17          ; 21 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %Py_DECREF.exit36, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.235, ptr noundef nonnull @_Py_TrueStruct) #17
  %.not21 = icmp eq i32 %i.b, 0
  br i1 %.not21, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %.not.i35 = icmp sgt i32 %i.c, -1
  br i1 %.not.i35, label %bb.d, label %Py_DECREF.exit36

bb.d:                                             ; preds = %bb.c
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.a, align 8, !tbaa !31
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %Py_DECREF.exit36.sink.split, label %Py_DECREF.exit36

bb.e:                                             ; preds = %bb.b
  %i.f = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.236, ptr noundef nonnull @_Py_FalseStruct) #17
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %.not.i33 = icmp sgt i32 %i.g, -1
  br i1 %.not.i33, label %bb.g, label %Py_DECREF.exit36

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.a, align 8, !tbaa !31
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %Py_DECREF.exit36.sink.split, label %Py_DECREF.exit36

bb.h:                                             ; preds = %bb.e
  %i.j = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.237, ptr noundef nonnull @_Py_TrueStruct) #17
  %.not23 = icmp eq i32 %i.j, 0
  br i1 %.not23, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = load i32, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %.not.i31 = icmp sgt i32 %i.k, -1
  br i1 %.not.i31, label %bb.j, label %Py_DECREF.exit36

bb.j:                                             ; preds = %bb.i
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.a, align 8, !tbaa !31
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %Py_DECREF.exit36.sink.split, label %Py_DECREF.exit36

bb.k:                                             ; preds = %bb.h
  %i.n = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.238, ptr noundef nonnull @_Py_FalseStruct) #17
  %.not24 = icmp eq i32 %i.n, 0
  br i1 %.not24, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = load i32, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %.not.i29 = icmp sgt i32 %i.o, -1
  br i1 %.not.i29, label %bb.m, label %Py_DECREF.exit36

bb.m:                                             ; preds = %bb.l
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.a, align 8, !tbaa !31
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %Py_DECREF.exit36.sink.split, label %Py_DECREF.exit36

bb.n:                                             ; preds = %bb.k
  %i.r = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.239, ptr noundef nonnull @_Py_FalseStruct) #17
  %.not25 = icmp eq i32 %i.r, 0
  br i1 %.not25, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.s = load i32, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %.not.i27 = icmp sgt i32 %i.s, -1
  br i1 %.not.i27, label %bb.p, label %Py_DECREF.exit36

bb.p:                                             ; preds = %bb.o
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.a, align 8, !tbaa !31
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %Py_DECREF.exit36.sink.split, label %Py_DECREF.exit36

bb.q:                                             ; preds = %bb.n
  %i.v = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.240, ptr noundef nonnull @_Py_FalseStruct) #17
  %.not26 = icmp eq i32 %i.v, 0
  br i1 %.not26, label %Py_DECREF.exit36, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.w = load i32, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %.not.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i, label %bb.s, label %Py_DECREF.exit36

bb.s:                                             ; preds = %bb.r
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.a, align 8, !tbaa !31
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %Py_DECREF.exit36.sink.split, label %Py_DECREF.exit36

Py_DECREF.exit36.sink.split:                      ; preds = %bb.s, %bb.p, %bb.m, %bb.j, %bb.g, %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #17
  br label %Py_DECREF.exit36

Py_DECREF.exit36:                                 ; preds = %Py_DECREF.exit36.sink.split, %bb.s, %bb.r, %bb.p, %bb.o, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c, %bb.q, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.a, %bb.q ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.p ], [ null, %bb.r ], [ null, %bb.s ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.l ], [ null, %Py_DECREF.exit36.sink.split ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @test_code_api(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyCode_NewEmpty(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.241, i32 noundef 1) #17 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit50, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyCode_GetCode(ptr noundef nonnull %i.a) #17 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_DECREF.exit72.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val87 = load ptr, ptr %i.e, align 8, !tbaa !28
  %.not = icmp eq ptr %.val87, @PyBytes_Type
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.87, i32 noundef 2029, ptr noundef nonnull @__PRETTY_FUNCTION__.test_code_api) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = tail call i64 @PyObject_Size(ptr noundef nonnull %i.c) #17
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !42
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.243) #17
  %i.i = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %.not.i71 = icmp sgt i32 %i.i, -1
  br i1 %.not.i71, label %bb.g, label %Py_DECREF.exit72.thread

bb.g:                                             ; preds = %bb.f
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.c, align 8, !tbaa !31
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %Py_DECREF.exit72.thread.sink.split, label %Py_DECREF.exit72.thread

bb.h:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %.not.i69 = icmp sgt i32 %i.l, -1
  br i1 %.not.i69, label %bb.i, label %Py_DECREF.exit72

bb.i:                                             ; preds = %bb.h
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.c, align 8, !tbaa !31
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.j, label %Py_DECREF.exit72

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #17
  br label %Py_DECREF.exit72

Py_DECREF.exit72:                                 ; preds = %bb.h, %bb.i, %bb.j
  %i.o = tail call ptr @PyCode_GetVarnames(ptr noundef nonnull %i.a) #17 ; 12 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %Py_DECREF.exit72.thread, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit72
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %.val86 = load ptr, ptr %i.q, align 8, !tbaa !28 ; 2 uses
  %.not99 = icmp eq ptr %.val86, @PyTuple_Type
  br i1 %.not99, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !42
  tail call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.244) #17
  %i.s = load i32, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %.not.i67 = icmp sgt i32 %i.s, -1
  br i1 %.not.i67, label %bb.m, label %Py_DECREF.exit72.thread

bb.m:                                             ; preds = %bb.l
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.o, align 8, !tbaa !31
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %Py_DECREF.exit72.thread.sink.split, label %Py_DECREF.exit72.thread

bb.n:                                             ; preds = %bb.k
  %i.v = getelementptr i8, ptr %.val86, i64 168
  %.val3.i = load i64, ptr %i.v, align 8, !tbaa !39
  %i.w = and i64 %.val3.i, 67108864
  %.not.i88 = icmp eq i64 %i.w, 0
  br i1 %.not.i88, label %bb.o, label %2

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210, i32 noundef 24, ptr noundef nonnull @__PRETTY_FUNCTION__.PyTuple_GET_SIZE) #16
  unreachable

2:                                                ; preds = %bb.n
  %.not.i.i = icmp eq ptr @PyTuple_Type, @PyLong_Type
  br i1 %.not.i.i, label %3, label %4

3:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.214, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #16
  unreachable

4:                                                ; preds = %2
  %.not3.i.i = icmp eq ptr @PyTuple_Type, @PyBool_Type
  br i1 %.not3.i.i, label %5, label %PyTuple_GET_SIZE.exit

5:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.214, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #16
  unreachable

PyTuple_GET_SIZE.exit:                            ; preds = %4
  %i.x = getelementptr i8, ptr %i.o, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !54
  %.not41 = icmp eq i64 %i.y, 0
  br i1 %.not41, label %bb.r, label %bb.p

bb.p:                                             ; preds = %PyTuple_GET_SIZE.exit
  %i.z = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !42
  tail call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.245) #17
  %i.aa = load i32, ptr %i.o, align 8, !tbaa !31  ; 2 uses
  %.not.i65 = icmp sgt i32 %i.aa, -1
  br i1 %.not.i65, label %bb.q, label %Py_DECREF.exit72.thread

bb.q:                                             ; preds = %bb.p
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %i.o, align 8, !tbaa !31
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %Py_DECREF.exit72.thread.sink.split, label %Py_DECREF.exit72.thread

bb.r:                                             ; preds = %PyTuple_GET_SIZE.exit
  %i.ad = load i32, ptr %i.o, align 8, !tbaa !31  ; 2 uses
  %.not.i63 = icmp sgt i32 %i.ad, -1
  br i1 %.not.i63, label %bb.s, label %Py_DECREF.exit68

bb.s:                                             ; preds = %bb.r
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.o, align 8, !tbaa !31
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.t, label %Py_DECREF.exit68

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.o) #17
  br label %Py_DECREF.exit68

Py_DECREF.exit68:                                 ; preds = %bb.r, %bb.s, %bb.t
  %i.ag = tail call ptr @PyCode_GetCellvars(ptr noundef nonnull %i.a) #17 ; 12 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %Py_DECREF.exit72.thread, label %bb.u

bb.u:                                             ; preds = %Py_DECREF.exit68
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  %.val85 = load ptr, ptr %i.ai, align 8, !tbaa !28 ; 2 uses
  %.not100 = icmp eq ptr %.val85, @PyTuple_Type
  br i1 %.not100, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !42
  tail call void @PyErr_SetString(ptr noundef %i.aj, ptr noundef nonnull @.str.246) #17
  %i.ak = load i32, ptr %i.ag, align 8, !tbaa !31 ; 2 uses
  %.not.i61 = icmp sgt i32 %i.ak, -1
  br i1 %.not.i61, label %bb.w, label %Py_DECREF.exit72.thread

bb.w:                                             ; preds = %bb.v
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.ag, align 8, !tbaa !31
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %Py_DECREF.exit72.thread.sink.split, label %Py_DECREF.exit72.thread

bb.x:                                             ; preds = %bb.u
  %i.an = getelementptr i8, ptr %.val85, i64 168
  %.val3.i90 = load i64, ptr %i.an, align 8, !tbaa !39
  %i.ao = and i64 %.val3.i90, 67108864
  %.not.i91 = icmp eq i64 %i.ao, 0
  br i1 %.not.i91, label %bb.y, label %PyTuple_GET_SIZE.exit94

bb.y:                                             ; preds = %bb.x
  tail call void @__assert_fail(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210, i32 noundef 24, ptr noundef nonnull @__PRETTY_FUNCTION__.PyTuple_GET_SIZE) #16
  unreachable

PyTuple_GET_SIZE.exit94:                          ; preds = %bb.x
  %i.ap = getelementptr i8, ptr %i.ag, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !54
  %.not43 = icmp eq i64 %i.aq, 0
  br i1 %.not43, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %PyTuple_GET_SIZE.exit94
  %i.ar = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !42
  tail call void @PyErr_SetString(ptr noundef %i.ar, ptr noundef nonnull @.str.247) #17
  %i.as = load i32, ptr %i.ag, align 8, !tbaa !31 ; 2 uses
  %.not.i59 = icmp sgt i32 %i.as, -1
  br i1 %.not.i59, label %bb.aa, label %Py_DECREF.exit72.thread

bb.aa:                                            ; preds = %bb.z
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.ag, align 8, !tbaa !31
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %Py_DECREF.exit72.thread.sink.split, label %Py_DECREF.exit72.thread

bb.ab:                                            ; preds = %PyTuple_GET_SIZE.exit94
  %i.av = load i32, ptr %i.ag, align 8, !tbaa !31 ; 2 uses
  %.not.i57 = icmp sgt i32 %i.av, -1
  br i1 %.not.i57, label %bb.ac, label %Py_DECREF.exit62

bb.ac:                                            ; preds = %bb.ab
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  store i32 %i.aw, ptr %i.ag, align 8, !tbaa !31
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.ad, label %Py_DECREF.exit62

bb.ad:                                            ; preds = %bb.ac
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #17
  br label %Py_DECREF.exit62

Py_DECREF.exit62:                                 ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.ay = tail call ptr @PyCode_GetFreevars(ptr noundef nonnull %i.a) #17 ; 12 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %Py_DECREF.exit72.thread, label %bb.ae

bb.ae:                                            ; preds = %Py_DECREF.exit62
  %i.ba = getelementptr i8, ptr %i.ay, i64 8
  %.val = load ptr, ptr %i.ba, align 8, !tbaa !28
  %.not101 = icmp eq ptr %.val, @PyTuple_Type
  br i1 %.not101, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bb = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !42
  tail call void @PyErr_SetString(ptr noundef %i.bb, ptr noundef nonnull @.str.248) #17
  %i.bc = load i32, ptr %i.ay, align 8, !tbaa !31 ; 2 uses
  %.not.i55 = icmp sgt i32 %i.bc, -1
  br i1 %.not.i55, label %bb.ag, label %Py_DECREF.exit72.thread

bb.ag:                                            ; preds = %bb.af
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.ay, align 8, !tbaa !31
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %Py_DECREF.exit72.thread.sink.split, label %Py_DECREF.exit72.thread

bb.ah:                                            ; preds = %bb.ae
  %i.bf = tail call fastcc i64 @PyTuple_GET_SIZE(ptr noundef %i.ay)
  %.not45 = icmp eq i64 %i.bf, 0
  br i1 %.not45, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bg = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !42
  tail call void @PyErr_SetString(ptr noundef %i.bg, ptr noundef nonnull @.str.249) #17
  %i.bh = load i32, ptr %i.ay, align 8, !tbaa !31 ; 2 uses
  %.not.i53 = icmp sgt i32 %i.bh, -1
  br i1 %.not.i53, label %bb.aj, label %Py_DECREF.exit72.thread

bb.aj:                                            ; preds = %bb.ai
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %i.ay, align 8, !tbaa !31
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %Py_DECREF.exit72.thread.sink.split, label %Py_DECREF.exit72.thread

bb.ak:                                            ; preds = %bb.ah
  %i.bk = load i32, ptr %i.ay, align 8, !tbaa !31 ; 2 uses
  %.not.i51 = icmp sgt i32 %i.bk, -1
  br i1 %.not.i51, label %bb.al, label %Py_DECREF.exit56

bb.al:                                            ; preds = %bb.ak
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %i.ay, align 8, !tbaa !31
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.am, label %Py_DECREF.exit56

bb.am:                                            ; preds = %bb.al
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ay) #17
  br label %Py_DECREF.exit56

Py_DECREF.exit56:                                 ; preds = %bb.ak, %bb.al, %bb.am
  %i.bn = load i32, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %.not.i49 = icmp sgt i32 %i.bn, -1
  br i1 %.not.i49, label %bb.an, label %Py_DECREF.exit50

bb.an:                                            ; preds = %Py_DECREF.exit56
  %i.bo = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bo, ptr %i.a, align 8, !tbaa !31
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %Py_DECREF.exit50.sink.split, label %Py_DECREF.exit50

Py_DECREF.exit72.thread.sink.split:               ; preds = %bb.aj, %bb.ag, %bb.aa, %bb.w, %bb.q, %bb.m, %bb.g
  %.sink = phi ptr [ %i.ay, %bb.ag ], [ %i.ag, %bb.aa ], [ %i.ag, %bb.w ], [ %i.o, %bb.q ], [ %i.o, %bb.m ], [ %i.c, %bb.g ], [ %i.ay, %bb.aj ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #17
  br label %Py_DECREF.exit72.thread

Py_DECREF.exit72.thread:                          ; preds = %Py_DECREF.exit72.thread.sink.split, %bb.aj, %bb.ai, %bb.ag, %bb.af, %Py_DECREF.exit62, %bb.aa, %bb.z, %bb.w, %bb.v, %Py_DECREF.exit68, %bb.q, %bb.p, %bb.m, %bb.l, %Py_DECREF.exit72, %bb.g, %bb.f, %bb.b
  %i.bq = load i32, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %.not.i = icmp sgt i32 %i.bq, -1
  br i1 %.not.i, label %bb.ao, label %Py_DECREF.exit50

bb.ao:                                            ; preds = %Py_DECREF.exit72.thread
  %i.br = add nsw i32 %i.bq, -1                   ; 2 uses
  store i32 %i.br, ptr %i.a, align 8, !tbaa !31
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %Py_DECREF.exit50.sink.split, label %Py_DECREF.exit50

Py_DECREF.exit50.sink.split:                      ; preds = %bb.ao, %bb.an
  %.034.ph = phi ptr [ @_Py_NoneStruct, %bb.an ], [ null, %bb.ao ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #17
  br label %Py_DECREF.exit50

Py_DECREF.exit50:                                 ; preds = %Py_DECREF.exit50.sink.split, %bb.ao, %Py_DECREF.exit72.thread, %bb.an, %Py_DECREF.exit56, %bb.a
  %.034 = phi ptr [ null, %bb.ao ], [ null, %bb.a ], [ @_Py_NoneStruct, %Py_DECREF.exit56 ], [ @_Py_NoneStruct, %bb.an ], [ null, %Py_DECREF.exit72.thread ], [ %.034.ph, %Py_DECREF.exit50.sink.split ]
  ret ptr %.034
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @settrace_to_error(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
end_hunk_0
