inline.NumInlined: 188
inline.NumDeleted: 69
begin_hunk_0_@memoryview__from_flags:bb.a
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.j = call i32 @PyLong_AsInt(ptr noundef %i.i) #15 ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %.thread
  %i.l = call ptr @PyErr_Occurred() #15
  %.not24 = icmp eq ptr %i.l, null
  br i1 %.not24, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %.thread
  %.sink = phi i32 [ %i.j, %.thread ], [ -1, %bb.c ]
  %i.m = call fastcc ptr @PyMemoryView_FromObjectAndFlags(ptr noundef %i.g, i32 noundef %.sink)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ %i.m, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @memoryview_count(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = tail call ptr @PyObject_GetIter(ptr noundef %0) #15 ; 12 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %memoryview_count_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !38
  %i.d = call i32 @PyIter_NextItem(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #15
  %.not38.i = icmp eq i32 %i.d, 0
  br i1 %.not38.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.backedge.i
  %.01439.i = phi i64 [ %.014.be.i, %.backedge.i ], [ 0, %bb.b ] ; 3 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !38   ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = load i32, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %.not.i28.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i28.i, label %bb.d, label %Py_DECREF.exit29.i

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.b, align 8, !tbaa !36
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %Py_DECREF.exit29.i

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #15
  br label %Py_DECREF.exit29.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.j = icmp eq ptr %i.e, %1
  br i1 %i.j, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.k = load i32, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %.not.i26.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i26.i, label %bb.h, label %Py_DECREF.exit27.i

bb.h:                                             ; preds = %bb.g
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.e, align 8, !tbaa !36
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.i, label %Py_DECREF.exit27.i

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #15
  br label %Py_DECREF.exit27.i

Py_DECREF.exit27.i:                               ; preds = %bb.i, %bb.h, %bb.g
  %i.n = add i64 %.01439.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.n, %bb.m, %Py_DECREF.exit27.i
  %.014.be.i = phi i64 [ %i.n, %Py_DECREF.exit27.i ], [ %.01439.i, %bb.n ], [ %i.v, %bb.m ] ; 2 uses
  %i.o = call i32 @PyIter_NextItem(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #15
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !136

bb.j:                                             ; preds = %bb.f
  %i.p = call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.e, ptr noundef %1, i32 noundef 2) #15 ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %.not.i24.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i24.i, label %bb.k, label %Py_DECREF.exit25.i

bb.k:                                             ; preds = %bb.j
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !36
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.l, label %Py_DECREF.exit25.i

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.q) #15
  br label %Py_DECREF.exit25.i

Py_DECREF.exit25.i:                               ; preds = %bb.l, %bb.k, %bb.j
  %i.u = icmp sgt i32 %i.p, 0
  br i1 %i.u, label %bb.m, label %bb.n

bb.m:                                             ; preds = %Py_DECREF.exit25.i
  %i.v = add i64 %.01439.i, 1
  br label %.backedge.i

bb.n:                                             ; preds = %Py_DECREF.exit25.i
  %i.w = icmp slt i32 %i.p, 0
  br i1 %i.w, label %bb.o, label %.backedge.i

bb.o:                                             ; preds = %bb.n
  %i.x = load i32, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %.not.i22.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i22.i, label %bb.p, label %Py_DECREF.exit29.i

bb.p:                                             ; preds = %bb.o
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.b, align 8, !tbaa !36
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.q, label %Py_DECREF.exit29.i

bb.q:                                             ; preds = %bb.p
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #15
  br label %Py_DECREF.exit29.i

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.b
  %.014.lcssa.i = phi i64 [ 0, %bb.b ], [ %.014.be.i, %.backedge.i ]
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.aa, -1
  br i1 %.not.i.i, label %bb.r, label %Py_DECREF.exit.i

bb.r:                                             ; preds = %._crit_edge.i
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %i.b, align 8, !tbaa !36
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.s, label %Py_DECREF.exit.i

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #15
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.s, %bb.r, %._crit_edge.i
  %i.ad = call ptr @PyLong_FromSsize_t(i64 noundef %.014.lcssa.i) #15
  br label %Py_DECREF.exit29.i

Py_DECREF.exit29.i:                               ; preds = %Py_DECREF.exit.i, %bb.q, %bb.p, %bb.o, %bb.e, %bb.d, %bb.c
  %.2.i = phi ptr [ %i.ad, %Py_DECREF.exit.i ], [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.o ], [ null, %bb.p ], [ null, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %memoryview_count_impl.exit

memoryview_count_impl.exit:                       ; preds = %bb.a, %Py_DECREF.exit29.i
  %.3.i = phi ptr [ %.2.i, %Py_DECREF.exit29.i ], [ null, %bb.a ]
  ret ptr %.3.i
}

; Function Attrs: nounwind uwtable
define internal ptr @memoryview_index(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 0, ptr %i.a, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !52
  %i.c = add i64 %2, -1
  %or.cond = icmp ult i64 %i.c, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.52, i64 noundef %2, i64 noundef 1, i64 noundef 3) #15
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %memoryview_index_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.f = icmp slt i64 %2, 2
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = call i32 @_PyEval_SliceIndexNotNone(ptr noundef %i.h, ptr noundef nonnull %i.a) #15
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %memoryview_index_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %2, 2
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.m = call i32 @_PyEval_SliceIndexNotNone(ptr noundef %i.l, ptr noundef nonnull %i.b) #15
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %memoryview_index_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %3 = load i64, ptr %i.a, align 8, !tbaa !52     ; 3 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !44
  %i.q = and i32 %i.p, 1
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !11
  %i.v = and i32 %i.u, 1
  %.not59.i = icmp eq i32 %i.v, 0
  br i1 %.not59.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !38
  call void @PyErr_SetString(ptr noundef %i.w, ptr noundef nonnull @.str.8) #15
  br label %memoryview_index_impl.exit

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %0, i64 92
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37
  switch i32 %i.y, label %bb.w [
    i32 0, label %bb.k
    i32 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.125) #15
  br label %memoryview_index_impl.exit

bb.l:                                             ; preds = %bb.j
  %i.aa = getelementptr i8, ptr %0, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !64
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !52 ; 3 uses
  %i.ad = icmp slt i64 %3, 0
  %i.ae = add i64 %i.ac, %3
  %i.af = call i64 @llvm.smax.i64(i64 %i.ae, i64 0)
  %.045.i = select i1 %i.ad, i64 %i.af, i64 %3    ; 2 uses
  %i.ag = icmp slt i64 %i.n, 0
  %i.ah = add i64 %i.ac, %i.n
  %i.ai = call i64 @llvm.smax.i64(i64 %i.ah, i64 0)
  %.047.i = select i1 %i.ag, i64 %i.ai, i64 %i.n
  %i.aj = call i64 @llvm.smin.i64(i64 %.047.i, i64 %i.ac) ; 2 uses
  %.not6075.i = icmp slt i64 %.045.i, %i.aj
  br i1 %.not6075.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.v
  %.04676.i = phi i64 [ %i.ax, %bb.v ], [ %.045.i, %bb.l ] ; 4 uses
  %i.ak = call ptr @memory_item(ptr noundef readonly %0, i64 noundef %.04676.i) ; 9 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %memoryview_index_impl.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.am = icmp eq ptr %i.ak, %i.e
  br i1 %i.am, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !36 ; 2 uses
  %.not.i61.i = icmp sgt i32 %i.an, -1
  br i1 %.not.i61.i, label %bb.o, label %Py_DECREF.exit62.i

bb.o:                                             ; preds = %bb.n
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.ak, align 8, !tbaa !36
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.p, label %Py_DECREF.exit62.i

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.ak) #15
  br label %Py_DECREF.exit62.i

