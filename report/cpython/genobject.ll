Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/genobject?download=true
inline.NumInlined: 208
inline.NumDeleted: 59
begin_hunk_0_@async_gen_athrow_traverse:bb.a
bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !220  ; 2 uses
  %.not44 = icmp eq ptr %i.e, null
  br i1 %.not44, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #7 ; 2 uses
  %.not45 = icmp eq i32 %i.f, 0
  br i1 %.not45, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !221  ; 2 uses
  %.not46 = icmp eq ptr %i.h, null
  br i1 %.not46, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 %1(ptr noundef nonnull %i.h, ptr noundef %2) #7 ; 2 uses
  %.not47 = icmp eq i32 %i.i, 0
  br i1 %.not47, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !222  ; 2 uses
  %.not48 = icmp eq ptr %i.k, null
  br i1 %.not48, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = tail call i32 %1(ptr noundef nonnull %i.k, ptr noundef %2) #7 ; 2 uses
  %.not49 = icmp eq i32 %i.l, 0
  br i1 %.not49, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.i
  %.7 = phi i32 [ 0, %bb.i ], [ %i.l, %bb.h ], [ %i.i, %bb.f ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define internal ptr @async_gen_athrow_iternext(ptr nofree noundef captures(none) %0) #2 !guid !353 {
bb.a:
  %i.a = tail call ptr @async_gen_athrow_send(ptr noundef %0, ptr noundef nonnull @_Py_NoneStruct)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal void @async_gen_athrow_finalize(ptr nofree noundef readonly captures(none) %0) #2 !guid !354 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !220
  %.not = icmp eq ptr %i.e, null
  %i.f = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 74112), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 75192)
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !223
  tail call void @_PyErr_WarnUnawaitedAgenMethod(ptr noundef %i.h, ptr noundef nonnull %i.f) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_PyFrame_ClearExceptCode(ptr noundef) local_unnamed_addr #3

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #3

declare void @PyObject_ClearWeakRefs(ptr noundef) local_unnamed_addr #3

declare i32 @PyObject_CallFinalizerFromDealloc(ptr noundef) local_unnamed_addr #3

