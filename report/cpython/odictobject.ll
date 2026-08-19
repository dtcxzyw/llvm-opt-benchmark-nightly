inline.NumInlined: 122
inline.NumDeleted: 53
begin_hunk_0_@odict_repr:bb.a

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @Py_ReprEnter(ptr noundef nonnull %0) #6 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.6) #6
  br label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.i = tail call ptr @PyDict_Copy(ptr noundef nonnull %0) #6 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Py_DECREF.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.l = tail call ptr @_PyType_Name(ptr noundef %.val) #6
  %i.m = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.7, ptr noundef %i.l, ptr noundef nonnull %i.i) #6 ; 3 uses
  %i.n = load i32, ptr %i.i, align 8, !tbaa !24   ; 2 uses
  %.not.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.i, align 8, !tbaa !24
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi ptr [ null, %bb.f ], [ %i.m, %bb.g ], [ %i.m, %bb.h ], [ %i.m, %bb.i ]
  tail call void @Py_ReprLeave(ptr noundef nonnull %0) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.d, %Py_DECREF.exit, %bb.b
  %.013 = phi ptr [ %i.e, %bb.b ], [ %.0, %Py_DECREF.exit ], [ %i.h, %bb.e ], [ null, %bb.d ]
  ret ptr %.013
}

; Function Attrs: nounwind uwtable
define internal i32 @odict_traverse(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #6 ; 2 uses
  %.not28 = icmp eq i32 %i.c, 0
  br i1 %.not28, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 48
  %.02232 = load ptr, ptr %i.d, align 8, !tbaa !44 ; 2 uses
  %.not2933 = icmp eq ptr %.02232, null
  br i1 %.not2933, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.02234 = phi ptr [ %.022, %bb.e ], [ %.02232, %bb.c ] ; 2 uses
  %i.e = load ptr, ptr %.02234, align 8, !tbaa !30 ; 2 uses
  %.not30 = icmp eq ptr %i.e, null
  br i1 %.not30, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #6 ; 2 uses
  %.not31 = icmp eq i32 %i.f, 0
  br i1 %.not31, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.g = getelementptr i8, ptr %.02234, i64 16
  %.022 = load ptr, ptr %i.g, align 8, !tbaa !44  ; 2 uses
  %.not29 = icmp eq ptr %.022, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDict_Type, i64 184), align 8, !tbaa !46
  %i.i = tail call i32 %i.h(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %._crit_edge
  %.5 = phi i32 [ %i.c, %bb.b ], [ %i.i, %._crit_edge ], [ %i.f, %bb.d ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @odict_tp_clear(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !47
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !24
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @PyDict_Clear(ptr noundef nonnull %0) #6
  %i.f = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  tail call void @PyMem_Free(ptr noundef %i.g) #6
  %i.h = getelementptr i8, ptr %0, i64 48         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %.not13.i = icmp eq ptr %i.i, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br i1 %.not13.i, label %_odict_clear_nodes.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %Py_DECREF.exit, %Py_DECREF.exit.i
  %.014.i = phi ptr [ %i.k, %Py_DECREF.exit.i ], [ %i.i, %Py_DECREF.exit ] ; 3 uses
  %i.j = getelementptr i8, ptr %.014.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %i.l = load ptr, ptr %.014.i, align 8, !tbaa !30 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i.i, label %bb.e, label %Py_DECREF.exit.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !24
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %Py_DECREF.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #6
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.f, %bb.e, %.lr.ph.i
  tail call void @PyMem_Free(ptr noundef nonnull %.014.i) #6
  %.not.i8 = icmp eq ptr %i.k, null
  br i1 %.not.i8, label %_odict_clear_nodes.exit, label %.lr.ph.i, !llvm.loop !31

_odict_clear_nodes.exit:                          ; preds = %Py_DECREF.exit.i, %Py_DECREF.exit
  %i.p = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !33
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !33
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @odict_richcompare(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val34.i.a = load ptr, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  %.not.i35.i = icmp eq ptr %.val34.i.a, @PyODict_Type
  br i1 %.not.i35.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val34.i.a, ptr noundef nonnull @PyODict_Type) #6, !inline_history !48
  %.not40.i = icmp eq i32 %i.b, 0
  br i1 %.not40.i, label %odict_richcompare_lock_held.exit, label %PyObject_TypeCheck.exit.thread.i

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit.i, %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.d = getelementptr i8, ptr %.val.i, i64 168
  %.val32.i = load i64, ptr %i.d, align 8, !tbaa !49
  %i.e = and i64 %.val32.i, 536870912
  %.not30.i = icmp eq i64 %i.e, 0
  br i1 %.not30.i, label %odict_richcompare_lock_held.exit, label %bb.b

bb.b:                                             ; preds = %PyObject_TypeCheck.exit.thread.i
  %i.f = icmp eq i32 %2, 2                        ; 2 uses
  %i.g = icmp eq i32 %2, 3
  %i.h = and i32 %2, -2
  %or.cond.i = icmp eq i32 %i.h, 2
  br i1 %or.cond.i, label %bb.c, label %odict_richcompare_lock_held.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDict_Type, i64 200), align 8, !tbaa !50
  %i.j = tail call ptr %i.i(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) #6, !inline_history !51 ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %odict_richcompare_lock_held.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val33.i = load ptr, ptr %i.c, align 8, !tbaa !43 ; 2 uses
  %.not.i36.i = icmp eq ptr %.val33.i, @PyODict_Type
  br i1 %.not.i36.i, label %bb.e, label %PyObject_TypeCheck.exit37.i

PyObject_TypeCheck.exit37.i:                      ; preds = %bb.d
  %i.l = tail call i32 @PyType_IsSubtype(ptr noundef %.val33.i, ptr noundef nonnull @PyODict_Type) #6, !inline_history !48
  %.not.i = icmp eq i32 %i.l, 0
  br label %bb.e

bb.e:                                             ; preds = %PyObject_TypeCheck.exit37.i, %bb.d
  %.not31.i = phi i1 [ false, %bb.d ], [ %.not.i, %PyObject_TypeCheck.exit37.i ]
  %3 = icmp eq ptr %i.j, @_Py_FalseStruct
  %or.cond3.i = and i1 %i.f, %3
  %or.cond32.i = or i1 %or.cond3.i, %.not31.i
  %i.m = icmp eq ptr %i.j, @_Py_TrueStruct
  %or.cond5.i = and i1 %i.g, %i.m
  %or.cond33.i = or i1 %or.cond5.i, %or.cond32.i
  br i1 %or.cond33.i, label %odict_richcompare_lock_held.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i.i, label %bb.g, label %Py_DECREF.exit.i

bb.g:                                             ; preds = %bb.f
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.j, align 8, !tbaa !24
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %Py_DECREF.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #6, !inline_history !51
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.h, %bb.g, %bb.f
  %i.q = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !33
  %i.s = getelementptr i8, ptr %1, i64 88         ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !33
  %i.u = getelementptr i8, ptr %0, i64 48
  %i.v = getelementptr i8, ptr %1, i64 48
  %.02743.i = load ptr, ptr %i.v, align 8, !tbaa !44 ; 2 uses
  %.02844.i = load ptr, ptr %i.u, align 8, !tbaa !44 ; 2 uses
  %i.w = icmp eq ptr %.02844.i, null              ; 2 uses
  %i.x = icmp eq ptr %.02743.i, null              ; 2 uses
  %or.cond45.i = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond45.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %Py_DECREF.exit.i, %bb.t
  %i.y = phi i1 [ %i.ax, %bb.t ], [ %i.x, %Py_DECREF.exit.i ]
  %i.z = phi i1 [ %i.aw, %bb.t ], [ %i.w, %Py_DECREF.exit.i ]
  %.02847.i = phi ptr [ %.028.i, %bb.t ], [ %.02844.i, %Py_DECREF.exit.i ] ; 2 uses
  %.02746.i = phi ptr [ %.027.i, %bb.t ], [ %.02743.i, %Py_DECREF.exit.i ] ; 2 uses
  %or.cond3.i3 = select i1 %i.z, i1 true, i1 %i.y
  br i1 %or.cond3.i3, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.aa = load ptr, ptr %.02847.i, align 8, !tbaa !30 ; 6 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !24 ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, -1073741825
  br i1 %i.ac, label %_Py_NewRef.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = add nuw i32 %i.ab, 1
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !24
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.j, %bb.i
  %i.ae = load ptr, ptr %.02746.i, align 8, !tbaa !30 ; 6 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %i.ag = icmp ugt i32 %i.af, -1073741825
  br i1 %i.ag, label %_Py_NewRef.exit38.i, label %bb.k

bb.k:                                             ; preds = %_Py_NewRef.exit.i
  %i.ah = add nuw i32 %i.af, 1
  store i32 %i.ah, ptr %i.ae, align 8, !tbaa !24
  br label %_Py_NewRef.exit38.i

_Py_NewRef.exit38.i:                              ; preds = %bb.k, %_Py_NewRef.exit.i
  %i.ai = tail call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ae, i32 noundef 2) #6, !inline_history !51 ; 2 uses
  %i.aj = load i32, ptr %i.aa, align 8, !tbaa !24 ; 2 uses
  %.not.i35.i4 = icmp sgt i32 %i.aj, -1
  br i1 %.not.i35.i4, label %bb.l, label %Py_DECREF.exit36.i

bb.l:                                             ; preds = %_Py_NewRef.exit38.i
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.aa, align 8, !tbaa !24
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.m, label %Py_DECREF.exit36.i

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aa) #6, !inline_history !51
  br label %Py_DECREF.exit36.i

