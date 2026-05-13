inline.NumInlined: 332
inline.NumDeleted: 59
begin_hunk_0_@array_array_fromfile:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.031
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @array_array_fromlist(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val35.i = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr i8, ptr %.val35.i, i64 168
  %.val36.i = load i64, ptr %i.b, align 8, !tbaa !26
  %i.c = and i64 %.val36.i, 33554432
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.109) #12
  br label %array_array_fromlist_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @PyList_Size(ptr noundef nonnull %1) #12 ; 5 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %array_array_fromlist_impl.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val34.i = load i64, ptr %i.g, align 8, !tbaa !44 ; 3 uses
  %i.h = add i64 %.val34.i, %i.e
  %i.i = tail call fastcc i32 @array_resize(ptr noundef %0, i64 noundef %i.h)
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %array_array_fromlist_impl.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.k = getelementptr i8, ptr %1, i64 24
  %i.l = getelementptr i8, ptr %0, i64 40
  %i.m = getelementptr i8, ptr %1, i64 16
  br label %bb.f

bb.e:                                             ; preds = %bb.h
  %i.n = add nuw nsw i64 %.02938.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.n, %i.e
  br i1 %exitcond.not.i, label %array_array_fromlist_impl.exit, label %bb.f, !llvm.loop !136

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %.02938.i = phi i64 [ 0, %.lr.ph.i ], [ %i.n, %bb.e ] ; 3 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %.02938.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !77
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78
  %.val.i = load i64, ptr %i.g, align 8, !tbaa !44
  %i.u = sub nsw i64 %.02938.i, %i.e
  %i.v = add i64 %i.u, %.val.i
  %i.w = tail call i32 %i.t(ptr noundef nonnull %0, i64 noundef %i.v, ptr noundef %i.q) #12, !inline_history !137
  %.not31.i = icmp eq i32 %i.w, 0
  br i1 %.not31.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = tail call fastcc i32 @array_resize(ptr noundef nonnull %0, i64 noundef %.val34.i) ; 0 uses
  br label %array_array_fromlist_impl.exit

bb.h:                                             ; preds = %bb.f
  %.val37.i = load i64, ptr %i.m, align 8, !tbaa !44
  %.not32.i = icmp eq i64 %i.e, %.val37.i
  br i1 %.not32.i, label %bb.e, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.y, ptr noundef nonnull @.str.110) #12
  %i.z = tail call fastcc i32 @array_resize(ptr noundef nonnull %0, i64 noundef %.val34.i) ; 0 uses
  br label %array_array_fromlist_impl.exit

array_array_fromlist_impl.exit:                   ; preds = %bb.e, %bb.b, %bb.c, %bb.d, %bb.g, %bb.i
  %.3.i = phi ptr [ null, %bb.b ], [ @_Py_NoneStruct, %bb.c ], [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.i ], [ @_Py_NoneStruct, %bb.e ]
  ret ptr %.3.i
}

; Function Attrs: nounwind uwtable
define internal ptr @array_array_fromunicode(ptr noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val6 = load i64, ptr %i.b, align 8, !tbaa !26
  %i.c = and i64 %.val6, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, ptr noundef nonnull %1) #12
  br label %array_array_fromunicode_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.f = load i8, ptr %i.e, align 8, !tbaa !39    ; 2 uses
  %i.g = and i8 %i.f, -3
  %or.cond.not.i = icmp eq i8 %i.g, 117
  br i1 %or.cond.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.113) #12
  br label %array_array_fromunicode_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.i = icmp eq i8 %i.f, 117
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i64 @PyUnicode_AsWideChar(ptr noundef nonnull %1, ptr noundef null, i64 noundef 0) #12 ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %array_array_fromunicode_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.l = add nsw i64 %i.j, -1                     ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 16
  %.val40.i = load i64, ptr %i.m, align 8, !tbaa !44 ; 2 uses
  %i.n = add i64 %.val40.i, %i.l
  %i.o = tail call fastcc i32 @array_resize(ptr noundef nonnull %0, i64 noundef %i.n)
  %.not.i = icmp eq i32 %i.o, -1
  br i1 %.not.i, label %array_array_fromunicode_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.r = getelementptr [4 x i8], ptr %i.q, i64 %.val40.i
  %i.s = tail call i64 @PyUnicode_AsWideChar(ptr noundef nonnull %1, ptr noundef %i.r, i64 noundef %i.l) #12 ; 0 uses
  br label %array_array_fromunicode_impl.exit

