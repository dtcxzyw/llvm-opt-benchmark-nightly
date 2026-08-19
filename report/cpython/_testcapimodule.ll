inline.NumInlined: 130
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@py_buildvalue:bb.a
  br i1 %i.al, label %bb.j, label %.preheader.9

bb.j:                                             ; preds = %.preheader.8
  store ptr null, ptr %i.j, align 16, !tbaa !61
  br label %.preheader.9

.preheader.9:                                     ; preds = %bb.j, %.preheader.8
  %i.am = phi ptr [ null, %bb.j ], [ %i.ak, %.preheader.8 ]
  %i.an = load ptr, ptr %i.k, align 8, !tbaa !61  ; 2 uses
  %i.ao = icmp eq ptr %i.an, @_Py_NoneStruct
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader.9
  store ptr null, ptr %i.k, align 8, !tbaa !61
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader.9
  %i.ap = phi ptr [ null, %bb.k ], [ %i.an, %.preheader.9 ]
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.ar = call ptr (ptr, ...) @Py_BuildValue(ptr noundef %i.aq, ptr noundef %i.o, ptr noundef %i.r, ptr noundef %i.u, ptr noundef %i.x, ptr noundef %i.aa, ptr noundef %i.ad, ptr noundef %i.ag, ptr noundef %i.aj, ptr noundef %i.am, ptr noundef %i.ap) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  %.05 = phi ptr [ %i.ar, %bb.l ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.05
}

; Function Attrs: nounwind uwtable
define internal ptr @py_buildvalue_ints(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [10 x i32], align 16              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.l = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.132, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #17
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.n = load i32, ptr %i.b, align 16, !tbaa !6
  %i.o = load i32, ptr %i.c, align 4, !tbaa !6
  %i.p = load i32, ptr %i.d, align 8, !tbaa !6
  %i.q = load i32, ptr %i.e, align 4, !tbaa !6
  %i.r = load i32, ptr %i.f, align 16, !tbaa !6
  %i.s = load i32, ptr %i.g, align 4, !tbaa !6
  %i.t = load i32, ptr %i.h, align 8, !tbaa !6
  %i.u = load i32, ptr %i.i, align 4, !tbaa !6
  %i.v = load i32, ptr %i.j, align 16, !tbaa !6
  %i.w = load i32, ptr %i.k, align 4, !tbaa !6
  %i.x = call ptr (ptr, ...) @Py_BuildValue(ptr noundef %i.m, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.s, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.v, i32 noundef %i.w) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.x, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @test_buildvalue_N(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyList_New(i64 noundef 0) #17 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %Py_INCREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.a, align 8, !tbaa !32
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.b, %bb.c
  %i.f = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.133, ptr noundef nonnull %i.a) #17 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.s, label %bb.d

bb.d:                                             ; preds = %Py_INCREF.exit
  %.not = icmp eq ptr %i.f, %i.a
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @PyModule_GetState(ptr noundef %0) #17 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.f, label %raiseTestError.exit

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, i32 noundef 45, ptr noundef nonnull @__PRETTY_FUNCTION__.get_testcapi_state) #16
  unreachable

raiseTestError.exit:                              ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.134) #17 ; 0 uses
  br label %bb.s

bb.g:                                             ; preds = %bb.d
  %.val = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %.not19 = icmp eq i32 %.val, 2
  br i1 %.not19, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = tail call ptr @PyModule_GetState(ptr noundef %0) #17 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i23, label %bb.i, label %raiseTestError.exit24

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, i32 noundef 45, ptr noundef nonnull @__PRETTY_FUNCTION__.get_testcapi_state) #16
  unreachable

raiseTestError.exit24:                            ; preds = %bb.h
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.m = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.l, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.135) #17 ; 0 uses
  br label %bb.s

bb.j:                                             ; preds = %bb.g
  %i.n = load i32, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %.not.i20 = icmp sgt i32 %i.n, -1
  br i1 %.not.i20, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  %i.o = add nsw i32 %.val, -1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !32
  br label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  %i.p = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.p, ptr %i.f, align 8, !tbaa !32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.l, label %Py_DECREF.exit21

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #17
  br label %Py_DECREF.exit21