declare void @PyObject_GC_Del(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #4

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @PyGen_am_send(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #2 !guid !355 {
bb.a:
  %i.a = tail call fastcc i32 @gen_send_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @gen_send_ex(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #2 !guid !356 {
bb.a:
  store ptr null, ptr %2, align 8, !tbaa !150
  %i.a = getelementptr i8, ptr %0, i64 67         ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !149   ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  %i.d = icmp ne ptr %1, null                     ; 4 uses
  %i.e = icmp ne ptr %1, @_Py_NoneStruct
  %i.f = and i1 %i.e, %i.c
  %or.cond3 = and i1 %i.d, %i.f
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val26 = load ptr, ptr %i.g, align 8, !tbaa !169 ; 2 uses
  %.not29 = icmp eq ptr %.val26, @PyCoro_Type
  %.not30 = icmp eq ptr %.val26, @PyAsyncGen_Type
  %spec.select = select i1 %.not30, ptr @.str.16, ptr @.str.15
  %.0 = select i1 %.not29, ptr @.str.18, ptr %spec.select
  %i.h = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !150
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull %.0) #7
  br label %gen_send_ex2.exit

bb.c:                                             ; preds = %bb.a
  switch i8 %i.b, label %bb.i [
    i8 4, label %bb.d
    i8 5, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 8
  %.val27 = load ptr, ptr %i.i, align 8, !tbaa !169 ; 2 uses
  %.not.i = icmp eq ptr %.val27, @PyCoro_Type
  %.not1.i = icmp eq ptr %.val27, @PyAsyncGen_Type
  %spec.select.i = select i1 %.not1.i, ptr @.str.21, ptr @.str.19
  %.0.i = select i1 %.not.i, ptr @.str.20, ptr %spec.select.i
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !150
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull %.0.i) #7, !inline_history !1
  br label %gen_send_ex2.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.k, align 8, !tbaa !169
  %.not = icmp eq ptr %.val, @PyCoro_Type
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !150
  tail call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.17) #7
  br label %gen_send_ex2.exit

bb.g:                                             ; preds = %bb.e
  br i1 %i.d, label %bb.h, label %gen_send_ex2.exit

bb.h:                                             ; preds = %bb.g
  store ptr @_Py_NoneStruct, ptr %2, align 8, !tbaa !150
  br label %gen_send_ex2.exit

bb.i:                                             ; preds = %bb.c
  store i8 4, ptr %i.a, align 1, !tbaa !149
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !179  ; 5 uses
  %i.o = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.p = select i1 %i.d, ptr %1, ptr @_Py_NoneStruct ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !136  ; 2 uses
  %.not.i38.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i38.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = or i64 %i.r, 1
  br label %_PyStackRef_FromPyObjectNew.exit.i

bb.k:                                             ; preds = %bb.i
  %i.t = add nuw i32 %i.q, 1
  store i32 %i.t, ptr %i.p, align 8, !tbaa !136
  %i.u = ptrtoint ptr %i.p to i64
  br label %_PyStackRef_FromPyObjectNew.exit.i

_PyStackRef_FromPyObjectNew.exit.i:               ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i = phi i64 [ %i.s, %bb.j ], [ %i.u, %bb.k ]
  %i.v = getelementptr i8, ptr %0, i64 136        ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !198
  store i64 %.sroa.0.0.i.i, ptr %i.w, align 8, !tbaa !136
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !198
  %i.y = getelementptr i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.v, align 8, !tbaa !198
  %i.z = getelementptr i8, ptr %i.n, i64 136      ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !225
  %i.ab = getelementptr i8, ptr %0, i64 40
  %i.ac = getelementptr i8, ptr %0, i64 48
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !226
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !225
  %i.ad = getelementptr i8, ptr %i.n, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !227
  %i.af = getelementptr i8, ptr %i.ae, i64 8568
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !293 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_PyStackRef_FromPyObjectNew.exit.i
  %i.ai = tail call ptr @_PyEval_EvalFrameDefault(ptr noundef nonnull %i.n, ptr noundef %i.o, i32 noundef 0) #7, !inline_history !2
  br label %_PyEval_EvalFrame.exit.i

bb.m:                                             ; preds = %_PyStackRef_FromPyObjectNew.exit.i
  %i.aj = tail call ptr %i.ag(ptr noundef nonnull %i.n, ptr noundef %i.o, i32 noundef 0) #7, !inline_history !3
  br label %_PyEval_EvalFrame.exit.i

_PyEval_EvalFrame.exit.i:                         ; preds = %bb.m, %bb.l
  %phi.call.i = phi ptr [ %i.aj, %bb.m ], [ %i.ai, %bb.l ] ; 6 uses
  %i.ak = getelementptr i8, ptr %i.n, i64 1000
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !294
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_PyEval_EvalFrame.exit.i
  store ptr %phi.call.i, ptr %2, align 8, !tbaa !150
  br label %gen_send_ex2.exit

bb.o:                                             ; preds = %_PyEval_EvalFrame.exit.i
  %i.an = icmp eq ptr %phi.call.i, @_Py_NoneStruct
  br i1 %i.an, label %bb.p, label %Py_DECREF.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.ao, align 8, !tbaa !169
  %i.ap = icmp eq ptr %.val.i, @PyAsyncGen_Type
  %or.cond.i = or i1 %i.d, %i.ap
  br i1 %or.cond.i, label %Py_DECREF.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = load i32, ptr %phi.call.i, align 8, !tbaa !136 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.aq, -1
  br i1 %.not.i.i, label %bb.r, label %Py_DECREF.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr %phi.call.i, align 8, !tbaa !136
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.s, label %Py_DECREF.exit.i

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %phi.call.i) #7, !inline_history !2
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.1.i = phi ptr [ @_Py_NoneStruct, %bb.p ], [ %phi.call.i, %bb.o ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.s ] ; 2 uses
  store ptr %.1.i, ptr %2, align 8, !tbaa !150
  %.not37.i = icmp eq ptr %.1.i, null
  %i.at = sext i1 %.not37.i to i32
  br label %gen_send_ex2.exit