Py_DECREF.exit36.i:                               ; preds = %bb.m, %bb.l, %_Py_NewRef.exit38.i
  %i.am = load i32, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %.not.i.i5 = icmp sgt i32 %i.am, -1
  br i1 %.not.i.i5, label %bb.n, label %Py_DECREF.exit.i6

bb.n:                                             ; preds = %Py_DECREF.exit36.i
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.ae, align 8, !tbaa !24
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.o, label %Py_DECREF.exit.i6

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #6, !inline_history !51
  br label %Py_DECREF.exit.i6

Py_DECREF.exit.i6:                                ; preds = %bb.o, %bb.n, %Py_DECREF.exit36.i
  %i.ap = icmp slt i32 %i.ai, 0
  br i1 %i.ap, label %odict_richcompare_lock_held.exit, label %bb.p

bb.p:                                             ; preds = %Py_DECREF.exit.i6
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !33
  %.not.i7 = icmp eq i64 %i.aq, %i.r
  br i1 %.not.i7, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ar = load i64, ptr %i.s, align 8, !tbaa !33
  %.not34.i = icmp eq i64 %i.ar, %i.t
  br i1 %.not34.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.as = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !47
  tail call void @PyErr_SetString(ptr noundef %i.as, ptr noundef nonnull @.str.11) #6, !inline_history !51
  br label %odict_richcompare_lock_held.exit