Py_DECREF.exit62.i:                               ; preds = %bb.p, %bb.o, %bb.n
  %i.aq = call ptr @PyLong_FromSsize_t(i64 noundef %.04676.i) #15
  br label %memoryview_index_impl.exit

bb.q:                                             ; preds = %bb.m
  %i.ar = call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.ak, ptr noundef %i.e, i32 noundef 2) #15 ; 2 uses
  %i.as = load i32, ptr %i.ak, align 8, !tbaa !36 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.as, -1
  br i1 %.not.i.i, label %bb.r, label %Py_DECREF.exit.i

bb.r:                                             ; preds = %bb.q
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.ak, align 8, !tbaa !36
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.s, label %Py_DECREF.exit.i

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.ak) #15
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.s, %bb.r, %bb.q
  %i.av = icmp sgt i32 %i.ar, 0
  br i1 %i.av, label %bb.t, label %bb.u

bb.t:                                             ; preds = %Py_DECREF.exit.i
  %i.aw = call ptr @PyLong_FromSsize_t(i64 noundef %.04676.i) #15
  br label %memoryview_index_impl.exit

bb.u:                                             ; preds = %Py_DECREF.exit.i
  %.not69.i = icmp eq i32 %i.ar, 0
  br i1 %.not69.i, label %bb.v, label %memoryview_index_impl.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = add i64 %.04676.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ax, %i.aj
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !137