gen_send_ex2.exit:                                ; preds = %Py_DECREF.exit.i, %bb.n, %bb.f, %bb.g, %bb.h, %bb.d, %bb.b
  %.021 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ], [ 0, %bb.h ], [ -1, %bb.g ], [ 1, %bb.n ], [ %i.at, %Py_DECREF.exit.i ]
  ret i32 %.021
}

declare void @_PyErr_ChainStackItem() local_unnamed_addr #3

declare ptr @_PyEval_EvalFrameDefault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #3

declare i32 @_PyFrame_Traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_PyGC_VisitStackRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @gen_send(ptr noundef %0, ptr noundef %1) #2 !guid !357 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call fastcc i32 @gen_send_ex(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a)
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !150  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !169
  tail call fastcc void @gen_set_stop_iteration(ptr %.val, ptr noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @gen_throw(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #2 !guid !358 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond = icmp ult i64 %i.a, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.24, i64 noundef %2, i64 noundef 1, i64 noundef 3) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = icmp sgt i64 %2, 1
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !150
  %i.e = tail call i32 @PyErr_WarnEx(ptr noundef %i.d, ptr noundef nonnull @.str.30, i64 noundef 1) #7
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = load ptr, ptr %1, align 8, !tbaa !150
  switch i64 %2, label %bb.h [
    i64 3, label %bb.f
    i64 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !150
  %i.j = getelementptr i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !150
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !150
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f
  %.016 = phi ptr [ %i.k, %bb.f ], [ null, %bb.g ], [ null, %bb.e ]
  %.0 = phi ptr [ %i.i, %bb.f ], [ %i.m, %bb.g ], [ null, %bb.e ]
  %i.n = tail call fastcc ptr @_gen_throw(ptr noundef %0, i32 noundef 1, ptr noundef %i.g, ptr noundef %.0, ptr noundef %.016)
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.b, %bb.h
  %.017 = phi ptr [ null, %bb.b ], [ %i.n, %bb.h ], [ null, %bb.d ]
  ret ptr %.017
}

; Function Attrs: nounwind uwtable
define internal ptr @gen_close(ptr noundef %0, ptr nofree readnone captures(none) %1) #2 !guid !359 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 67         ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !149   ; 2 uses
  switch i8 %i.b, label %bb.g [
    i8 0, label %bb.b
    i8 5, label %gen_clear_frame.exit
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  store i8 5, ptr %i.a, align 1, !tbaa !149
  %i.c = getelementptr i8, ptr %0, i64 72
  %i.d = getelementptr i8, ptr %0, i64 80
  store ptr null, ptr %i.d, align 8, !tbaa !156
  tail call void @_PyFrame_ClearExceptCode(ptr noundef %i.c) #7
  %i.e = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !150  ; 4 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %gen_clear_frame.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.e, align 8, !tbaa !150
  %i.g = load i32, ptr %i.f, align 8, !tbaa !136  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i.i.i, label %bb.d, label %gen_clear_frame.exit

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !136
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %gen_clear_frame.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #7
  br label %gen_clear_frame.exit

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 8
  %.val40 = load ptr, ptr %i.j, align 8, !tbaa !169 ; 2 uses
  %.not.i41 = icmp eq ptr %.val40, @PyCoro_Type
  %.not1.i = icmp eq ptr %.val40, @PyAsyncGen_Type
  %spec.select.i = select i1 %.not1.i, ptr @.str.21, ptr @.str.19
  %.0.i = select i1 %.not.i41, ptr @.str.20, ptr %spec.select.i
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !150
  tail call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull %.0.i) #7, !inline_history !1
  br label %gen_clear_frame.exit

bb.g:                                             ; preds = %bb.a
  store i8 4, ptr %i.a, align 1, !tbaa !149
  %i.l = icmp eq i8 %i.b, 2
  br i1 %i.l, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr i8, ptr %0, i64 136
  %.val38 = load ptr, ptr %i.m, align 8, !tbaa !198
  %i.n = getelementptr i8, ptr %.val38, i64 -8
  %.val38.val = load i64, ptr %i.n, align 8, !tbaa !136
  %i.o = and i64 %.val38.val, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 6 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !136  ; 2 uses
  %i.r = icmp ugt i32 %i.q, -1073741825
  br i1 %i.r, label %_Py_NewRef.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = add nuw i32 %i.q, 1
  store i32 %i.s, ptr %i.p, align 8, !tbaa !136
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.h, %bb.i
  %i.t = tail call fastcc i32 @gen_close_iter(ptr noundef nonnull %i.p)
  %i.u = load i32, ptr %i.p, align 8, !tbaa !136  ; 2 uses
  %.not.i34 = icmp sgt i32 %i.u, -1
  br i1 %.not.i34, label %bb.j, label %Py_DECREF.exit35

bb.j:                                             ; preds = %_Py_NewRef.exit
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.p, align 8, !tbaa !136
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %Py_DECREF.exit35

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #7
  br label %Py_DECREF.exit35

Py_DECREF.exit35:                                 ; preds = %_Py_NewRef.exit, %bb.j, %bb.k
  %i.x = icmp eq i32 %i.t, 0
  br label %bb.l

bb.l:                                             ; preds = %Py_DECREF.exit35, %bb.g
  %.028 = phi i1 [ %i.x, %Py_DECREF.exit35 ], [ true, %bb.g ]
  %i.y = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !192
  %.val39 = load i8, ptr %i.z, align 2, !tbaa !136
  switch i8 %.val39, label %.critedge [
    i8 -59, label %bb.m
    i8 -128, label %bb.m
    i8 -12, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.aa = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !179
  %i.ac = tail call zeroext i1 @_PyEval_NoToolsForUnwind(ptr noundef %i.ab) #7
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !192
  %i.ae = getelementptr i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !136
  %i.ag = and i8 %i.af, 4
  %i.ah = icmp ne i8 %i.ag, 0
  %or.cond = select i1 %i.ah, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  store i8 5, ptr %i.a, align 1, !tbaa !149
  %i.ai = getelementptr i8, ptr %0, i64 72
  %i.aj = getelementptr i8, ptr %0, i64 80
  store ptr null, ptr %i.aj, align 8, !tbaa !156
  tail call void @_PyFrame_ClearExceptCode(ptr noundef %i.ai) #7
  %i.ak = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !150 ; 4 uses
  %.not.i.i42 = icmp eq ptr %i.al, null
  br i1 %.not.i.i42, label %gen_clear_frame.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %i.ak, align 8, !tbaa !150
  %i.am = load i32, ptr %i.al, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i43 = icmp sgt i32 %i.am, -1
  br i1 %.not.i.i.i43, label %bb.p, label %gen_clear_frame.exit

bb.p:                                             ; preds = %bb.o
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !136
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.q, label %gen_clear_frame.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.al) #7
  br label %gen_clear_frame.exit

.critedge:                                        ; preds = %bb.l, %bb.m
  br i1 %.028, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge
  %i.ap = load ptr, ptr @PyExc_GeneratorExit, align 8, !tbaa !150
  tail call void @PyErr_SetNone(ptr noundef %i.ap) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.critedge
  %i.aq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !179 ; 5 uses
  %i.as = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.at = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !136 ; 2 uses
  %.not.i38.i = icmp sgt i32 %i.at, -1
  br i1 %.not.i38.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = or disjoint i64 ptrtoint (ptr @_Py_NoneStruct to i64), 1
  br label %_PyStackRef_FromPyObjectNew.exit.i

bb.u:                                             ; preds = %bb.s
  %i.av = add nuw i32 %i.at, 1
  store i32 %i.av, ptr @_Py_NoneStruct, align 8, !tbaa !136
  br label %_PyStackRef_FromPyObjectNew.exit.i

_PyStackRef_FromPyObjectNew.exit.i:               ; preds = %bb.u, %bb.t
  %.sroa.0.0.i.i = phi i64 [ %i.au, %bb.t ], [ ptrtoint (ptr @_Py_NoneStruct to i64), %bb.u ]
  %i.aw = getelementptr i8, ptr %0, i64 136       ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !198
  store i64 %.sroa.0.0.i.i, ptr %i.ax, align 8, !tbaa !136
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !198
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !198
  %i.ba = getelementptr i8, ptr %i.ar, i64 136    ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !225
  %i.bc = getelementptr i8, ptr %0, i64 40
  %i.bd = getelementptr i8, ptr %0, i64 48
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !226
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !225
  tail call void @_PyErr_ChainStackItem() #7, !inline_history !2
  %i.be = getelementptr i8, ptr %i.ar, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !227
  %i.bg = getelementptr i8, ptr %i.bf, i64 8568
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !293 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_PyStackRef_FromPyObjectNew.exit.i
  %i.bj = tail call ptr @_PyEval_EvalFrameDefault(ptr noundef nonnull %i.ar, ptr noundef %i.as, i32 noundef 1) #7, !inline_history !2
  br label %_PyEval_EvalFrame.exit.i

bb.w:                                             ; preds = %_PyStackRef_FromPyObjectNew.exit.i
  %i.bk = tail call ptr %i.bh(ptr noundef nonnull %i.ar, ptr noundef %i.as, i32 noundef 1) #7, !inline_history !3
  br label %_PyEval_EvalFrame.exit.i

_PyEval_EvalFrame.exit.i:                         ; preds = %bb.w, %bb.v
  %phi.call.i = phi ptr [ %i.bj, %bb.v ], [ %i.bk, %bb.w ] ; 7 uses
  %i.bl = getelementptr i8, ptr %i.ar, i64 1000
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !294
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %gen_send_ex2.exit.thread, label %2

2:                                                ; preds = %_PyEval_EvalFrame.exit.i
  %3 = icmp eq ptr %phi.call.i, @_Py_NoneStruct
  br i1 %3, label %gen_clear_frame.exit, label %gen_send_ex2.exit

gen_send_ex2.exit:                                ; preds = %2
  %cond = icmp eq ptr %phi.call.i, null
  br i1 %cond, label %bb.aa, label %gen_clear_frame.exit

gen_send_ex2.exit.thread:                         ; preds = %_PyEval_EvalFrame.exit.i
  %.not = icmp eq ptr %phi.call.i, null
  br i1 %.not, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %gen_send_ex2.exit.thread
  %i.bo = getelementptr i8, ptr %0, i64 8
  %.val37 = load ptr, ptr %i.bo, align 8, !tbaa !169 ; 2 uses
  %.not57 = icmp eq ptr %.val37, @PyCoro_Type
  %.not58 = icmp eq ptr %.val37, @PyAsyncGen_Type
  %spec.select = select i1 %.not58, ptr @.str.37, ptr @.str.35
  %.0 = select i1 %.not57, ptr @.str.36, ptr %spec.select
  %i.bp = load i32, ptr %phi.call.i, align 8, !tbaa !136 ; 2 uses
  %.not.i = icmp sgt i32 %i.bp, -1
  br i1 %.not.i, label %bb.y, label %Py_DECREF.exit

bb.y:                                             ; preds = %bb.x
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bq, ptr %phi.call.i, align 8, !tbaa !136
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.z, label %Py_DECREF.exit

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %phi.call.i) #7
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.x, %bb.y, %bb.z
  %i.bs = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !150
  tail call void @PyErr_SetString(ptr noundef %i.bs, ptr noundef nonnull %.0) #7
  br label %gen_clear_frame.exit

bb.aa:                                            ; preds = %gen_send_ex2.exit, %gen_send_ex2.exit.thread
  %i.bt = load ptr, ptr @PyExc_GeneratorExit, align 8, !tbaa !150
  %i.bu = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.bt) #7
  %.not31 = icmp eq i32 %i.bu, 0
  br i1 %.not31, label %gen_clear_frame.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @PyErr_Clear() #7
  br label %gen_clear_frame.exit