bb.s:                                             ; preds = %bb.q
  %i.at = icmp eq i32 %i.ai, 0
  br i1 %i.at, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr i8, ptr %.02847.i, i64 16
  %i.av = getelementptr i8, ptr %.02746.i, i64 16
  %.027.i = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %.028.i = load ptr, ptr %i.au, align 8, !tbaa !44 ; 2 uses
  %i.aw = icmp eq ptr %.028.i, null               ; 2 uses
  %i.ax = icmp eq ptr %.027.i, null               ; 2 uses
  %or.cond.i8 = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond.i8, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.t, %bb.s, %.lr.ph.i, %Py_DECREF.exit.i
  %.2.i.ph = phi i32 [ 1, %Py_DECREF.exit.i ], [ 0, %bb.s ], [ 1, %bb.t ], [ 0, %.lr.ph.i ]
  %i.ay = zext i1 %i.f to i32
  %i.az = icmp eq i32 %.2.i.ph, %i.ay
  %i.ba = select i1 %i.az, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !24 ; 2 uses
  %i.bc = icmp ugt i32 %i.bb, -1073741825
  br i1 %i.bc, label %odict_richcompare_lock_held.exit, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.bd = add nuw i32 %i.bb, 1
  store i32 %i.bd, ptr %i.ba, align 8, !tbaa !24
  br label %odict_richcompare_lock_held.exit