Py_DECREF.exit21:                                 ; preds = %bb.k, %bb.l
  %.pr = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp sgt i32 %.pr, -1
  br i1 %.not.i, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %Py_DECREF.exit21
  %i.r = add nsw i32 %.pr, -1                     ; 2 uses
  store i32 %i.r, ptr %i.a, align 8, !tbaa !32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.n, label %Py_DECREF.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #17
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %.thread, %Py_DECREF.exit21, %bb.m, %bb.n
  %i.t = tail call fastcc i32 @test_buildvalue_N_error(ptr noundef %0, ptr noundef nonnull @.str.136)
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.s, label %bb.o

bb.o:                                             ; preds = %Py_DECREF.exit
  %i.v = tail call fastcc i32 @test_buildvalue_N_error(ptr noundef %0, ptr noundef nonnull @.str.137)
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = tail call fastcc i32 @test_buildvalue_N_error(ptr noundef %0, ptr noundef nonnull @.str.138)
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = tail call fastcc i32 @test_buildvalue_N_error(ptr noundef %0, ptr noundef nonnull @.str.139)
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = tail call fastcc i32 @test_buildvalue_N_error(ptr noundef %0, ptr noundef nonnull @.str.140)
  %i.ac = icmp slt i32 %i.ab, 0
  %._Py_NoneStruct = select i1 %i.ac, ptr null, ptr @_Py_NoneStruct
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %Py_DECREF.exit, %Py_INCREF.exit, %bb.a, %raiseTestError.exit24, %raiseTestError.exit
  %.0 = phi ptr [ null, %bb.q ], [ null, %bb.a ], [ null, %raiseTestError.exit ], [ null, %raiseTestError.exit24 ], [ null, %Py_INCREF.exit ], [ null, %Py_DECREF.exit ], [ null, %bb.o ], [ null, %bb.p ], [ %._Py_NoneStruct, %bb.r ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @test_buildvalue_p(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.144, i32 noundef 3) #17 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.a, @_Py_TrueStruct
  %2 = load i32, ptr %i.a, align 8, !tbaa !32     ; 3 uses
  %.not.i15 = icmp sgt i32 %2, -1                 ; 2 uses
  br i1 %i.c, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i15, label %bb.d, label %Py_DECREF.exit18

bb.d:                                             ; preds = %bb.c
  %i.d = add nsw i32 %2, -1                       ; 2 uses
  store i32 %i.d, ptr %i.a, align 8, !tbaa !32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %Py_DECREF.exit18

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #17
  br label %Py_DECREF.exit18

Py_DECREF.exit18:                                 ; preds = %bb.c, %bb.d, %bb.e
  %i.f = tail call ptr @PyModule_GetState(ptr noundef %0) #17 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.f, label %raiseTestError.exit

bb.f:                                             ; preds = %Py_DECREF.exit18
  tail call void @__assert_fail(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, i32 noundef 45, ptr noundef nonnull @__PRETTY_FUNCTION__.get_testcapi_state) #16
  unreachable

raiseTestError.exit:                              ; preds = %Py_DECREF.exit18
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.145) #17 ; 0 uses
  br label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.b
  br i1 %.not.i15, label %bb.h, label %Py_DECREF.exit16

bb.h:                                             ; preds = %bb.g
  %i.i = add nsw i32 %2, -1                       ; 2 uses
  store i32 %i.i, ptr %i.a, align 8, !tbaa !32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.i, label %Py_DECREF.exit16

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #17
  br label %Py_DECREF.exit16

Py_DECREF.exit16:                                 ; preds = %bb.g, %bb.h, %bb.i
  %i.k = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.144, i32 noundef 0) #17 ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %Py_DECREF.exit, label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit16
  %i.m = icmp eq ptr %i.k, @_Py_FalseStruct
  %3 = load i32, ptr %i.k, align 8, !tbaa !32     ; 3 uses
  %.not.i = icmp sgt i32 %3, -1                   ; 2 uses
  br i1 %i.m, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i, label %bb.l, label %Py_DECREF.exit14

bb.l:                                             ; preds = %bb.k
  %i.n = add nsw i32 %3, -1                       ; 2 uses
  store i32 %i.n, ptr %i.k, align 8, !tbaa !32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.m, label %Py_DECREF.exit14

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #17
  br label %Py_DECREF.exit14

Py_DECREF.exit14:                                 ; preds = %bb.k, %bb.l, %bb.m
  %i.p = tail call ptr @PyModule_GetState(ptr noundef %0) #17 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i22, label %bb.n, label %raiseTestError.exit23