._crit_edge.i:                                    ; preds = %bb.v, %bb.l
  %i.ay = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !38
  call void @PyErr_SetString(ptr noundef %i.ay, ptr noundef nonnull @.str.126) #15
  br label %memoryview_index_impl.exit

bb.w:                                             ; preds = %bb.j
  %i.az = load ptr, ptr @PyExc_NotImplementedError, align 8, !tbaa !38
  call void @PyErr_SetString(ptr noundef %i.az, ptr noundef nonnull @.str.127) #15
  br label %memoryview_index_impl.exit

memoryview_index_impl.exit:                       ; preds = %bb.u, %.lr.ph.i, %bb.w, %._crit_edge.i, %bb.t, %Py_DECREF.exit62.i, %bb.k, %bb.i, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.w ], [ null, %._crit_edge.i ], [ %i.aq, %Py_DECREF.exit62.i ], [ %i.aw, %bb.t ], [ null, %.lr.ph.i ], [ null, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @memory_enter(ptr noundef captures(ret: address, provenance) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !11
  %i.h = and i32 %i.g, 1
  %.not4 = icmp eq i32 %i.h, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.8) #15
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.k = icmp ugt i32 %i.j, -1073741825
  br i1 %i.k, label %_Py_NewRef.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw i32 %i.j, 1
  store i32 %i.l, ptr %0, align 8, !tbaa !36
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %0, %bb.d ], [ %0, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @memory_exit(ptr noundef captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call fastcc ptr @memoryview_release_impl(ptr noundef %0)
  ret ptr %i.a
}

declare ptr @Py_GenericAlias(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @memoryview_release_impl(ptr noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load i64, ptr %i.a, align 8, !tbaa !45  ; 4 uses
  %i.b = icmp eq i64 %.val, 0
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = and i32 %i.d, 1
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %_memory_release.exit

bb.c:                                             ; preds = %bb.b
  %i.f = or disjoint i32 %i.d, 1
  store i32 %i.f, ptr %i.c, align 8, !tbaa !44
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 5 uses
  %i.i = getelementptr i8, ptr %i.h, i64 24       ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !33
  %i.k = add i64 %i.j, -1                         ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !33
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_memory_release.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.h, i64 16       ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !11   ; 2 uses
  %i.o = and i32 %i.n, 1
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.e, label %_memory_release.exit

bb.e:                                             ; preds = %bb.d
  %i.p = or disjoint i32 %i.n, 1
  store i32 %i.p, ptr %i.m, align 8, !tbaa !11
  %i.q = getelementptr i8, ptr %i.h, i64 -16      ; 2 uses
  %i.r = getelementptr i8, ptr %i.h, i64 -8       ; 3 uses
  %.val.i.i.i = load i64, ptr %i.r, align 8, !tbaa !21
  %i.s = and i64 %.val.i.i.i, -4                  ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %.val12.i.i.i = load i64, ptr %i.q, align 8, !tbaa !23
  %i.u = and i64 %.val12.i.i.i, -4                ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load i64, ptr %i.t, align 8, !tbaa !23
  %i.x = and i64 %i.w, 3
  %i.y = or disjoint i64 %i.x, %i.u
  store i64 %i.y, ptr %i.t, align 8, !tbaa !23
  %i.z = getelementptr i8, ptr %i.v, i64 8        ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !21
  %i.ab = and i64 %i.aa, 3
  %i.ac = or disjoint i64 %i.ab, %i.s
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !21
  store i64 0, ptr %i.q, align 8, !tbaa !23
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !21
  %i.ae = and i64 %i.ad, 1
  store i64 %i.ae, ptr %i.r, align 8, !tbaa !21
  %i.af = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !24 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 7428   ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !26 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %_PyObject_GC_UNTRACK.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ak = add nsw i32 %i.ai, -1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !26
  br label %_PyObject_GC_UNTRACK.exit.i.i

end_hunk_0