gen_clear_frame.exit:                             ; preds = %gen_send_ex2.exit, %2, %Py_DECREF.exit, %bb.ab, %bb.aa, %bb.q, %bb.p, %bb.o, %bb.n, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.f
  %.3 = phi ptr [ @_Py_NoneStruct, %bb.e ], [ @_Py_NoneStruct, %bb.a ], [ null, %bb.f ], [ @_Py_NoneStruct, %bb.q ], [ @_Py_NoneStruct, %bb.b ], [ @_Py_NoneStruct, %bb.c ], [ @_Py_NoneStruct, %bb.d ], [ @_Py_NoneStruct, %bb.n ], [ @_Py_NoneStruct, %bb.o ], [ @_Py_NoneStruct, %bb.p ], [ null, %bb.aa ], [ null, %Py_DECREF.exit ], [ @_Py_NoneStruct, %bb.ab ], [ %phi.call.i, %gen_send_ex2.exit ], [ @_Py_NoneStruct, %2 ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal ptr @gen_sizeof(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #2 !guid !360 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, -2
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 76
  %.val4 = load i32, ptr %i.d, align 4, !tbaa !195
  %i.e = add i32 %.val4, -10
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 3
  %i.h = add nsw i64 %i.g, 152
  %i.i = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.h) #7
  ret ptr %i.i
}