bb.n:                                             ; preds = %Py_DECREF.exit14
  tail call void @__assert_fail(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, i32 noundef 45, ptr noundef nonnull @__PRETTY_FUNCTION__.get_testcapi_state) #16
  unreachable

raiseTestError.exit23:                            ; preds = %Py_DECREF.exit14
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.r = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.q, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.146) #17 ; 0 uses
  br label %Py_DECREF.exit

bb.o:                                             ; preds = %bb.j
  br i1 %.not.i, label %bb.p, label %Py_DECREF.exit

bb.p:                                             ; preds = %bb.o
  %i.s = add nsw i32 %3, -1                       ; 2 uses
  store i32 %i.s, ptr %i.k, align 8, !tbaa !32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.q, label %Py_DECREF.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #17
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.q, %bb.p, %bb.o, %Py_DECREF.exit16, %bb.a, %raiseTestError.exit23, %raiseTestError.exit
  %.0 = phi ptr [ null, %raiseTestError.exit ], [ null, %bb.a ], [ null, %Py_DECREF.exit16 ], [ null, %raiseTestError.exit23 ], [ @_Py_NoneStruct, %bb.o ], [ @_Py_NoneStruct, %bb.p ], [ @_Py_NoneStruct, %bb.q ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @test_reftracer(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.simpletracer_data, align 8  ; 12 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.c = call ptr @PyRefTracer_GetTracer(ptr noundef nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  %i.d = call i32 @PyRefTracer_SetTracer(ptr noundef nonnull @_simpletracer, ptr noundef nonnull %2) #17
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %Py_DECREF.exit39

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @PyRefTracer_GetTracer(ptr noundef nonnull %i.b) #17
  %.not18 = icmp eq ptr %i.e, @_simpletracer
  %i.f = load ptr, ptr %i.b, align 8
  %.not19 = icmp eq ptr %i.f, %2
  %or.cond27 = select i1 %.not18, i1 %.not19, i1 false
  br i1 %or.cond27, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @PyExc_AssertionError, align 8, !tbaa !61
  call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.147) #17
  %i.h = call i32 @PyRefTracer_SetTracer(ptr noundef null, ptr noundef null) #17 ; 0 uses
  br label %Py_DECREF.exit39

bb.d:                                             ; preds = %bb.b
  %i.i = call ptr @PyList_New(i64 noundef 0) #17  ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Py_DECREF.exit39, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = call ptr @PyDict_New() #17               ; 6 uses
  %i.l = icmp eq ptr %i.k, null
  %i.m = load i32, ptr %i.i, align 8, !tbaa !32   ; 3 uses
  %.not.i38 = icmp sgt i32 %i.m, -1               ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i38, label %bb.g, label %Py_DECREF.exit39

bb.g:                                             ; preds = %bb.f
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.i, align 8, !tbaa !32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %Py_DECREF.exit39

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.i) #17
  br label %Py_DECREF.exit39

bb.i:                                             ; preds = %bb.e
  br i1 %.not.i38, label %bb.j, label %Py_DECREF.exit37

bb.j:                                             ; preds = %bb.i
  %i.p = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.p, ptr %i.i, align 8, !tbaa !32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.k, label %Py_DECREF.exit37

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.i) #17
  br label %Py_DECREF.exit37

Py_DECREF.exit37:                                 ; preds = %bb.i, %bb.j, %bb.k
  %i.r = load i32, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %Py_DECREF.exit37
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.k, align 8, !tbaa !32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.l
  call void @_Py_Dealloc(ptr noundef nonnull %i.k) #17
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit37, %bb.l, %bb.m
  %i.u = call i32 @PyRefTracer_SetTracer(ptr noundef null, ptr noundef null) #17 ; 0 uses
  %i.v = call ptr @PyRefTracer_GetTracer(ptr noundef nonnull %i.b) #17
  %i.w = icmp ne ptr %i.v, null
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = icmp ne ptr %i.x, null
  %or.cond = select i1 %i.w, i1 true, i1 %i.y
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %Py_DECREF.exit
  %i.z = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !61
  call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.148) #17
  br label %Py_DECREF.exit39

