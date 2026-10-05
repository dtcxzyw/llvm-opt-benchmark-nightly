Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/object?download=true
inline.NumInlined: 26
inline.NumDeleted: 8
begin_hunk_0_@test_py_setref:bb.a
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.f, align 8, !tbaa !13
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_XDECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #5
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.e, %bb.f, %bb.g
  %i.k = tail call ptr @PyList_New(i64 noundef 0) #5 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %Py_XDECREF.exit43, label %bb.h

bb.h:                                             ; preds = %Py_XDECREF.exit
  %i.m = load i32, ptr %i.k, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.k, align 8, !tbaa !13
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.i, %bb.j
  %i.p = tail call ptr @PyList_New(i64 noundef 0) #5 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %Py_XDECREF.exit43, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit
  %i.r = load i32, ptr %i.p, align 8, !tbaa !13   ; 2 uses
  %.not.i.i42 = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i42, label %bb.l, label %Py_XDECREF.exit43

bb.l:                                             ; preds = %bb.k
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.p, align 8, !tbaa !13
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %Py_XDECREF.exit43

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #5
  br label %Py_XDECREF.exit43

Py_XDECREF.exit43:                                ; preds = %bb.m, %bb.l, %bb.k, %Py_DECREF.exit38, %Py_DECREF.exit, %Py_XDECREF.exit, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %Py_DECREF.exit38 ], [ null, %Py_XDECREF.exit ], [ null, %Py_DECREF.exit ], [ @_Py_NoneStruct, %bb.k ], [ @_Py_NoneStruct, %bb.l ], [ @_Py_NoneStruct, %bb.m ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @test_refcount_macros(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyList_New(i64 noundef 0) #5 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val24 = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = icmp eq i32 %.val24, 1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.33, i32 noundef 456, ptr noundef nonnull @__PRETTY_FUNCTION__.test_refcount_macros) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !13
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ @_Py_NoneStruct, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @test_refcount_funcs(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyList_New(i64 noundef 0) #5 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val24 = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = icmp eq i32 %.val24, 1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.33, i32 noundef 466, ptr noundef nonnull @__PRETTY_FUNCTION__.test_refcount_funcs) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = tail call ptr @Py_NewRef(ptr noundef nonnull %i.a) #5 ; 4 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.33, i32 noundef 466, ptr noundef nonnull @__PRETTY_FUNCTION__.test_refcount_funcs) #6
  unreachable

bb.f:                                             ; preds = %bb.d
  %.val23 = load i32, ptr %i.a, align 8, !tbaa !13
  %i.f = icmp eq i32 %.val23, 2
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.33, i32 noundef 466, ptr noundef nonnull @__PRETTY_FUNCTION__.test_refcount_funcs) #6
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.g = load i32, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not.i19 = icmp sgt i32 %i.g, -1
  br i1 %.not.i19, label %bb.i, label %Py_DECREF.exit20

bb.i:                                             ; preds = %bb.h
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.d, align 8, !tbaa !13
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.j, label %Py_DECREF.exit20

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #5
  br label %Py_DECREF.exit20

Py_DECREF.exit20:                                 ; preds = %bb.h, %bb.i, %bb.j
  %i.j = tail call ptr @Py_XNewRef(ptr noundef nonnull %i.a) #5 ; 4 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %bb.l, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit20
  tail call void @__assert_fail(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.33, i32 noundef 466, ptr noundef nonnull @__PRETTY_FUNCTION__.test_refcount_funcs) #6
  unreachable

bb.l:                                             ; preds = %Py_DECREF.exit20
  %.val = load i32, ptr %i.a, align 8, !tbaa !13
  %i.l = icmp eq i32 %.val, 2
  br i1 %i.l, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.33, i32 noundef 466, ptr noundef nonnull @__PRETTY_FUNCTION__.test_refcount_funcs) #6
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.m = load i32, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %.not.i17 = icmp sgt i32 %i.m, -1
  br i1 %.not.i17, label %bb.o, label %Py_DECREF.exit18

bb.o:                                             ; preds = %bb.n
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.j, align 8, !tbaa !13
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.p, label %Py_DECREF.exit18

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #5
  br label %Py_DECREF.exit18

Py_DECREF.exit18:                                 ; preds = %bb.n, %bb.o, %bb.p
  %i.p = tail call ptr @Py_XNewRef(ptr noundef null) #5
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.r, label %bb.q

bb.q:                                             ; preds = %Py_DECREF.exit18
  tail call void @__assert_fail(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.33, i32 noundef 466, ptr noundef nonnull @__PRETTY_FUNCTION__.test_refcount_funcs) #6
  unreachable

bb.r:                                             ; preds = %Py_DECREF.exit18
  %i.r = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.a, align 8, !tbaa !13
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.t, label %Py_DECREF.exit

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.t, %bb.s, %bb.r, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ @_Py_NoneStruct, %bb.r ], [ @_Py_NoneStruct, %bb.s ], [ @_Py_NoneStruct, %bb.t ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @test_py_is_macros(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyList_New(i64 noundef 0) #5 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.a, @_Py_NoneStruct
  br i1 %i.c, label %bb.c, label %2

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.33, i32 noundef 507, ptr noundef nonnull @__PRETTY_FUNCTION__.test_py_is_macros) #6
  unreachable

2:                                                ; preds = %bb.b
  %3 = icmp eq ptr @_Py_FalseStruct, @_Py_TrueStruct
  br i1 %3, label %4, label %bb.d

4:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.33, i32 noundef 507, ptr noundef nonnull @__PRETTY_FUNCTION__.test_py_is_macros) #6
  unreachable