declare ptr @Py_GenericAlias(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @gen_set_stop_iteration(ptr nofree readnone captures(address) %.8.val, ptr noundef %0) unnamed_addr #2 !guid !361 {
bb.a:
  %.not = icmp eq ptr %.8.val, @PyAsyncGen_Type
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @PyExc_StopAsyncIteration, align 8, !tbaa !150
  tail call void @PyErr_SetNone(ptr noundef %i.a) #7
  br label %_PyGen_SetStopIterationValue.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, @_Py_NoneStruct
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !150
  tail call void @PyErr_SetNone(ptr noundef %i.c) #7
  br label %_PyGen_SetStopIterationValue.exit

bb.e:                                             ; preds = %bb.c
  %i.d = icmp eq ptr %0, null
  %i.e = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !150 ; 2 uses
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = tail call ptr @PyObject_CallNoArgs(ptr noundef %i.e) #7
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.g = tail call ptr @PyObject_CallOneArg(ptr noundef %i.e, ptr noundef nonnull %0) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.h = phi ptr [ %i.f, %bb.f ], [ %i.g, %bb.g ] ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_PyGen_SetStopIterationValue.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @PyErr_SetRaisedException(ptr noundef nonnull %i.h) #7
  br label %_PyGen_SetStopIterationValue.exit

_PyGen_SetStopIterationValue.exit:                ; preds = %bb.i, %bb.h, %bb.d, %bb.b
  %i.j = load i32, ptr %0, align 8, !tbaa !136    ; 2 uses
  %.not.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %_PyGen_SetStopIterationValue.exit
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %0, align 8, !tbaa !136
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %0) #7
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %_PyGen_SetStopIterationValue.exit, %bb.j, %bb.k
  ret void
}