bb.o:                                             ; preds = %Py_DECREF.exit
  %i.aa = load i32, ptr %2, align 8, !tbaa !63
  %.not20 = icmp eq i32 %i.aa, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not21 = icmp eq ptr %i.ac, %i.i
  %or.cond29 = select i1 %.not20, i1 %.not21, i1 false
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not22 = icmp eq ptr %i.ae, %i.k
  %or.cond31 = select i1 %or.cond29, i1 %.not22, i1 false
  br i1 %or.cond31, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !61
  call void @PyErr_SetString(ptr noundef %i.af, ptr noundef nonnull @.str.149) #17
  br label %Py_DECREF.exit39

bb.q:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !65
  %.not23 = icmp eq i32 %i.ah, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not24 = icmp eq ptr %i.aj, %i.i
  %or.cond33 = select i1 %.not23, i1 %.not24, i1 false
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.al = load ptr, ptr %i.ak, align 8
  %.not25 = icmp eq ptr %i.al, %i.k
  %or.cond35 = select i1 %or.cond33, i1 %.not25, i1 false
  br i1 %or.cond35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !61
  call void @PyErr_SetString(ptr noundef %i.am, ptr noundef nonnull @.str.150) #17
  br label %Py_DECREF.exit39

bb.s:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !66
  %.not26 = icmp eq i32 %i.ao, 1
  br i1 %.not26, label %Py_DECREF.exit39, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !61
  call void @PyErr_SetString(ptr noundef %i.ap, ptr noundef nonnull @.str.151) #17
  br label %Py_DECREF.exit39

Py_DECREF.exit39:                                 ; preds = %bb.c, %bb.n, %bb.p, %bb.r, %bb.t, %bb.a, %bb.d, %bb.f, %bb.g, %bb.h, %bb.s
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.s ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.a ], [ null, %bb.t ], [ null, %bb.r ], [ null, %bb.p ], [ null, %bb.n ], [ null, %bb.c ]
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.ar = call i32 @PyRefTracer_SetTracer(ptr noundef %i.c, ptr noundef %i.aq) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @test_thread_state(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.153, ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.d = call i32 @PyCallable_Check(ptr noundef %i.c) #17
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !61
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.g = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.154, ptr noundef %i.f) #17 ; 0 uses
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.h = call ptr @PyThread_allocate_lock() #17   ; 3 uses
  store ptr %i.h, ptr @thread_done, align 8, !tbaa !67
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = call ptr @PyErr_NoMemory() #17
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.k = call i32 @PyThread_acquire_lock(ptr noundef nonnull %i.h, i32 noundef 1) #17 ; 0 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.m = call i64 @PyThread_start_new_thread(ptr noundef nonnull @_make_call_from_thread, ptr noundef %i.l) #17 ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.o = call i32 @PyGILState_Ensure() #17
  %i.p = call ptr @PyObject_CallNoArgs(ptr noundef %i.n) #17 ; 4 uses
  %.not.i.i = icmp eq ptr %i.p, null              ; 2 uses
  br i1 %.not.i.i, label %_make_call.exit, label %bb.g

end_hunk_0
begin_hunk_1_@gen_get_code
define internal ptr @gen_get_code(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %.not.i = icmp eq ptr %.val, @PyGen_Type
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyGen_Type) #17
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.b, label %PyObject_TypeCheck.exit.thread

bb.b:                                             ; preds = %PyObject_TypeCheck.exit
  %i.c = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !61
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.234) #17
  br label %bb.c

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.d = tail call ptr @PyGen_GetCode(ptr noundef nonnull %1) #17
  br label %bb.c

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.thread, %bb.b
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
  %i.c = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not.i35 = icmp sgt i32 %i.c, -1
  br i1 %.not.i35, label %bb.d, label %Py_DECREF.exit36

bb.d:                                             ; preds = %bb.c
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.a, align 8, !tbaa !32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %Py_DECREF.exit36.sink.split, label %Py_DECREF.exit36

bb.e:                                             ; preds = %bb.b
  %i.f = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.236, ptr noundef nonnull @_Py_FalseStruct) #17
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not.i33 = icmp sgt i32 %i.g, -1
  br i1 %.not.i33, label %bb.g, label %Py_DECREF.exit36

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.a, align 8, !tbaa !32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %Py_DECREF.exit36.sink.split, label %Py_DECREF.exit36

bb.h:                                             ; preds = %bb.e
  %i.j = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.237, ptr noundef nonnull @_Py_TrueStruct) #17
  %.not23 = icmp eq i32 %i.j, 0
  br i1 %.not23, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not.i31 = icmp sgt i32 %i.k, -1
  br i1 %.not.i31, label %bb.j, label %Py_DECREF.exit36