bb.i:                                             ; preds = %bb.e
  %i.t = tail call i64 @PyUnicode_GetLength(ptr noundef nonnull %1) #12 ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.u, align 8, !tbaa !44 ; 2 uses
  %i.v = add i64 %.val.i, %i.t                    ; 2 uses
  %i.w = icmp ugt i64 %i.v, 2305843009213693951
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = tail call ptr @PyErr_NoMemory() #12
  br label %array_array_fromunicode_impl.exit

bb.k:                                             ; preds = %bb.i
  %i.y = tail call fastcc i32 @array_resize(ptr noundef nonnull %0, i64 noundef %i.v)
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %array_array_fromunicode_impl.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ac = getelementptr [4 x i8], ptr %i.ab, i64 %.val.i
  %i.ad = tail call ptr @PyUnicode_AsUCS4(ptr noundef nonnull %1, ptr noundef %i.ac, i64 noundef %i.t, i32 noundef 0) #12 ; 0 uses
  br label %array_array_fromunicode_impl.exit

array_array_fromunicode_impl.exit:                ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.g ], [ @_Py_NoneStruct, %bb.h ], [ @_Py_NoneStruct, %bb.l ], [ @_Py_NoneStruct, %bb.f ], [ null, %bb.k ], [ %i.x, %bb.j ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @array_array_index(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !65
  %i.c = add i64 %2, -1
  %or.cond = icmp ult i64 %i.c, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.88, i64 noundef %2, i64 noundef 1, i64 noundef 3) #12
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %array_array_index_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !24
  %i.f = icmp slt i64 %2, 2
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = call i32 @_PyEval_SliceIndexNotNone(ptr noundef %i.h, ptr noundef nonnull %i.a) #12
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %array_array_index_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %2, 2
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = call i32 @_PyEval_SliceIndexNotNone(ptr noundef %i.l, ptr noundef nonnull %i.b) #12
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %array_array_index_impl.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load i64, ptr %i.b, align 8, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.c
  %3 = phi i64 [ %.pre, %._crit_edge ], [ 9223372036854775807, %bb.e ], [ 9223372036854775807, %bb.c ] ; 3 uses
  %i.n = load i64, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %0, i64 16
  %.val36.i = load i64, ptr %i.p, align 8, !tbaa !44
  %i.q = add i64 %.val36.i, %i.n
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.q, i64 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.024.i = phi i64 [ %spec.store.select.i, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.r = icmp slt i64 %3, 0
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr i8, ptr %0, i64 16
  %.val35.i = load i64, ptr %i.s, align 8, !tbaa !44
  %i.t = add i64 %.val35.i, %3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.028.i = phi i64 [ %i.t, %bb.j ], [ %3, %bb.i ] ; 2 uses
  %i.u = icmp slt i64 %.024.i, %.028.i
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.v = getelementptr i8, ptr %0, i64 16
  %i.w = getelementptr i8, ptr %0, i64 40
  br label %bb.l

bb.l:                                             ; preds = %bb.s, %.lr.ph.i
  %.02743.i = phi i64 [ %.024.i, %.lr.ph.i ], [ %i.aj, %bb.s ] ; 4 uses
  %.val.i = load i64, ptr %i.v, align 8, !tbaa !44
  %i.x = icmp slt i64 %.02743.i, %.val.i
  br i1 %i.x, label %bb.m, label %._crit_edge.i

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !77
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !99
  %i.ab = call ptr %i.aa(ptr noundef nonnull %0, i64 noundef %.02743.i) #12, !inline_history !138 ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %array_array_index_impl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.ab, ptr noundef %i.e, i32 noundef 2) #12 ; 2 uses
  %i.ae = load i32, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ae, -1
  br i1 %.not.i.i, label %bb.o, label %Py_DECREF.exit.i

bb.o:                                             ; preds = %bb.n
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.ab, align 8, !tbaa !23
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.p, label %Py_DECREF.exit.i

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.ab) #12
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.p, %bb.o, %bb.n
  %i.ah = icmp sgt i32 %i.ad, 0
  br i1 %i.ah, label %bb.q, label %bb.r

bb.q:                                             ; preds = %Py_DECREF.exit.i
  %i.ai = call ptr @PyLong_FromSsize_t(i64 noundef %.02743.i) #12
  br label %array_array_index_impl.exit

bb.r:                                             ; preds = %Py_DECREF.exit.i
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.s, label %array_array_index_impl.exit

bb.s:                                             ; preds = %bb.r
  %i.aj = add nuw nsw i64 %.02743.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aj, %.028.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.l, !llvm.loop !139

._crit_edge.i:                                    ; preds = %bb.s, %bb.l, %bb.k
  %i.ak = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.ak, ptr noundef nonnull @.str.114) #12
  br label %array_array_index_impl.exit