declare void @PyErr_SetNone(ptr noundef) local_unnamed_addr #3

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_gen_throw(ptr noundef %0, i32 noundef range(i32 0, 2) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 !guid !365 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 67         ; 5 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !149   ; 3 uses
  switch i8 %i.c, label %bb.f [
    i8 4, label %bb.b
    i8 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val88 = load ptr, ptr %i.d, align 8, !tbaa !169 ; 2 uses
  %.not.i89 = icmp eq ptr %.val88, @PyCoro_Type
  %.not1.i = icmp eq ptr %.val88, @PyAsyncGen_Type
  %spec.select.i = select i1 %.not1.i, ptr @.str.21, ptr @.str.19
  %.0.i = select i1 %.not.i89, ptr @.str.20, ptr %spec.select.i
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !150
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull %.0.i) #7, !inline_history !1
  br label %gen_throw_current_exception.exit110

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8
  %.val86 = load ptr, ptr %i.f, align 8, !tbaa !169
  %.not127 = icmp eq ptr %.val86, @PyCoro_Type
  br i1 %.not127, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !150
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.17) #7
  br label %gen_throw_current_exception.exit110

bb.e:                                             ; preds = %bb.c
  %i.h = tail call fastcc i32 @gen_set_exception(ptr noundef %2, ptr noundef %3, ptr noundef %4) ; 0 uses
  br label %gen_throw_current_exception.exit110