bb.j:                                             ; preds = %bb.i
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.a, align 8, !tbaa !32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %Py_DECREF.exit36.sink.split, label %Py_DECREF.exit36

bb.k:                                             ; preds = %bb.h
  %i.n = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.238, ptr noundef nonnull @_Py_FalseStruct) #17
  %.not24 = icmp eq i32 %i.n, 0
  br i1 %.not24, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not.i29 = icmp sgt i32 %i.o, -1
  br i1 %.not.i29, label %bb.m, label %Py_DECREF.exit36

bb.m:                                             ; preds = %bb.l
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.a, align 8, !tbaa !32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %Py_DECREF.exit36.sink.split, label %Py_DECREF.exit36

bb.n:                                             ; preds = %bb.k
  %i.r = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.239, ptr noundef nonnull @_Py_FalseStruct) #17
  %.not25 = icmp eq i32 %i.r, 0
  br i1 %.not25, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.s = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not.i27 = icmp sgt i32 %i.s, -1
  br i1 %.not.i27, label %bb.p, label %Py_DECREF.exit36

bb.p:                                             ; preds = %bb.o
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.a, align 8, !tbaa !32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %Py_DECREF.exit36.sink.split, label %Py_DECREF.exit36

bb.q:                                             ; preds = %bb.n
  %i.v = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.240, ptr noundef nonnull @_Py_FalseStruct) #17
  %.not26 = icmp eq i32 %i.v, 0
  br i1 %.not26, label %Py_DECREF.exit36, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.w = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i, label %bb.s, label %Py_DECREF.exit36

bb.s:                                             ; preds = %bb.r
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.a, align 8, !tbaa !32
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
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !61
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.243) #17
  %i.i = load i32, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %.not.i71 = icmp sgt i32 %i.i, -1
  br i1 %.not.i71, label %bb.g, label %Py_DECREF.exit72.thread

bb.g:                                             ; preds = %bb.f
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.c, align 8, !tbaa !32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %Py_DECREF.exit72.thread.sink.split, label %Py_DECREF.exit72.thread

bb.h:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %.not.i69 = icmp sgt i32 %i.l, -1
  br i1 %.not.i69, label %bb.i, label %Py_DECREF.exit72

bb.i:                                             ; preds = %bb.h
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.c, align 8, !tbaa !32
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
  %i.r = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !61
  tail call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.244) #17
  %i.s = load i32, ptr %i.o, align 8, !tbaa !32   ; 2 uses
  %.not.i67 = icmp sgt i32 %i.s, -1
  br i1 %.not.i67, label %bb.m, label %Py_DECREF.exit72.thread

bb.m:                                             ; preds = %bb.l
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.o, align 8, !tbaa !32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %Py_DECREF.exit72.thread.sink.split, label %Py_DECREF.exit72.thread

bb.n:                                             ; preds = %bb.k
  %2 = getelementptr i8, ptr %.val86, i64 168
  %.val3.i = load i64, ptr %2, align 8, !tbaa !41
  %i.v = and i64 %.val3.i, 67108864
  %.not.i88 = icmp eq i64 %i.v, 0
  br i1 %.not.i88, label %bb.o, label %PyTuple_GET_SIZE.exit

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210, i32 noundef 24, ptr noundef nonnull @__PRETTY_FUNCTION__.PyTuple_GET_SIZE) #16
  unreachable

PyTuple_GET_SIZE.exit:                            ; preds = %bb.n
  %i.w = getelementptr i8, ptr %i.o, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !80
  %.not41 = icmp eq i64 %i.x, 0
  br i1 %.not41, label %bb.r, label %bb.p

bb.p:                                             ; preds = %PyTuple_GET_SIZE.exit
  %i.y = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !61
  tail call void @PyErr_SetString(ptr noundef %i.y, ptr noundef nonnull @.str.245) #17
  %i.z = load i32, ptr %i.o, align 8, !tbaa !32   ; 2 uses
  %.not.i65 = icmp sgt i32 %i.z, -1
  br i1 %.not.i65, label %bb.q, label %Py_DECREF.exit72.thread

bb.q:                                             ; preds = %bb.p
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %Py_DECREF.exit72.thread.sink.split, label %Py_DECREF.exit72.thread