odict_richcompare_lock_held.exit:                 ; preds = %Py_DECREF.exit.i6, %PyObject_TypeCheck.exit.i, %PyObject_TypeCheck.exit.thread.i, %bb.b, %bb.c, %bb.e, %bb.r, %.loopexit, %bb.u
  %.1.i = phi ptr [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit.i ], [ null, %bb.r ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit.thread.i ], [ null, %bb.c ], [ %i.j, %bb.e ], [ @_Py_NotImplementedStruct, %bb.b ], [ %i.ba, %bb.u ], [ %i.ba, %.loopexit ], [ null, %Py_DECREF.exit.i6 ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @odict_iter(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc ptr @odictiter_new(ptr noundef %0, i32 noundef 2)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @odict_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @PyObject_Size(ptr noundef %1) #6 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i64 %i.a, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !47
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.35, i64 noundef %i.a) #6 ; 0 uses
  br label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call ptr @mutablemapping_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %.not.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.f, align 8, !tbaa !24
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a, %bb.c
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.a ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ]
  ret i32 %.0
}

declare ptr @PyType_GenericAlloc(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @PyODict_New() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDict_Type, i64 312), align 8, !tbaa !52
  %i.b = tail call ptr %i.a(ptr noundef nonnull @PyODict_Type, ptr noundef null, ptr noundef null) #6
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PyODict_SetItem(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @PyObject_Hash(ptr noundef %1) #6 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %PyODict_SetItem_LockHeld.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @_PyODict_SetItem_KnownHash_LockHeld(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.a)
  br label %PyODict_SetItem_LockHeld.exit

PyODict_SetItem_LockHeld.exit:                    ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden i32 @PyODict_DelItem_LockHeld(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @PyObject_Hash(ptr noundef %1) #6 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @_odict_clear_node(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %i.a)
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @_PyDict_DelItem_KnownHash_LockHeld(ptr noundef %0, ptr noundef %1, i64 noundef %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.e, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ]
  ret i32 %.0
}

declare i64 @PyObject_Hash(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_odict_clear_node(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i64 @_odict_get_index(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3) ; 3 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @PyErr_Occurred() #6
  %.not = icmp ne ptr %i.f, null
  %i.g = sext i1 %.not to i32
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.h = icmp eq ptr %1, null
  %i.i = getelementptr i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26   ; 2 uses
  br i1 %i.h, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.d
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  %.01520 = phi ptr [ %i.l, %bb.e ], [ %1, %bb.d ] ; 11 uses
  %i.n = getelementptr [8 x i8], ptr %i.j, i64 %i.d
  store ptr null, ptr %i.n, align 8, !tbaa !44
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.p = icmp eq ptr %i.o, %.01520
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.q = getelementptr i8, ptr %.01520, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  store ptr %i.r, ptr %i.a, align 8, !tbaa !27
  br label %bb.i

bb.g:                                             ; preds = %.thread
  %i.s = getelementptr i8, ptr %.01520, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53   ; 2 uses
  %.not.i18 = icmp eq ptr %i.t, null
  br i1 %.not.i18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %.01520, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !28
  %i.w = getelementptr i8, ptr %i.t, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.x = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.z = icmp eq ptr %i.y, %.01520
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %.01520, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !53
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !54
  br label %_odict_remove_node.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %.01520, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !28 ; 2 uses
  %.not19.i = icmp eq ptr %i.ad, null
  br i1 %.not19.i, label %_odict_remove_node.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr i8, ptr %.01520, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !53
  %i.ag = getelementptr i8, ptr %i.ad, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !53
  br label %_odict_remove_node.exit

_odict_remove_node.exit:                          ; preds = %bb.j, %bb.k, %bb.l
  %i.ah = getelementptr i8, ptr %.01520, i64 16
  %i.ai = getelementptr i8, ptr %0, i64 88        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !33
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !33
  %i.al = load ptr, ptr %.01520, align 8, !tbaa !30 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.m, label %Py_DECREF.exit
end_hunk_0