bb.f:                                             ; preds = %bb.a
  store i8 4, ptr %i.b, align 1, !tbaa !149
  %i.i = icmp eq i8 %i.c, 2
  br i1 %i.i, label %bb.g, label %gen_throw_current_exception.exit.thread117

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr i8, ptr %0, i64 72         ; 6 uses
  %i.k = getelementptr i8, ptr %0, i64 136        ; 7 uses
  %.val87 = load ptr, ptr %i.k, align 8, !tbaa !198
  %i.l = getelementptr i8, ptr %.val87, i64 -8
  %.val87.val = load i64, ptr %i.l, align 8, !tbaa !136
  %i.m = and i64 %.val87.val, -2
  %i.n = inttoptr i64 %i.m to ptr                 ; 18 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !136  ; 2 uses
  %i.p = icmp ugt i32 %i.o, -1073741825
  br i1 %i.p, label %_Py_NewRef.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = add nuw i32 %i.o, 1
  store i32 %i.q, ptr %i.n, align 8, !tbaa !136
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.g, %bb.h
  %i.r = load ptr, ptr @PyExc_GeneratorExit, align 8, !tbaa !150
  %i.s = tail call i32 @PyErr_GivenExceptionMatches(ptr noundef %2, ptr noundef %i.r) #7
  %i.t = icmp ne i32 %i.s, 0
  %i.u = icmp ne i32 %1, 0
  %or.cond = and i1 %i.u, %i.t
  br i1 %or.cond, label %bb.i, label %bb.r

bb.i:                                             ; preds = %_Py_NewRef.exit
  %i.v = tail call fastcc i32 @gen_close_iter(ptr noundef nonnull %i.n)
  %i.w = load i32, ptr %i.n, align 8, !tbaa !136  ; 2 uses
  %.not.i79 = icmp sgt i32 %i.w, -1
  br i1 %.not.i79, label %bb.j, label %Py_DECREF.exit80

bb.j:                                             ; preds = %bb.i
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.n, align 8, !tbaa !136
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.k, label %Py_DECREF.exit80

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.n) #7
  br label %Py_DECREF.exit80

Py_DECREF.exit80:                                 ; preds = %bb.i, %bb.j, %bb.k
  %i.z = icmp slt i32 %i.v, 0
  br i1 %i.z, label %bb.l, label %gen_throw_current_exception.exit.thread117

bb.l:                                             ; preds = %Py_DECREF.exit80
  %i.aa = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !179 ; 5 uses
  %i.ac = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !136 ; 2 uses
  %.not.i38.i.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i38.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = or disjoint i64 ptrtoint (ptr @_Py_NoneStruct to i64), 1
  br label %_PyStackRef_FromPyObjectNew.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.ae = add nuw i32 %i.ac, 1
  store i32 %i.ae, ptr @_Py_NoneStruct, align 8, !tbaa !136
  br label %_PyStackRef_FromPyObjectNew.exit.i.i

_PyStackRef_FromPyObjectNew.exit.i.i:             ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i.i = phi i64 [ %i.ad, %bb.m ], [ ptrtoint (ptr @_Py_NoneStruct to i64), %bb.n ]
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !198
  store i64 %.sroa.0.0.i.i.i, ptr %i.af, align 8, !tbaa !136
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !198
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  store ptr %i.ah, ptr %i.k, align 8, !tbaa !198
  %i.ai = getelementptr i8, ptr %i.ab, i64 136    ; 2 uses
end_hunk_0