array_array_index_impl.exit:                      ; preds = %bb.r, %bb.m, %._crit_edge.i, %bb.q, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.d ], [ null, %._crit_edge.i ], [ %i.ai, %bb.q ], [ null, %bb.m ], [ null, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @array_array_insert(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.89, i64 noundef %2, i64 noundef 2, i64 noundef 2) #12
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %array_array_insert_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !24
  %i.c = tail call ptr @_PyNumber_Index(ptr noundef %i.b) #12 ; 5 uses
  %.not21 = icmp eq ptr %i.c, null
  br i1 %.not21, label %Py_DECREF.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.c, align 8, !tbaa !23
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #12
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.f, %bb.e, %bb.d
  %i.h = icmp eq i64 %i.d, -1
  br i1 %i.h, label %Py_DECREF.exit.thread, label %bb.g

Py_DECREF.exit.thread:                            ; preds = %bb.c, %Py_DECREF.exit
  %i.i = tail call ptr @PyErr_Occurred() #12
  %.not22 = icmp eq ptr %i.i, null
  br i1 %.not22, label %bb.g, label %array_array_insert_impl.exit

bb.g:                                             ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit
  %.01725.ph = phi i64 [ %i.d, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ] ; 3 uses
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 16
  %.val.i.i.i = load i64, ptr %i.l, align 8, !tbaa !44 ; 5 uses
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.56, i32 noundef 764) #12
  br label %array_array_insert_impl.exit

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !78
  %i.r = tail call i32 %i.q(ptr noundef nonnull %0, i64 noundef -1, ptr noundef nonnull %i.k) #12, !inline_history !140
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %array_array_insert_impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = add i64 %.val.i.i.i, 1
  %i.u = tail call fastcc i32 @array_resize(ptr noundef nonnull %0, i64 noundef %i.t)
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %array_array_insert_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = icmp slt i64 %.01725.ph, 0
  %i.x = add i64 %.val.i.i.i, %.01725.ph
  %spec.store.select.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.x, i64 0)
  %.030.i.i.i = select i1 %i.w, i64 %spec.store.select.i.i.i, i64 %.01725.ph ; 2 uses
  %.1.i.i.i = tail call i64 @llvm.smin.i64(i64 %.030.i.i.i, i64 %.val.i.i.i) ; 4 uses
  %.not.not.i.i.i = icmp sgt i64 %.val.i.i.i, %.030.i.i.i
  br i1 %.not.not.i.i.i, label %bb.l, label %ins1.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !54   ; 2 uses
  %i.aa = add i64 %.1.i.i.i, 1
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !77
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !82
  %i.ae = sext i32 %i.ad to i64                   ; 3 uses
  %i.af = mul i64 %i.aa, %i.ae
  %i.ag = getelementptr i8, ptr %i.z, i64 %i.af
  %i.ah = mul i64 %.1.i.i.i, %i.ae
  %i.ai = getelementptr i8, ptr %i.z, i64 %i.ah
  %i.aj = sub i64 %.val.i.i.i, %.1.i.i.i
  %i.ak = mul i64 %i.aj, %i.ae
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.ai, i64 %i.ak, i1 false)
  br label %ins1.exit.i.i

ins1.exit.i.i:                                    ; preds = %bb.l, %bb.k
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !77
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !78
  %i.ao = tail call i32 %i.an(ptr noundef nonnull %0, i64 noundef %.1.i.i.i, ptr noundef nonnull %i.k) #12, !inline_history !140
  %.fr.i.i = freeze i32 %i.ao
  %.not.i.i = icmp eq i32 %.fr.i.i, 0
  %spec.select.i.i = select i1 %.not.i.i, ptr @_Py_NoneStruct, ptr null
  br label %array_array_insert_impl.exit

array_array_insert_impl.exit:                     ; preds = %ins1.exit.i.i, %bb.j, %bb.i, %bb.h, %Py_DECREF.exit.thread, %bb.b
  %.018 = phi ptr [ null, %Py_DECREF.exit.thread ], [ null, %bb.b ], [ null, %bb.j ], [ %spec.select.i.i, %ins1.exit.i.i ], [ null, %bb.h ], [ null, %bb.i ]
  ret ptr %.018
}

; Function Attrs: nounwind uwtable
define internal ptr @array_array_pop(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.90, i64 noundef %2, i64 noundef 0, i64 noundef 1) #12
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %array_array_pop_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %.thread29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !24
  %i.d = tail call ptr @_PyNumber_Index(ptr noundef %i.c) #12 ; 5 uses
  %.not20 = icmp eq ptr %i.d, null
  br i1 %.not20, label %Py_DECREF.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_0