bb.r:                                             ; preds = %PyTuple_GET_SIZE.exit
  %i.ac = load i32, ptr %i.o, align 8, !tbaa !32  ; 2 uses
  %.not.i63 = icmp sgt i32 %i.ac, -1
  br i1 %.not.i63, label %bb.s, label %Py_DECREF.exit68

bb.s:                                             ; preds = %bb.r
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.o, align 8, !tbaa !32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.t, label %Py_DECREF.exit68

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.o) #17
  br label %Py_DECREF.exit68

Py_DECREF.exit68:                                 ; preds = %bb.r, %bb.s, %bb.t
  %i.af = tail call ptr @PyCode_GetCellvars(ptr noundef nonnull %i.a) #17 ; 12 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %Py_DECREF.exit72.thread, label %bb.u

bb.u:                                             ; preds = %Py_DECREF.exit68
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  %.val85 = load ptr, ptr %i.ah, align 8, !tbaa !28 ; 2 uses
  %.not100 = icmp eq ptr %.val85, @PyTuple_Type
  br i1 %.not100, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ai = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !61
  tail call void @PyErr_SetString(ptr noundef %i.ai, ptr noundef nonnull @.str.246) #17
  %i.aj = load i32, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  %.not.i61 = icmp sgt i32 %i.aj, -1
  br i1 %.not.i61, label %bb.w, label %Py_DECREF.exit72.thread

bb.w:                                             ; preds = %bb.v
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.af, align 8, !tbaa !32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %Py_DECREF.exit72.thread.sink.split, label %Py_DECREF.exit72.thread

bb.x:                                             ; preds = %bb.u
  %3 = getelementptr i8, ptr %.val85, i64 168
  %.val3.i90 = load i64, ptr %3, align 8, !tbaa !41
  %i.am = and i64 %.val3.i90, 67108864
  %.not.i91 = icmp eq i64 %i.am, 0
  br i1 %.not.i91, label %bb.y, label %PyTuple_GET_SIZE.exit94

bb.y:                                             ; preds = %bb.x
  tail call void @__assert_fail(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210, i32 noundef 24, ptr noundef nonnull @__PRETTY_FUNCTION__.PyTuple_GET_SIZE) #16
  unreachable

PyTuple_GET_SIZE.exit94:                          ; preds = %bb.x
  %i.an = getelementptr i8, ptr %i.af, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !80
  %.not43 = icmp eq i64 %i.ao, 0
  br i1 %.not43, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %PyTuple_GET_SIZE.exit94
  %i.ap = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !61
  tail call void @PyErr_SetString(ptr noundef %i.ap, ptr noundef nonnull @.str.247) #17
  %i.aq = load i32, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  %.not.i59 = icmp sgt i32 %i.aq, -1
  br i1 %.not.i59, label %bb.aa, label %Py_DECREF.exit72.thread

bb.aa:                                            ; preds = %bb.z
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %Py_DECREF.exit72.thread.sink.split, label %Py_DECREF.exit72.thread

bb.ab:                                            ; preds = %PyTuple_GET_SIZE.exit94
  %i.at = load i32, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  %.not.i57 = icmp sgt i32 %i.at, -1
  br i1 %.not.i57, label %bb.ac, label %Py_DECREF.exit62

bb.ac:                                            ; preds = %bb.ab
  %i.au = add nsw i32 %i.at, -1                   ; 2 uses
  store i32 %i.au, ptr %i.af, align 8, !tbaa !32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.ad, label %Py_DECREF.exit62

bb.ad:                                            ; preds = %bb.ac
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.af) #17
  br label %Py_DECREF.exit62

Py_DECREF.exit62:                                 ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.aw = tail call ptr @PyCode_GetFreevars(ptr noundef nonnull %i.a) #17 ; 12 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %Py_DECREF.exit72.thread, label %bb.ae

bb.ae:                                            ; preds = %Py_DECREF.exit62
  %i.ay = getelementptr i8, ptr %i.aw, i64 8
  %.val = load ptr, ptr %i.ay, align 8, !tbaa !28
  %.not101 = icmp eq ptr %.val, @PyTuple_Type
  br i1 %.not101, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.az = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !61
  tail call void @PyErr_SetString(ptr noundef %i.az, ptr noundef nonnull @.str.248) #17
  %i.ba = load i32, ptr %i.aw, align 8, !tbaa !32 ; 2 uses
  %.not.i55 = icmp sgt i32 %i.ba, -1
  br i1 %.not.i55, label %bb.ag, label %Py_DECREF.exit72.thread