bb.d:                                             ; preds = %2
  %i.d = icmp eq ptr %i.a, @_Py_TrueStruct
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.33, i32 noundef 507, ptr noundef nonnull @__PRETTY_FUNCTION__.test_py_is_macros) #6
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.e = icmp eq ptr %i.a, @_Py_FalseStruct
  br i1 %i.e, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.33, i32 noundef 507, ptr noundef nonnull @__PRETTY_FUNCTION__.test_py_is_macros) #6
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.f = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.a, align 8, !tbaa !13
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.i, %bb.h, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ @_Py_NoneStruct, %bb.h ], [ @_Py_NoneStruct, %bb.i ], [ @_Py_NoneStruct, %bb.j ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @test_py_is_funcs(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyList_New(i64 noundef 0) #5 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @Py_Is(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a) #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.33, i32 noundef 516, ptr noundef nonnull @__PRETTY_FUNCTION__.test_py_is_funcs) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @Py_Is(ptr noundef nonnull %i.a, ptr noundef nonnull @_Py_NoneStruct) #5
  %.not24 = icmp eq i32 %i.d, 0
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.33, i32 noundef 516, ptr noundef nonnull @__PRETTY_FUNCTION__.test_py_is_funcs) #6
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.e = tail call i32 @Py_Is(ptr noundef nonnull @_Py_NoneStruct, ptr noundef nonnull @_Py_NoneStruct) #5
  %.not25 = icmp eq i32 %i.e, 0
  br i1 %.not25, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.33, i32 noundef 516, ptr noundef nonnull @__PRETTY_FUNCTION__.test_py_is_funcs) #6
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.f = tail call i32 @Py_Is(ptr noundef nonnull %i.a, ptr noundef nonnull @_Py_NoneStruct) #5
  %.not26 = icmp eq i32 %i.f, 0
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.33, i32 noundef 516, ptr noundef nonnull @__PRETTY_FUNCTION__.test_py_is_funcs) #6
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.g = tail call i32 @Py_Is(ptr noundef nonnull @_Py_TrueStruct, ptr noundef nonnull @_Py_TrueStruct) #5
  %.not27 = icmp eq i32 %i.g, 0
  br i1 %.not27, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.33, i32 noundef 516, ptr noundef nonnull @__PRETTY_FUNCTION__.test_py_is_funcs) #6
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.h = tail call i32 @Py_Is(ptr noundef nonnull @_Py_FalseStruct, ptr noundef nonnull @_Py_TrueStruct) #5
  %.not28 = icmp eq i32 %i.h, 0
  br i1 %.not28, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.33, i32 noundef 516, ptr noundef nonnull @__PRETTY_FUNCTION__.test_py_is_funcs) #6
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.i = tail call i32 @Py_Is(ptr noundef nonnull %i.a, ptr noundef nonnull @_Py_TrueStruct) #5
  %.not29 = icmp eq i32 %i.i, 0
  br i1 %.not29, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.33, i32 noundef 516, ptr noundef nonnull @__PRETTY_FUNCTION__.test_py_is_funcs) #6
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.j = tail call i32 @Py_Is(ptr noundef nonnull @_Py_FalseStruct, ptr noundef nonnull @_Py_FalseStruct) #5
  %.not30 = icmp eq i32 %i.j, 0
  br i1 %.not30, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.33, i32 noundef 516, ptr noundef nonnull @__PRETTY_FUNCTION__.test_py_is_funcs) #6
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.k = tail call i32 @Py_Is(ptr noundef nonnull @_Py_TrueStruct, ptr noundef nonnull @_Py_FalseStruct) #5
  %.not31 = icmp eq i32 %i.k, 0
  br i1 %.not31, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.33, i32 noundef 516, ptr noundef nonnull @__PRETTY_FUNCTION__.test_py_is_funcs) #6
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.l = tail call i32 @Py_Is(ptr noundef nonnull %i.a, ptr noundef nonnull @_Py_FalseStruct) #5
  %.not32 = icmp eq i32 %i.l, 0
  br i1 %.not32, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @__assert_fail(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.33, i32 noundef 516, ptr noundef nonnull @__PRETTY_FUNCTION__.test_py_is_funcs) #6
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.m = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i, label %bb.w, label %Py_DECREF.exit

bb.w:                                             ; preds = %bb.v
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.a, align 8, !tbaa !13
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.x, label %Py_DECREF.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.x, %bb.w, %bb.v, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ @_Py_NoneStruct, %bb.v ], [ @_Py_NoneStruct, %bb.w ], [ @_Py_NoneStruct, %bb.x ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @clear_managed_dict(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call void @PyObject_ClearManagedDict(ptr noundef %1) #5
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal ptr @is_uniquely_referenced(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyUnstable_Object_IsUniquelyReferenced(ptr noundef %1) #5
  %i.b = sext i32 %i.a to i64
  %i.c = tail call ptr @PyBool_FromLong(i64 noundef %i.b) #5
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @pyobject_dump(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 0, ptr %i.b, align 4, !tbaa !9
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.e = icmp eq ptr %i.d, @_Py_NoneStruct
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ null, %bb.c ], [ %i.d, %bb.b ]
  %i.g = load i32, ptr %i.b, align 4, !tbaa !9
  %.not3 = icmp eq i32 %i.g, 0
  br i1 %.not3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call ptr @PyEval_SaveThread() #5
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !12
  call void @PyObject_Dump(ptr noundef %i.i) #5
  call void @PyEval_RestoreThread(ptr noundef %i.h) #5
end_hunk_0