bb.ag:                                            ; preds = %bb.af
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %i.aw, align 8, !tbaa !32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %Py_DECREF.exit72.thread.sink.split, label %Py_DECREF.exit72.thread

bb.ah:                                            ; preds = %bb.ae
  %i.bd = tail call fastcc i64 @PyTuple_GET_SIZE(ptr noundef %i.aw)
  %.not45 = icmp eq i64 %i.bd, 0
  br i1 %.not45, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.be = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !61
  tail call void @PyErr_SetString(ptr noundef %i.be, ptr noundef nonnull @.str.249) #17
  %i.bf = load i32, ptr %i.aw, align 8, !tbaa !32 ; 2 uses
  %.not.i53 = icmp sgt i32 %i.bf, -1
  br i1 %.not.i53, label %bb.aj, label %Py_DECREF.exit72.thread

bb.aj:                                            ; preds = %bb.ai
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.aw, align 8, !tbaa !32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %Py_DECREF.exit72.thread.sink.split, label %Py_DECREF.exit72.thread

bb.ak:                                            ; preds = %bb.ah
  %i.bi = load i32, ptr %i.aw, align 8, !tbaa !32 ; 2 uses
  %.not.i51 = icmp sgt i32 %i.bi, -1
  br i1 %.not.i51, label %bb.al, label %Py_DECREF.exit56

bb.al:                                            ; preds = %bb.ak
  %i.bj = add nsw i32 %i.bi, -1                   ; 2 uses
  store i32 %i.bj, ptr %i.aw, align 8, !tbaa !32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.am, label %Py_DECREF.exit56

bb.am:                                            ; preds = %bb.al
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aw) #17
  br label %Py_DECREF.exit56

Py_DECREF.exit56:                                 ; preds = %bb.ak, %bb.al, %bb.am
  %i.bl = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %.not.i49 = icmp sgt i32 %i.bl, -1
  br i1 %.not.i49, label %bb.an, label %Py_DECREF.exit50

bb.an:                                            ; preds = %Py_DECREF.exit56
  %i.bm = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.bm, ptr %i.a, align 8, !tbaa !32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %Py_DECREF.exit50.sink.split, label %Py_DECREF.exit50

Py_DECREF.exit72.thread.sink.split:               ; preds = %bb.aj, %bb.ag, %bb.aa, %bb.w, %bb.q, %bb.m, %bb.g
  %.sink = phi ptr [ %i.aw, %bb.ag ], [ %i.af, %bb.aa ], [ %i.af, %bb.w ], [ %i.o, %bb.q ], [ %i.o, %bb.m ], [ %i.c, %bb.g ], [ %i.aw, %bb.aj ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #17
  br label %Py_DECREF.exit72.thread

Py_DECREF.exit72.thread:                          ; preds = %Py_DECREF.exit72.thread.sink.split, %bb.aj, %bb.ai, %bb.ag, %bb.af, %Py_DECREF.exit62, %bb.aa, %bb.z, %bb.w, %bb.v, %Py_DECREF.exit68, %bb.q, %bb.p, %bb.m, %bb.l, %Py_DECREF.exit72, %bb.g, %bb.f, %bb.b
  %i.bo = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %.not.i = icmp sgt i32 %i.bo, -1
  br i1 %.not.i, label %bb.ao, label %Py_DECREF.exit50

bb.ao:                                            ; preds = %Py_DECREF.exit72.thread
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  store i32 %i.bp, ptr %i.a, align 8, !tbaa !32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %Py_DECREF.exit50.sink.split, label %Py_DECREF.exit50

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
  %.val = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val3 = load i64, ptr %i.b, align 8, !tbaa !41
  %i.c = and i64 %.val3, 33554432
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !61
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.250) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @PyEval_SetTrace(ptr noundef nonnull @error_func, ptr noundef nonnull %1) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @settrace_to_record(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val3 = load i64, ptr %i.b, align 8, !tbaa !41
  %i.c = and i64 %.val3, 33554432
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !61
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.250) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @PyEval_SetTrace(ptr noundef nonnull @record_func, ptr noundef nonnull %1) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @test_macros(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #4 {
bb.a:
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @test_weakref_capi(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 16 uses
  %i.b = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef nonnull @PyType_Type, ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.257) #17 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit63, label %bb.b

end_hunk_1
