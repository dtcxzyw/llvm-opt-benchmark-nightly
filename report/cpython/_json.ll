inline.NumInlined: 263
inline.NumDeleted: 48
begin_hunk_0_@scanner_clear:bb.a
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_DECREF.exit37

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #6
  br label %Py_DECREF.exit37

Py_DECREF.exit37:                                 ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit39
  %i.p = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28   ; 4 uses
  %.not32 = icmp eq ptr %i.q, null
  br i1 %.not32, label %Py_DECREF.exit35, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit37
  store ptr null, ptr %i.p, align 8, !tbaa !28
  %i.r = load i32, ptr %i.q, align 8, !tbaa !27   ; 2 uses
  %.not.i34 = icmp sgt i32 %i.r, -1
  br i1 %.not.i34, label %bb.l, label %Py_DECREF.exit35

bb.l:                                             ; preds = %bb.k
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !27
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %Py_DECREF.exit35

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #6
  br label %Py_DECREF.exit35

Py_DECREF.exit35:                                 ; preds = %bb.m, %bb.l, %bb.k, %Py_DECREF.exit37
  %i.u = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !28   ; 4 uses
  %.not33 = icmp eq ptr %i.v, null
  br i1 %.not33, label %Py_DECREF.exit, label %bb.n

bb.n:                                             ; preds = %Py_DECREF.exit35
  store ptr null, ptr %i.u, align 8, !tbaa !28
  %i.w = load i32, ptr %i.v, align 8, !tbaa !27   ; 2 uses
  %.not.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i, label %bb.o, label %Py_DECREF.exit

bb.o:                                             ; preds = %bb.n
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.v, align 8, !tbaa !27
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.p, label %Py_DECREF.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.v) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.p, %bb.o, %bb.n, %Py_DECREF.exit35
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @scanner_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.45, ptr noundef nonnull @scanner_new.kwlist, ptr noundef nonnull %i.a) #6
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = call ptr %i.d(ptr noundef %0, i64 noundef 0) #6 ; 11 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.h = call ptr @PyObject_GetAttrString(ptr noundef %i.g, ptr noundef nonnull @.str.37) #6 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.h) #6
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  store i8 %i.k, ptr %i.l, align 8, !tbaa !49
  %i.m = load i32, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %.not.i25 = icmp sgt i32 %i.m, -1
  br i1 %.not.i25, label %bb.e, label %Py_DECREF.exit26

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.h, align 8, !tbaa !27
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %Py_DECREF.exit26thread-pre-split

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.h) #6
  br label %Py_DECREF.exit26thread-pre-split

Py_DECREF.exit26thread-pre-split:                 ; preds = %bb.f, %bb.e
  %.pr = load i8, ptr %i.l, align 8, !tbaa !49
  br label %Py_DECREF.exit26

Py_DECREF.exit26:                                 ; preds = %Py_DECREF.exit26thread-pre-split, %bb.d
  %i.p = phi i8 [ %.pr, %Py_DECREF.exit26thread-pre-split ], [ %i.k, %bb.d ]
  %i.q = icmp slt i8 %i.p, 0
  br i1 %i.q, label %bb.l, label %bb.g

bb.g:                                             ; preds = %Py_DECREF.exit26
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.s = call ptr @PyObject_GetAttrString(ptr noundef %i.r, ptr noundef nonnull @.str.38) #6 ; 2 uses
  %i.t = getelementptr i8, ptr %i.e, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !42
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.w = call ptr @PyObject_GetAttrString(ptr noundef %i.v, ptr noundef nonnull @.str.39) #6 ; 2 uses
  %i.x = getelementptr i8, ptr %i.e, i64 32
  store ptr %i.w, ptr %i.x, align 8, !tbaa !44
  %i.y = icmp eq ptr %i.w, null
  br i1 %i.y, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.aa = call ptr @PyObject_GetAttrString(ptr noundef %i.z, ptr noundef nonnull @.str.40) #6 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.e, i64 40
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !45
  %i.ac = icmp eq ptr %i.aa, null
  br i1 %i.ac, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.ae = call ptr @PyObject_GetAttrString(ptr noundef %i.ad, ptr noundef nonnull @.str.41) #6 ; 2 uses
  %i.af = getelementptr i8, ptr %i.e, i64 48
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !46
  %i.ag = icmp eq ptr %i.ae, null
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.ai = call ptr @PyObject_GetAttrString(ptr noundef %i.ah, ptr noundef nonnull @.str.42) #6 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.e, i64 56
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !47
  %i.ak = icmp eq ptr %i.ai, null
  br i1 %i.ak, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %Py_DECREF.exit26, %bb.c
  %i.al = load i32, ptr %i.e, align 8, !tbaa !27  ; 2 uses
  %.not.i = icmp sgt i32 %i.al, -1
  br i1 %.not.i, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.l
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %i.e, align 8, !tbaa !27
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.n, label %Py_DECREF.exit

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %bb.k ], [ null, %bb.b ], [ null, %bb.l ], [ null, %bb.m ], [ null, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0
}

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #1

declare i32 @PyArg_ParseTupleAndKeywords(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyDict_New() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @scan_once_unicode(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull captures(none) %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 32
  %.val.i = load i32, ptr %i.a, align 8           ; 4 uses
  %i.b = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.b, 0                   ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.c, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %2, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 56
  %.val4.i = load ptr, ptr %i.d, align 8, !tbaa !27
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 84 uses
  %i.e = lshr i32 %.val.i, 2
  %i.f = and i32 %i.e, 7                          ; 50 uses
  %i.g = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.g, align 8, !tbaa !24  ; 17 uses
  %i.h = icmp slt i64 %3, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_PyUnicode_DATA.exit
  %i.i = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !28
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.25) #6
  br label %raise_stop_iteration.exit

bb.e:                                             ; preds = %_PyUnicode_DATA.exit
  %.not = icmp slt i64 %3, %.val
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @PyLong_FromSsize_t(i64 noundef range(i64 0, -9223372036854775808) %3) #6 ; 5 uses
  %.not.i148 = icmp eq ptr %i.j, null
  br i1 %.not.i148, label %raise_stop_iteration.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !28
  tail call void @PyErr_SetObject(ptr noundef %i.k, ptr noundef nonnull %i.j) #6
  %i.l = load i32, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %.not.i.i149 = icmp sgt i32 %i.l, -1
  br i1 %.not.i.i149, label %bb.h, label %raise_stop_iteration.exit

bb.h:                                             ; preds = %bb.g
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.j, align 8, !tbaa !27
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %raise_stop_iteration.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #6
  br label %raise_stop_iteration.exit

bb.j:                                             ; preds = %bb.e
  switch i32 %i.f, label %bb.m [
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr i8, ptr %.0.i, i64 %3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !27
  %i.q = zext i8 %i.p to i32
  br label %PyUnicode_READ.exit

bb.l:                                             ; preds = %bb.j
  %i.r = getelementptr [2 x i8], ptr %.0.i, i64 %3
  %i.s = load i16, ptr %i.r, align 2, !tbaa !32
  %i.t = zext i16 %i.s to i32
  br label %PyUnicode_READ.exit

bb.m:                                             ; preds = %bb.j
  %i.u = getelementptr [4 x i8], ptr %.0.i, i64 %3
  %i.v = load i32, ptr %i.u, align 4, !tbaa !6
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.k, %bb.l, %bb.m
  %.0.i150 = phi i32 [ %i.q, %bb.k ], [ %i.t, %bb.l ], [ %i.v, %bb.m ]
  switch i32 %.0.i150, label %bb.eg [
    i32 34, label %bb.n
    i32 123, label %bb.o
    i32 91, label %bb.p
    i32 110, label %bb.q
    i32 116, label %bb.ae
    i32 102, label %bb.as
    i32 78, label %bb.bk
    i32 73, label %bb.bu
    i32 45, label %bb.cy
  ]

bb.n:                                             ; preds = %PyUnicode_READ.exit
  %i.w = add nuw nsw i64 %3, 1
  %i.x = getelementptr i8, ptr %0, i64 16
  %i.y = load i8, ptr %i.x, align 8, !tbaa !49
  %i.z = sext i8 %i.y to i32
  %i.aa = tail call fastcc ptr @scanstring_unicode(ptr noundef nonnull %2, i64 noundef %i.w, i32 noundef %i.z, ptr noundef %4)
  br label %raise_stop_iteration.exit

bb.o:                                             ; preds = %PyUnicode_READ.exit
  %i.ab = tail call ptr @_PyThreadState_GetCurrent() #6 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 952
  %.val.i.i = load i64, ptr %i.ac, align 8, !tbaa !50 ; 2 uses
  %i.ad = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.ae = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.af = icmp ule i64 %.val.i.i, %i.ae
  %i.ag = add i64 %.val.i.i, -32768
  %i.ah = icmp ugt i64 %i.ag, %i.ae
  %narrow.i.not.i.i = or i1 %i.af, %i.ah
  br i1 %narrow.i.not.i.i, label %_Py_EnterRecursiveCall.exit.thread, label %_Py_EnterRecursiveCall.exit

_Py_EnterRecursiveCall.exit:                      ; preds = %bb.o
  %i.ai = tail call i32 @_Py_CheckRecursiveCall(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.26) #6
  %.not216 = icmp eq i32 %i.ai, 0
  br i1 %.not216, label %_Py_EnterRecursiveCall.exit.thread, label %raise_stop_iteration.exit

_Py_EnterRecursiveCall.exit.thread:               ; preds = %bb.o, %_Py_EnterRecursiveCall.exit
  %i.aj = add nuw nsw i64 %3, 1
  %i.ak = tail call fastcc ptr @_parse_object_unicode(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %i.aj, ptr noundef %4)
  br label %raise_stop_iteration.exit

bb.p:                                             ; preds = %PyUnicode_READ.exit
  %i.al = tail call ptr @_PyThreadState_GetCurrent() #6 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 952
  %.val.i.i151 = load i64, ptr %i.am, align 8, !tbaa !50 ; 2 uses
  %i.an = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.ao = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.ap = icmp ule i64 %.val.i.i151, %i.ao
  %i.aq = add i64 %.val.i.i151, -32768
  %i.ar = icmp ugt i64 %i.aq, %i.ao
  %narrow.i.not.i.i152 = or i1 %i.ap, %i.ar
  br i1 %narrow.i.not.i.i152, label %_Py_EnterRecursiveCall.exit153.thread, label %_Py_EnterRecursiveCall.exit153

_Py_EnterRecursiveCall.exit153:                   ; preds = %bb.p
  %i.as = tail call i32 @_Py_CheckRecursiveCall(ptr noundef nonnull %i.al, ptr noundef nonnull @.str.27) #6
  %.not215 = icmp eq i32 %i.as, 0
  br i1 %.not215, label %_Py_EnterRecursiveCall.exit153.thread, label %raise_stop_iteration.exit

_Py_EnterRecursiveCall.exit153.thread:            ; preds = %bb.p, %_Py_EnterRecursiveCall.exit153
  %i.at = add nuw nsw i64 %3, 1
  %i.au = tail call fastcc ptr @_parse_array_unicode(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %i.at, ptr noundef %4)
  br label %raise_stop_iteration.exit

bb.q:                                             ; preds = %PyUnicode_READ.exit
  %i.av = add nuw i64 %3, 3                       ; 4 uses
  %i.aw = icmp slt i64 %i.av, %.val
  br i1 %i.aw, label %bb.r, label %bb.eg

bb.r:                                             ; preds = %bb.q
  %i.ax = add nuw nsw i64 %3, 1                   ; 3 uses
  switch i32 %i.f, label %bb.u [
    i32 1, label %bb.s
    i32 2, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr i8, ptr %.0.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !27
  %i.ba = zext i8 %i.az to i32
  br label %PyUnicode_READ.exit155

bb.t:                                             ; preds = %bb.r
  %i.bb = getelementptr [2 x i8], ptr %.0.i, i64 %i.ax
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !32
  %i.bd = zext i16 %i.bc to i32
  br label %PyUnicode_READ.exit155

bb.u:                                             ; preds = %bb.r
  %i.be = getelementptr [4 x i8], ptr %.0.i, i64 %i.ax
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !6
  br label %PyUnicode_READ.exit155

PyUnicode_READ.exit155:                           ; preds = %bb.s, %bb.t, %bb.u
  %.0.i154 = phi i32 [ %i.ba, %bb.s ], [ %i.bd, %bb.t ], [ %i.bf, %bb.u ]
  %i.bg = icmp eq i32 %.0.i154, 117
  br i1 %i.bg, label %bb.v, label %bb.eg

bb.v:                                             ; preds = %PyUnicode_READ.exit155
  %i.bh = add nuw i64 %3, 2                       ; 3 uses
  switch i32 %i.f, label %bb.y [
    i32 1, label %bb.w
    i32 2, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr i8, ptr %.0.i, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !27
  %i.bk = zext i8 %i.bj to i32
  br label %PyUnicode_READ.exit157

bb.x:                                             ; preds = %bb.v
  %i.bl = getelementptr [2 x i8], ptr %.0.i, i64 %i.bh
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !32
  %i.bn = zext i16 %i.bm to i32
  br label %PyUnicode_READ.exit157

bb.y:                                             ; preds = %bb.v
  %i.bo = getelementptr [4 x i8], ptr %.0.i, i64 %i.bh
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !6
  br label %PyUnicode_READ.exit157

PyUnicode_READ.exit157:                           ; preds = %bb.w, %bb.x, %bb.y
  %.0.i156 = phi i32 [ %i.bk, %bb.w ], [ %i.bn, %bb.x ], [ %i.bp, %bb.y ]
  %i.bq = icmp eq i32 %.0.i156, 108
  br i1 %i.bq, label %bb.z, label %bb.eg

bb.z:                                             ; preds = %PyUnicode_READ.exit157
  switch i32 %i.f, label %bb.ac [
    i32 1, label %bb.aa
    i32 2, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.br = getelementptr i8, ptr %.0.i, i64 %i.av
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !27
  %i.bt = zext i8 %i.bs to i32
  br label %PyUnicode_READ.exit159

bb.ab:                                            ; preds = %bb.z
  %i.bu = getelementptr [2 x i8], ptr %.0.i, i64 %i.av
end_hunk_0
begin_hunk_1_@scan_once_unicode:bb.a
PyUnicode_READ.exit195:                           ; preds = %bb.de, %bb.df, %bb.dg
  %.0.i194 = phi i32 [ %i.jc, %bb.de ], [ %i.jf, %bb.df ], [ %i.jh, %bb.dg ]
  %i.ji = icmp eq i32 %.0.i194, 110
  br i1 %i.ji, label %bb.dh, label %bb.eg

bb.dh:                                            ; preds = %PyUnicode_READ.exit195
  %i.jj = add nuw i64 %3, 3                       ; 3 uses
  switch i32 %i.f, label %bb.dk [
    i32 1, label %bb.di
    i32 2, label %bb.dj
  ]

bb.di:                                            ; preds = %bb.dh
  %i.jk = getelementptr i8, ptr %.0.i, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !27
  %i.jm = zext i8 %i.jl to i32
  br label %PyUnicode_READ.exit197

bb.dj:                                            ; preds = %bb.dh
  %i.jn = getelementptr [2 x i8], ptr %.0.i, i64 %i.jj
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !32
  %i.jp = zext i16 %i.jo to i32
  br label %PyUnicode_READ.exit197

bb.dk:                                            ; preds = %bb.dh
  %i.jq = getelementptr [4 x i8], ptr %.0.i, i64 %i.jj
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !6
  br label %PyUnicode_READ.exit197

PyUnicode_READ.exit197:                           ; preds = %bb.di, %bb.dj, %bb.dk
  %.0.i196 = phi i32 [ %i.jm, %bb.di ], [ %i.jp, %bb.dj ], [ %i.jr, %bb.dk ]
  %i.js = icmp eq i32 %.0.i196, 102
  br i1 %i.js, label %bb.dl, label %bb.eg

bb.dl:                                            ; preds = %PyUnicode_READ.exit197
  %i.jt = add nuw i64 %3, 4                       ; 3 uses
  switch i32 %i.f, label %bb.do [
    i32 1, label %bb.dm
    i32 2, label %bb.dn
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.ju = getelementptr i8, ptr %.0.i, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !27
  %i.jw = zext i8 %i.jv to i32
  br label %PyUnicode_READ.exit199

bb.dn:                                            ; preds = %bb.dl
  %i.jx = getelementptr [2 x i8], ptr %.0.i, i64 %i.jt
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !32
  %i.jz = zext i16 %i.jy to i32
  br label %PyUnicode_READ.exit199

bb.do:                                            ; preds = %bb.dl
  %i.ka = getelementptr [4 x i8], ptr %.0.i, i64 %i.jt
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !6
  br label %PyUnicode_READ.exit199

PyUnicode_READ.exit199:                           ; preds = %bb.dm, %bb.dn, %bb.do
  %.0.i198 = phi i32 [ %i.jw, %bb.dm ], [ %i.jz, %bb.dn ], [ %i.kb, %bb.do ]
  %i.kc = icmp eq i32 %.0.i198, 105
  br i1 %i.kc, label %bb.dp, label %bb.eg

bb.dp:                                            ; preds = %PyUnicode_READ.exit199
  %i.kd = add nuw i64 %3, 5                       ; 3 uses
  switch i32 %i.f, label %bb.ds [
    i32 1, label %bb.dq
    i32 2, label %bb.dr
  ]

bb.dq:                                            ; preds = %bb.dp
  %i.ke = getelementptr i8, ptr %.0.i, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !27
  %i.kg = zext i8 %i.kf to i32
  br label %PyUnicode_READ.exit201

bb.dr:                                            ; preds = %bb.dp
  %i.kh = getelementptr [2 x i8], ptr %.0.i, i64 %i.kd
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !32
  %i.kj = zext i16 %i.ki to i32
  br label %PyUnicode_READ.exit201

bb.ds:                                            ; preds = %bb.dp
  %i.kk = getelementptr [4 x i8], ptr %.0.i, i64 %i.kd
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !6
  br label %PyUnicode_READ.exit201

PyUnicode_READ.exit201:                           ; preds = %bb.dq, %bb.dr, %bb.ds
  %.0.i200 = phi i32 [ %i.kg, %bb.dq ], [ %i.kj, %bb.dr ], [ %i.kl, %bb.ds ]
  %i.km = icmp eq i32 %.0.i200, 110
  br i1 %i.km, label %bb.dt, label %bb.eg

bb.dt:                                            ; preds = %PyUnicode_READ.exit201
  %i.kn = add nuw i64 %3, 6                       ; 3 uses
  switch i32 %i.f, label %bb.dw [
    i32 1, label %bb.du
    i32 2, label %bb.dv
  ]

bb.du:                                            ; preds = %bb.dt
  %i.ko = getelementptr i8, ptr %.0.i, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !27
  %i.kq = zext i8 %i.kp to i32
  br label %PyUnicode_READ.exit203

bb.dv:                                            ; preds = %bb.dt
  %i.kr = getelementptr [2 x i8], ptr %.0.i, i64 %i.kn
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !32
  %i.kt = zext i16 %i.ks to i32
  br label %PyUnicode_READ.exit203

bb.dw:                                            ; preds = %bb.dt
  %i.ku = getelementptr [4 x i8], ptr %.0.i, i64 %i.kn
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !6
  br label %PyUnicode_READ.exit203

PyUnicode_READ.exit203:                           ; preds = %bb.du, %bb.dv, %bb.dw
  %.0.i202 = phi i32 [ %i.kq, %bb.du ], [ %i.kt, %bb.dv ], [ %i.kv, %bb.dw ]
  %i.kw = icmp eq i32 %.0.i202, 105
  br i1 %i.kw, label %bb.dx, label %bb.eg

bb.dx:                                            ; preds = %PyUnicode_READ.exit203
  %i.kx = add nuw i64 %3, 7                       ; 3 uses
  switch i32 %i.f, label %bb.ea [
    i32 1, label %bb.dy
    i32 2, label %bb.dz
  ]

bb.dy:                                            ; preds = %bb.dx
  %i.ky = getelementptr i8, ptr %.0.i, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !27
  %i.la = zext i8 %i.kz to i32
  br label %PyUnicode_READ.exit205

bb.dz:                                            ; preds = %bb.dx
  %i.lb = getelementptr [2 x i8], ptr %.0.i, i64 %i.kx
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !32
  %i.ld = zext i16 %i.lc to i32
  br label %PyUnicode_READ.exit205

bb.ea:                                            ; preds = %bb.dx
  %i.le = getelementptr [4 x i8], ptr %.0.i, i64 %i.kx
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !6
  br label %PyUnicode_READ.exit205

PyUnicode_READ.exit205:                           ; preds = %bb.dy, %bb.dz, %bb.ea
  %.0.i204 = phi i32 [ %i.la, %bb.dy ], [ %i.ld, %bb.dz ], [ %i.lf, %bb.ea ]
  %i.lg = icmp eq i32 %.0.i204, 116
  br i1 %i.lg, label %bb.eb, label %bb.eg

bb.eb:                                            ; preds = %PyUnicode_READ.exit205
  switch i32 %i.f, label %bb.ee [
    i32 1, label %bb.ec
    i32 2, label %bb.ed
  ]

bb.ec:                                            ; preds = %bb.eb
  %i.lh = getelementptr i8, ptr %.0.i, i64 %i.in
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !27
  %i.lj = zext i8 %i.li to i32
  br label %PyUnicode_READ.exit207

bb.ed:                                            ; preds = %bb.eb
  %i.lk = getelementptr [2 x i8], ptr %.0.i, i64 %i.in
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !32
  %i.lm = zext i16 %i.ll to i32
  br label %PyUnicode_READ.exit207

bb.ee:                                            ; preds = %bb.eb
  %i.ln = getelementptr [4 x i8], ptr %.0.i, i64 %i.in
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !6
  br label %PyUnicode_READ.exit207

PyUnicode_READ.exit207:                           ; preds = %bb.ec, %bb.ed, %bb.ee
  %.0.i206 = phi i32 [ %i.lj, %bb.ec ], [ %i.lm, %bb.ed ], [ %i.lo, %bb.ee ]
  %i.lp = icmp eq i32 %.0.i206, 121
  br i1 %i.lp, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %PyUnicode_READ.exit207
  %i.lq = tail call fastcc ptr @_parse_constant(ptr noundef %0, ptr noundef nonnull @.str.30, i64 noundef %3, ptr noundef %4)
  br label %raise_stop_iteration.exit

bb.eg:                                            ; preds = %bb.cy, %PyUnicode_READ.exit193, %PyUnicode_READ.exit195, %PyUnicode_READ.exit197, %PyUnicode_READ.exit199, %PyUnicode_READ.exit201, %PyUnicode_READ.exit203, %PyUnicode_READ.exit205, %PyUnicode_READ.exit207, %bb.bu, %PyUnicode_READ.exit179, %PyUnicode_READ.exit181, %PyUnicode_READ.exit183, %PyUnicode_READ.exit185, %PyUnicode_READ.exit187, %PyUnicode_READ.exit189, %PyUnicode_READ.exit191, %bb.bk, %PyUnicode_READ.exit175, %PyUnicode_READ.exit177, %bb.as, %PyUnicode_READ.exit167, %PyUnicode_READ.exit169, %PyUnicode_READ.exit171, %PyUnicode_READ.exit173, %bb.ae, %PyUnicode_READ.exit161, %PyUnicode_READ.exit163, %PyUnicode_READ.exit165, %bb.q, %PyUnicode_READ.exit155, %PyUnicode_READ.exit157, %PyUnicode_READ.exit159, %PyUnicode_READ.exit
  br i1 %.not.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.lr = and i32 %.val.i, 64
  %.not.i.i.i = icmp eq i32 %i.lr, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %2, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.ei:                                            ; preds = %bb.eg
  %i.ls = getelementptr i8, ptr %2, i64 56
  %.val4.i.i = load ptr, ptr %i.ls, align 8, !tbaa !27
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.ei, %bb.eh
  %.0.i.i209 = phi ptr [ %.0.i.i.i, %bb.eh ], [ %.val4.i.i, %bb.ei ] ; 64 uses
  %.0.i.i209276 = ptrtoaddr ptr %.0.i.i209 to i64
  %i.lt = add nsw i64 %.val, -1                   ; 4 uses
  switch i32 %i.f, label %bb.el [
    i32 1, label %bb.ej
    i32 2, label %bb.ek
  ]

bb.ej:                                            ; preds = %_PyUnicode_DATA.exit.i
  %i.lu = getelementptr i8, ptr %.0.i.i209, i64 %3
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !27
  %i.lw = zext i8 %i.lv to i32
  br label %PyUnicode_READ.exit.i

bb.ek:                                            ; preds = %_PyUnicode_DATA.exit.i
  %i.lx = getelementptr [2 x i8], ptr %.0.i.i209, i64 %3
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !32
  %i.lz = zext i16 %i.ly to i32
  br label %PyUnicode_READ.exit.i

bb.el:                                            ; preds = %_PyUnicode_DATA.exit.i
  %i.ma = getelementptr [4 x i8], ptr %.0.i.i209, i64 %3
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !6
  br label %PyUnicode_READ.exit.i

PyUnicode_READ.exit.i:                            ; preds = %bb.el, %bb.ek, %bb.ej
  %.0.i160.i = phi i32 [ %i.lw, %bb.ej ], [ %i.lz, %bb.ek ], [ %i.mb, %bb.el ]
  %i.mc = icmp eq i32 %.0.i160.i, 45
  br i1 %i.mc, label %bb.em, label %bb.er

bb.em:                                            ; preds = %PyUnicode_READ.exit.i
  %i.md = add nuw nsw i64 %3, 1
  %.not217 = icmp samesign ult i64 %3, %i.lt
  br i1 %.not217, label %bb.er, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.me = tail call ptr @PyLong_FromSsize_t(i64 noundef range(i64 0, -9223372036854775808) %3) #6 ; 5 uses
  %.not.i161.i = icmp eq ptr %i.me, null
  br i1 %.not.i161.i, label %raise_stop_iteration.exit, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.mf = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !28
  tail call void @PyErr_SetObject(ptr noundef %i.mf, ptr noundef nonnull %i.me) #6
  %i.mg = load i32, ptr %i.me, align 8, !tbaa !27 ; 2 uses
  %.not.i.i162.i = icmp sgt i32 %i.mg, -1
  br i1 %.not.i.i162.i, label %bb.ep, label %raise_stop_iteration.exit

bb.ep:                                            ; preds = %bb.eo
  %i.mh = add nsw i32 %i.mg, -1                   ; 2 uses
  store i32 %i.mh, ptr %i.me, align 8, !tbaa !27
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %bb.eq, label %raise_stop_iteration.exit

bb.eq:                                            ; preds = %bb.ep
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.me) #6
  br label %raise_stop_iteration.exit

bb.er:                                            ; preds = %bb.em, %PyUnicode_READ.exit.i
  %.0130.i = phi i64 [ %i.md, %bb.em ], [ %3, %PyUnicode_READ.exit.i ] ; 12 uses
  switch i32 %i.f, label %bb.eu [
    i32 1, label %bb.es
    i32 2, label %bb.et
  ]

bb.es:                                            ; preds = %bb.er
  %i.mj = getelementptr i8, ptr %.0.i.i209, i64 %.0130.i
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !27
  %i.ml = zext i8 %i.mk to i32
  br label %PyUnicode_READ.exit164.i

bb.et:                                            ; preds = %bb.er
  %i.mm = getelementptr [2 x i8], ptr %.0.i.i209, i64 %.0130.i
  %i.mn = load i16, ptr %i.mm, align 2, !tbaa !32
  %i.mo = zext i16 %i.mn to i32
  br label %PyUnicode_READ.exit164.i

bb.eu:                                            ; preds = %bb.er
  %i.mp = getelementptr [4 x i8], ptr %.0.i.i209, i64 %.0130.i
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !6
  br label %PyUnicode_READ.exit164.i

PyUnicode_READ.exit164.i:                         ; preds = %bb.eu, %bb.et, %bb.es
  %.0.i163.i = phi i32 [ %i.ml, %bb.es ], [ %i.mo, %bb.et ], [ %i.mq, %bb.eu ]
  %i.mr = icmp ugt i32 %.0.i163.i, 48
  br i1 %i.mr, label %bb.ev, label %bb.fg

bb.ev:                                            ; preds = %PyUnicode_READ.exit164.i
  switch i32 %i.f, label %bb.ey [
    i32 1, label %bb.ew
    i32 2, label %bb.ex
  ]

bb.ew:                                            ; preds = %bb.ev
  %i.ms = getelementptr i8, ptr %.0.i.i209, i64 %.0130.i
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !27
  %i.mu = zext i8 %i.mt to i32
  br label %PyUnicode_READ.exit166.i

bb.ex:                                            ; preds = %bb.ev
  %i.mv = getelementptr [2 x i8], ptr %.0.i.i209, i64 %.0130.i
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !32
  %i.mx = zext i16 %i.mw to i32
  br label %PyUnicode_READ.exit166.i

bb.ey:                                            ; preds = %bb.ev
  %i.my = getelementptr [4 x i8], ptr %.0.i.i209, i64 %.0130.i
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !6
  br label %PyUnicode_READ.exit166.i

PyUnicode_READ.exit166.i:                         ; preds = %bb.ey, %bb.ex, %bb.ew
  %.0.i165.i = phi i32 [ %i.mu, %bb.ew ], [ %i.mx, %bb.ex ], [ %i.mz, %bb.ey ]
  %i.na = icmp ult i32 %.0.i165.i, 58
  br i1 %i.na, label %.preheader.i.preheader, label %bb.fg

.preheader.i.preheader:                           ; preds = %PyUnicode_READ.exit166.i
  %5 = add nuw nsw i64 %.0130.i, 1
  %6 = tail call i64 @llvm.umax.i64(i64 %.val, i64 %5) ; 2 uses
  %.1131.i261 = add nsw i64 %.0130.i, 1           ; 2 uses
  %.not.i212.not262 = icmp slt i64 %.1131.i261, %.val
  br i1 %.not.i212.not262, label %.lr.ph, label %.critedge.i

.preheader.i:                                     ; preds = %PyUnicode_READ.exit170.i
  %.1131.i = add nsw i64 %.1131.i263, 1           ; 2 uses
  %.not.i212.not = icmp slt i64 %.1131.i, %.val
  br i1 %.not.i212.not, label %.lr.ph, label %.critedge.i, !llvm.loop !70

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.1131.i263 = phi i64 [ %.1131.i, %.preheader.i ], [ %.1131.i261, %.preheader.i.preheader ] ; 9 uses
  switch i32 %i.f, label %bb.fb [
    i32 1, label %bb.ez
    i32 2, label %bb.fa
  ]

bb.ez:                                            ; preds = %.lr.ph
  %i.nb = getelementptr i8, ptr %.0.i.i209, i64 %.1131.i263
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !27
  %i.nd = zext i8 %i.nc to i32
  br label %PyUnicode_READ.exit168.i

bb.fa:                                            ; preds = %.lr.ph
  %i.ne = getelementptr [2 x i8], ptr %.0.i.i209, i64 %.1131.i263
  %i.nf = load i16, ptr %i.ne, align 2, !tbaa !32
  %i.ng = zext i16 %i.nf to i32
  br label %PyUnicode_READ.exit168.i

bb.fb:                                            ; preds = %.lr.ph
  %i.nh = getelementptr [4 x i8], ptr %.0.i.i209, i64 %.1131.i263
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !6
  br label %PyUnicode_READ.exit168.i

PyUnicode_READ.exit168.i:                         ; preds = %bb.fb, %bb.fa, %bb.ez
  %.0.i167.i = phi i32 [ %i.nd, %bb.ez ], [ %i.ng, %bb.fa ], [ %i.ni, %bb.fb ]
  %i.nj = icmp ugt i32 %.0.i167.i, 47
  br i1 %i.nj, label %bb.fc, label %.critedge.i

bb.fc:                                            ; preds = %PyUnicode_READ.exit168.i
  switch i32 %i.f, label %bb.ff [
    i32 1, label %bb.fd
    i32 2, label %bb.fe
  ]

bb.fd:                                            ; preds = %bb.fc
  %i.nk = getelementptr i8, ptr %.0.i.i209, i64 %.1131.i263
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !27
  %i.nm = zext i8 %i.nl to i32
  br label %PyUnicode_READ.exit170.i

bb.fe:                                            ; preds = %bb.fc
  %i.nn = getelementptr [2 x i8], ptr %.0.i.i209, i64 %.1131.i263
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !32
  %i.np = zext i16 %i.no to i32
  br label %PyUnicode_READ.exit170.i

bb.ff:                                            ; preds = %bb.fc
  %i.nq = getelementptr [4 x i8], ptr %.0.i.i209, i64 %.1131.i263
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !6
  br label %PyUnicode_READ.exit170.i

PyUnicode_READ.exit170.i:                         ; preds = %bb.ff, %bb.fe, %bb.fd
  %.0.i169.i = phi i32 [ %i.nm, %bb.fd ], [ %i.np, %bb.fe ], [ %i.nr, %bb.ff ]
  %i.ns = icmp ult i32 %.0.i169.i, 58
  br i1 %i.ns, label %.preheader.i, label %PyUnicode_READ.exit170.i..critedge.i.loopexit_crit_edge, !llvm.loop !70

bb.fg:                                            ; preds = %PyUnicode_READ.exit166.i, %PyUnicode_READ.exit164.i
  switch i32 %i.f, label %bb.fj [
    i32 1, label %bb.fh
    i32 2, label %bb.fi
  ]

bb.fh:                                            ; preds = %bb.fg
  %i.nt = getelementptr i8, ptr %.0.i.i209, i64 %.0130.i
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !27
  %i.nv = zext i8 %i.nu to i32
  br label %PyUnicode_READ.exit172.i

bb.fi:                                            ; preds = %bb.fg
  %i.nw = getelementptr [2 x i8], ptr %.0.i.i209, i64 %.0130.i
  %i.nx = load i16, ptr %i.nw, align 2, !tbaa !32
  %i.ny = zext i16 %i.nx to i32
  br label %PyUnicode_READ.exit172.i

bb.fj:                                            ; preds = %bb.fg
  %i.nz = getelementptr [4 x i8], ptr %.0.i.i209, i64 %.0130.i
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !6
  br label %PyUnicode_READ.exit172.i

PyUnicode_READ.exit172.i:                         ; preds = %bb.fj, %bb.fi, %bb.fh
  %.0.i171.i = phi i32 [ %i.nv, %bb.fh ], [ %i.ny, %bb.fi ], [ %i.oa, %bb.fj ]
  %i.ob = icmp eq i32 %.0.i171.i, 48
  br i1 %i.ob, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %PyUnicode_READ.exit172.i
  %i.oc = add nuw nsw i64 %.0130.i, 1
  br label %.critedge.i

bb.fl:                                            ; preds = %PyUnicode_READ.exit172.i
  %i.od = tail call ptr @PyLong_FromSsize_t(i64 noundef range(i64 0, -9223372036854775808) %3) #6 ; 5 uses
  %.not.i173.i = icmp eq ptr %i.od, null
  br i1 %.not.i173.i, label %raise_stop_iteration.exit, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.oe = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !28
  tail call void @PyErr_SetObject(ptr noundef %i.oe, ptr noundef nonnull %i.od) #6
  %i.of = load i32, ptr %i.od, align 8, !tbaa !27 ; 2 uses
  %.not.i.i174.i = icmp sgt i32 %i.of, -1
  br i1 %.not.i.i174.i, label %bb.fn, label %raise_stop_iteration.exit

bb.fn:                                            ; preds = %bb.fm
  %i.og = add nsw i32 %i.of, -1                   ; 2 uses
  store i32 %i.og, ptr %i.od, align 8, !tbaa !27
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %bb.fo, label %raise_stop_iteration.exit

bb.fo:                                            ; preds = %bb.fn
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.od) #6
  br label %raise_stop_iteration.exit

PyUnicode_READ.exit170.i..critedge.i.loopexit_crit_edge: ; preds = %PyUnicode_READ.exit170.i
  br label %.critedge.i, !llvm.loop !70

.critedge.i:                                      ; preds = %.preheader.i, %PyUnicode_READ.exit168.i, %.preheader.i.preheader, %PyUnicode_READ.exit170.i..critedge.i.loopexit_crit_edge, %bb.fk
  %.2.i = phi i64 [ %i.oc, %bb.fk ], [ %6, %.preheader.i.preheader ], [ %.1131.i263, %PyUnicode_READ.exit170.i..critedge.i.loopexit_crit_edge ], [ %.1131.i263, %PyUnicode_READ.exit168.i ], [ %6, %.preheader.i ] ; 10 uses
  %i.oi = icmp slt i64 %.2.i, %i.lt
  br i1 %i.oi, label %bb.fp, label %.critedge2.i

bb.fp:                                            ; preds = %.critedge.i
  switch i32 %i.f, label %bb.fs [
    i32 1, label %bb.fq
    i32 2, label %bb.fr
  ]

bb.fq:                                            ; preds = %bb.fp
  %i.oj = getelementptr i8, ptr %.0.i.i209, i64 %.2.i
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !27
  %i.ol = zext i8 %i.ok to i32
  br label %PyUnicode_READ.exit177.i

bb.fr:                                            ; preds = %bb.fp
  %i.om = getelementptr [2 x i8], ptr %.0.i.i209, i64 %.2.i
  %i.on = load i16, ptr %i.om, align 2, !tbaa !32
  %i.oo = zext i16 %i.on to i32
  br label %PyUnicode_READ.exit177.i

bb.fs:                                            ; preds = %bb.fp
  %i.op = getelementptr [4 x i8], ptr %.0.i.i209, i64 %.2.i
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !6
  br label %PyUnicode_READ.exit177.i

PyUnicode_READ.exit177.i:                         ; preds = %bb.fs, %bb.fr, %bb.fq
  %.0.i176.i = phi i32 [ %i.ol, %bb.fq ], [ %i.oo, %bb.fr ], [ %i.oq, %bb.fs ]
  %i.or = icmp eq i32 %.0.i176.i, 46
  br i1 %i.or, label %bb.ft, label %.critedge2.i

bb.ft:                                            ; preds = %PyUnicode_READ.exit177.i
  %i.os = add nsw i64 %.2.i, 1                    ; 6 uses
  switch i32 %i.f, label %bb.fw [
    i32 1, label %bb.fu
    i32 2, label %bb.fv
  ]

bb.fu:                                            ; preds = %bb.ft
  %i.ot = getelementptr i8, ptr %.0.i.i209, i64 %i.os
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !27
  %i.ov = zext i8 %i.ou to i32
  br label %PyUnicode_READ.exit179.i

bb.fv:                                            ; preds = %bb.ft
  %i.ow = getelementptr [2 x i8], ptr %.0.i.i209, i64 %i.os
  %i.ox = load i16, ptr %i.ow, align 2, !tbaa !32
  %i.oy = zext i16 %i.ox to i32
  br label %PyUnicode_READ.exit179.i

bb.fw:                                            ; preds = %bb.ft
  %i.oz = getelementptr [4 x i8], ptr %.0.i.i209, i64 %i.os
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !6
  br label %PyUnicode_READ.exit179.i

PyUnicode_READ.exit179.i:                         ; preds = %bb.fw, %bb.fv, %bb.fu
  %.0.i178.i = phi i32 [ %i.ov, %bb.fu ], [ %i.oy, %bb.fv ], [ %i.pa, %bb.fw ]
  %i.pb = icmp ugt i32 %.0.i178.i, 47
  br i1 %i.pb, label %bb.fx, label %.critedge2.i

bb.fx:                                            ; preds = %PyUnicode_READ.exit179.i
  switch i32 %i.f, label %bb.ga [
    i32 1, label %bb.fy
    i32 2, label %bb.fz
  ]

bb.fy:                                            ; preds = %bb.fx
  %i.pc = getelementptr i8, ptr %.0.i.i209, i64 %i.os
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !27
  %i.pe = zext i8 %i.pd to i32
  br label %PyUnicode_READ.exit181.i

bb.fz:                                            ; preds = %bb.fx
  %i.pf = getelementptr [2 x i8], ptr %.0.i.i209, i64 %i.os
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !32
  %i.ph = zext i16 %i.pg to i32
  br label %PyUnicode_READ.exit181.i

bb.ga:                                            ; preds = %bb.fx
  %i.pi = getelementptr [4 x i8], ptr %.0.i.i209, i64 %i.os
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !6
  br label %PyUnicode_READ.exit181.i

PyUnicode_READ.exit181.i:                         ; preds = %bb.ga, %bb.fz, %bb.fy
  %.0.i180.i = phi i32 [ %i.pe, %bb.fy ], [ %i.ph, %bb.fz ], [ %i.pj, %bb.ga ]
  %i.pk = icmp ult i32 %.0.i180.i, 58
  br i1 %i.pk, label %bb.gb, label %.critedge2.i

bb.gb:                                            ; preds = %PyUnicode_READ.exit181.i
  %i.pl = add i64 %.2.i, 2                        ; 3 uses
  %.not150225.i.not = icmp slt i64 %i.pl, %.val
  br i1 %.not150225.i.not, label %.lr.ph.i, label %.critedge2.i

.lr.ph.i:                                         ; preds = %bb.gb, %bb.gj
  %.3226.i = phi i64 [ %i.qe, %bb.gj ], [ %i.pl, %bb.gb ] ; 9 uses
  switch i32 %i.f, label %bb.ge [
    i32 1, label %bb.gc
    i32 2, label %bb.gd
  ]

bb.gc:                                            ; preds = %.lr.ph.i
  %i.pm = getelementptr i8, ptr %.0.i.i209, i64 %.3226.i
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !27
  %i.po = zext i8 %i.pn to i32
  br label %PyUnicode_READ.exit183.i

bb.gd:                                            ; preds = %.lr.ph.i
  %i.pp = getelementptr [2 x i8], ptr %.0.i.i209, i64 %.3226.i
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !32
  %i.pr = zext i16 %i.pq to i32
  br label %PyUnicode_READ.exit183.i

bb.ge:                                            ; preds = %.lr.ph.i
  %i.ps = getelementptr [4 x i8], ptr %.0.i.i209, i64 %.3226.i
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !6
  br label %PyUnicode_READ.exit183.i

PyUnicode_READ.exit183.i:                         ; preds = %bb.ge, %bb.gd, %bb.gc
  %.0.i182.i = phi i32 [ %i.po, %bb.gc ], [ %i.pr, %bb.gd ], [ %i.pt, %bb.ge ]
  %i.pu = icmp ugt i32 %.0.i182.i, 47
  br i1 %i.pu, label %bb.gf, label %.critedge2.i

bb.gf:                                            ; preds = %PyUnicode_READ.exit183.i
  switch i32 %i.f, label %bb.gi [
    i32 1, label %bb.gg
    i32 2, label %bb.gh
  ]

bb.gg:                                            ; preds = %bb.gf
  %i.pv = getelementptr i8, ptr %.0.i.i209, i64 %.3226.i
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !27
  %i.px = zext i8 %i.pw to i32
  br label %PyUnicode_READ.exit185.i

bb.gh:                                            ; preds = %bb.gf
  %i.py = getelementptr [2 x i8], ptr %.0.i.i209, i64 %.3226.i
  %i.pz = load i16, ptr %i.py, align 2, !tbaa !32
  %i.qa = zext i16 %i.pz to i32
  br label %PyUnicode_READ.exit185.i

bb.gi:                                            ; preds = %bb.gf
  %i.qb = getelementptr [4 x i8], ptr %.0.i.i209, i64 %.3226.i
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !6
  br label %PyUnicode_READ.exit185.i

PyUnicode_READ.exit185.i:                         ; preds = %bb.gi, %bb.gh, %bb.gg
  %.0.i184.i = phi i32 [ %i.px, %bb.gg ], [ %i.qa, %bb.gh ], [ %i.qc, %bb.gi ]
  %i.qd = icmp ult i32 %.0.i184.i, 58
  br i1 %i.qd, label %bb.gj, label %.critedge2.i

bb.gj:                                            ; preds = %PyUnicode_READ.exit185.i
  %i.qe = add nsw i64 %.3226.i, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.qe, %.val
  br i1 %exitcond.not, label %.thread.i, label %.lr.ph.i, !llvm.loop !71

.critedge2.i:                                     ; preds = %PyUnicode_READ.exit185.i, %PyUnicode_READ.exit183.i, %bb.gb, %PyUnicode_READ.exit181.i, %PyUnicode_READ.exit179.i, %PyUnicode_READ.exit177.i, %.critedge.i
  %.not152.i = phi i1 [ true, %PyUnicode_READ.exit179.i ], [ true, %PyUnicode_READ.exit177.i ], [ true, %.critedge.i ], [ true, %PyUnicode_READ.exit181.i ], [ false, %bb.gb ], [ false, %PyUnicode_READ.exit183.i ], [ false, %PyUnicode_READ.exit185.i ] ; 2 uses
  %.4.i = phi i64 [ %.2.i, %PyUnicode_READ.exit179.i ], [ %.2.i, %PyUnicode_READ.exit177.i ], [ %.2.i, %.critedge.i ], [ %.2.i, %PyUnicode_READ.exit181.i ], [ %i.pl, %bb.gb ], [ %.3226.i, %PyUnicode_READ.exit183.i ], [ %.3226.i, %PyUnicode_READ.exit185.i ] ; 13 uses
  %i.qf = icmp slt i64 %.4.i, %i.lt
  br i1 %i.qf, label %bb.gk, label %bb.hs

bb.gk:                                            ; preds = %.critedge2.i
  switch i32 %i.f, label %bb.gn [
    i32 1, label %bb.gl
    i32 2, label %bb.gm
  ]

bb.gl:                                            ; preds = %bb.gk
  %i.qg = getelementptr i8, ptr %.0.i.i209, i64 %.4.i
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !27
  %i.qi = zext i8 %i.qh to i32
  br label %PyUnicode_READ.exit187.i

bb.gm:                                            ; preds = %bb.gk
  %i.qj = getelementptr [2 x i8], ptr %.0.i.i209, i64 %.4.i
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !32
  %i.ql = zext i16 %i.qk to i32
  br label %PyUnicode_READ.exit187.i

bb.gn:                                            ; preds = %bb.gk
  %i.qm = getelementptr [4 x i8], ptr %.0.i.i209, i64 %.4.i
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !6
  br label %PyUnicode_READ.exit187.i

PyUnicode_READ.exit187.i:                         ; preds = %bb.gn, %bb.gm, %bb.gl
  %.0.i186.i = phi i32 [ %i.qi, %bb.gl ], [ %i.ql, %bb.gm ], [ %i.qn, %bb.gn ]
  %i.qo = icmp eq i32 %.0.i186.i, 101
  br i1 %i.qo, label %bb.gs, label %bb.go

bb.go:                                            ; preds = %PyUnicode_READ.exit187.i
  switch i32 %i.f, label %bb.gr [
    i32 1, label %bb.gp
    i32 2, label %bb.gq
  ]

bb.gp:                                            ; preds = %bb.go
  %i.qp = getelementptr i8, ptr %.0.i.i209, i64 %.4.i
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !27
  %i.qr = zext i8 %i.qq to i32
  br label %PyUnicode_READ.exit189.i

bb.gq:                                            ; preds = %bb.go
  %i.qs = getelementptr [2 x i8], ptr %.0.i.i209, i64 %.4.i
  %i.qt = load i16, ptr %i.qs, align 2, !tbaa !32
  %i.qu = zext i16 %i.qt to i32
  br label %PyUnicode_READ.exit189.i

bb.gr:                                            ; preds = %bb.go
  %i.qv = getelementptr [4 x i8], ptr %.0.i.i209, i64 %.4.i
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !6
  br label %PyUnicode_READ.exit189.i

PyUnicode_READ.exit189.i:                         ; preds = %bb.gr, %bb.gq, %bb.gp
  %.0.i188.i = phi i32 [ %i.qr, %bb.gp ], [ %i.qu, %bb.gq ], [ %i.qw, %bb.gr ]
  %i.qx = icmp eq i32 %.0.i188.i, 69
  br i1 %i.qx, label %bb.gs, label %bb.hs

bb.gs:                                            ; preds = %PyUnicode_READ.exit189.i, %PyUnicode_READ.exit187.i
  %i.qy = add nsw i64 %.4.i, 1                    ; 9 uses
  %i.qz = icmp slt i64 %i.qy, %i.lt
  br i1 %i.qz, label %bb.gt, label %bb.hc

bb.gt:                                            ; preds = %bb.gs
  switch i32 %i.f, label %bb.gw [
    i32 1, label %bb.gu
    i32 2, label %bb.gv
  ]

bb.gu:                                            ; preds = %bb.gt
  %i.ra = getelementptr i8, ptr %.0.i.i209, i64 %i.qy
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !27
  %i.rc = zext i8 %i.rb to i32
  br label %PyUnicode_READ.exit191.i

bb.gv:                                            ; preds = %bb.gt
  %i.rd = getelementptr [2 x i8], ptr %.0.i.i209, i64 %i.qy
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !32
  %i.rf = zext i16 %i.re to i32
  br label %PyUnicode_READ.exit191.i

bb.gw:                                            ; preds = %bb.gt
  %i.rg = getelementptr [4 x i8], ptr %.0.i.i209, i64 %i.qy
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !6
  br label %PyUnicode_READ.exit191.i

PyUnicode_READ.exit191.i:                         ; preds = %bb.gw, %bb.gv, %bb.gu
  %.0.i190.i = phi i32 [ %i.rc, %bb.gu ], [ %i.rf, %bb.gv ], [ %i.rh, %bb.gw ]
  %i.ri = icmp eq i32 %.0.i190.i, 45
  br i1 %i.ri, label %bb.hb, label %bb.gx

bb.gx:                                            ; preds = %PyUnicode_READ.exit191.i
  switch i32 %i.f, label %bb.ha [
    i32 1, label %bb.gy
    i32 2, label %bb.gz
  ]

bb.gy:                                            ; preds = %bb.gx
  %i.rj = getelementptr i8, ptr %.0.i.i209, i64 %i.qy
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !27
  %i.rl = zext i8 %i.rk to i32
  br label %PyUnicode_READ.exit193.i

bb.gz:                                            ; preds = %bb.gx
  %i.rm = getelementptr [2 x i8], ptr %.0.i.i209, i64 %i.qy
  %i.rn = load i16, ptr %i.rm, align 2, !tbaa !32
  %i.ro = zext i16 %i.rn to i32
  br label %PyUnicode_READ.exit193.i

bb.ha:                                            ; preds = %bb.gx
  %i.rp = getelementptr [4 x i8], ptr %.0.i.i209, i64 %i.qy
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !6
  br label %PyUnicode_READ.exit193.i

PyUnicode_READ.exit193.i:                         ; preds = %bb.ha, %bb.gz, %bb.gy
  %.0.i192.i = phi i32 [ %i.rl, %bb.gy ], [ %i.ro, %bb.gz ], [ %i.rq, %bb.ha ]
  %i.rr = icmp eq i32 %.0.i192.i, 43
  br i1 %i.rr, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %PyUnicode_READ.exit193.i, %PyUnicode_READ.exit191.i
  %i.rs = add nsw i64 %.4.i, 2
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %PyUnicode_READ.exit193.i, %bb.gs
  %.5.i = phi i64 [ %i.rs, %bb.hb ], [ %i.qy, %PyUnicode_READ.exit193.i ], [ %i.qy, %bb.gs ] ; 3 uses
  %.not151229.i.not = icmp slt i64 %.5.i, %.val
  br i1 %.not151229.i.not, label %.lr.ph231.i, label %.critedge4.i

.lr.ph231.i:                                      ; preds = %bb.hc, %bb.hk
  %.6230.i = phi i64 [ %i.sl, %bb.hk ], [ %.5.i, %bb.hc ] ; 9 uses
  switch i32 %i.f, label %bb.hf [
    i32 1, label %bb.hd
    i32 2, label %bb.he
  ]

bb.hd:                                            ; preds = %.lr.ph231.i
  %i.rt = getelementptr i8, ptr %.0.i.i209, i64 %.6230.i
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !27
  %i.rv = zext i8 %i.ru to i32
  br label %PyUnicode_READ.exit195.i

bb.he:                                            ; preds = %.lr.ph231.i
  %i.rw = getelementptr [2 x i8], ptr %.0.i.i209, i64 %.6230.i
  %i.rx = load i16, ptr %i.rw, align 2, !tbaa !32
  %i.ry = zext i16 %i.rx to i32
  br label %PyUnicode_READ.exit195.i

bb.hf:                                            ; preds = %.lr.ph231.i
  %i.rz = getelementptr [4 x i8], ptr %.0.i.i209, i64 %.6230.i
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !6
  br label %PyUnicode_READ.exit195.i

PyUnicode_READ.exit195.i:                         ; preds = %bb.hf, %bb.he, %bb.hd
  %.0.i194.i = phi i32 [ %i.rv, %bb.hd ], [ %i.ry, %bb.he ], [ %i.sa, %bb.hf ]
  %i.sb = icmp ugt i32 %.0.i194.i, 47
  br i1 %i.sb, label %bb.hg, label %.critedge4.i

bb.hg:                                            ; preds = %PyUnicode_READ.exit195.i
  switch i32 %i.f, label %bb.hj [
    i32 1, label %bb.hh
    i32 2, label %bb.hi
  ]

bb.hh:                                            ; preds = %bb.hg
  %i.sc = getelementptr i8, ptr %.0.i.i209, i64 %.6230.i
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !27
  %i.se = zext i8 %i.sd to i32
  br label %PyUnicode_READ.exit197.i

bb.hi:                                            ; preds = %bb.hg
  %i.sf = getelementptr [2 x i8], ptr %.0.i.i209, i64 %.6230.i
  %i.sg = load i16, ptr %i.sf, align 2, !tbaa !32
  %i.sh = zext i16 %i.sg to i32
  br label %PyUnicode_READ.exit197.i

bb.hj:                                            ; preds = %bb.hg
  %i.si = getelementptr [4 x i8], ptr %.0.i.i209, i64 %.6230.i
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !6
  br label %PyUnicode_READ.exit197.i

PyUnicode_READ.exit197.i:                         ; preds = %bb.hj, %bb.hi, %bb.hh
  %.0.i196.i = phi i32 [ %i.se, %bb.hh ], [ %i.sh, %bb.hi ], [ %i.sj, %bb.hj ]
  %i.sk = icmp ult i32 %.0.i196.i, 58
  br i1 %i.sk, label %bb.hk, label %.critedge4.i

bb.hk:                                            ; preds = %PyUnicode_READ.exit197.i
  %i.sl = add nsw i64 %.6230.i, 1                 ; 2 uses
  %exitcond222.not = icmp eq i64 %i.sl, %.val
  br i1 %exitcond222.not, label %.critedge4.i, label %.lr.ph231.i, !llvm.loop !72

.critedge4.i:                                     ; preds = %bb.hk, %PyUnicode_READ.exit197.i, %PyUnicode_READ.exit195.i, %bb.hc
  %.6.lcssa.i = phi i64 [ %.5.i, %bb.hc ], [ %.6230.i, %PyUnicode_READ.exit197.i ], [ %.val, %bb.hk ], [ %.6230.i, %PyUnicode_READ.exit195.i ] ; 2 uses
  %i.sm = add nsw i64 %.6.lcssa.i, -1             ; 6 uses
  switch i32 %i.f, label %bb.hn [
    i32 1, label %bb.hl
    i32 2, label %bb.hm
  ]

bb.hl:                                            ; preds = %.critedge4.i
  %i.sn = getelementptr i8, ptr %.0.i.i209, i64 %i.sm
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !27
  %i.sp = zext i8 %i.so to i32
  br label %PyUnicode_READ.exit199.i

bb.hm:                                            ; preds = %.critedge4.i
  %i.sq = getelementptr [2 x i8], ptr %.0.i.i209, i64 %i.sm
  %i.sr = load i16, ptr %i.sq, align 2, !tbaa !32
  %i.ss = zext i16 %i.sr to i32
  br label %PyUnicode_READ.exit199.i

bb.hn:                                            ; preds = %.critedge4.i
  %i.st = getelementptr [4 x i8], ptr %.0.i.i209, i64 %i.sm
  %i.su = load i32, ptr %i.st, align 4, !tbaa !6
  br label %PyUnicode_READ.exit199.i

PyUnicode_READ.exit199.i:                         ; preds = %bb.hn, %bb.hm, %bb.hl
  %.0.i198.i = phi i32 [ %i.sp, %bb.hl ], [ %i.ss, %bb.hm ], [ %i.su, %bb.hn ]
  %i.sv = icmp ugt i32 %.0.i198.i, 47
  br i1 %i.sv, label %bb.ho, label %bb.hs

bb.ho:                                            ; preds = %PyUnicode_READ.exit199.i
  switch i32 %i.f, label %bb.hr [
    i32 1, label %bb.hp
    i32 2, label %bb.hq
  ]

bb.hp:                                            ; preds = %bb.ho
  %i.sw = getelementptr i8, ptr %.0.i.i209, i64 %i.sm
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !27
  %i.sy = zext i8 %i.sx to i32
  br label %PyUnicode_READ.exit201.i

bb.hq:                                            ; preds = %bb.ho
  %i.sz = getelementptr [2 x i8], ptr %.0.i.i209, i64 %i.sm
  %i.ta = load i16, ptr %i.sz, align 2, !tbaa !32
  %i.tb = zext i16 %i.ta to i32
  br label %PyUnicode_READ.exit201.i

bb.hr:                                            ; preds = %bb.ho
  %i.tc = getelementptr [4 x i8], ptr %.0.i.i209, i64 %i.sm
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !6
  br label %PyUnicode_READ.exit201.i

PyUnicode_READ.exit201.i:                         ; preds = %bb.hr, %bb.hq, %bb.hp
  %.0.i200.i = phi i32 [ %i.sy, %bb.hp ], [ %i.tb, %bb.hq ], [ %i.td, %bb.hr ]
  %i.te = icmp ugt i32 %.0.i200.i, 57             ; 2 uses
  %brmerge.not.i = and i1 %.not152.i, %i.te
  %.6.mux.i = select i1 %i.te, i64 %.4.i, i64 %.6.lcssa.i
  br i1 %brmerge.not.i, label %.critedge158.i, label %.thread.i

bb.hs:                                            ; preds = %PyUnicode_READ.exit199.i, %PyUnicode_READ.exit189.i, %.critedge2.i
  br i1 %.not152.i, label %.critedge158.i, label %.thread.i

.thread.i:                                        ; preds = %bb.gj, %bb.hs, %PyUnicode_READ.exit201.i
  %.8209.i = phi i64 [ %.4.i, %bb.hs ], [ %.6.mux.i, %PyUnicode_READ.exit201.i ], [ %.val, %bb.gj ] ; 2 uses
  %i.tf = getelementptr i8, ptr %0, i64 40
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !45 ; 2 uses
  %.not153.i = icmp eq ptr %i.tg, @PyFloat_Type
  br i1 %.not153.i, label %.thread215.i, label %bb.ht

.critedge158.i:                                   ; preds = %bb.hs, %PyUnicode_READ.exit201.i
  %i.th = getelementptr i8, ptr %0, i64 48
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !46 ; 2 uses
  %.not154.i = icmp eq ptr %i.ti, @PyLong_Type
  br i1 %.not154.i, label %.thread215.i, label %bb.ht

bb.ht:                                            ; preds = %.critedge158.i, %.thread.i
  %.not152211.i = phi i1 [ false, %.thread.i ], [ true, %.critedge158.i ]
  %.8207.i = phi i64 [ %.8209.i, %.thread.i ], [ %.4.i, %.critedge158.i ] ; 3 uses
  %.0137.i = phi ptr [ %i.tg, %.thread.i ], [ %i.ti, %.critedge158.i ] ; 2 uses
  %.not155.i = icmp eq ptr %.0137.i, null
  br i1 %.not155.i, label %.thread215.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.tj = zext nneg i32 %i.f to i64
  %i.tk = mul i64 %3, %i.tj
  %i.tl = getelementptr i8, ptr %.0.i.i209, i64 %i.tk
  %i.tm = sub i64 %.8207.i, %3
  %i.tn = tail call ptr @PyUnicode_FromKindAndData(i32 noundef %i.f, ptr noundef %i.tl, i64 noundef %i.tm) #6 ; 3 uses
  %i.to = icmp eq ptr %i.tn, null
  br i1 %i.to, label %raise_stop_iteration.exit, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.tp = tail call ptr @PyObject_CallOneArg(ptr noundef nonnull %.0137.i, ptr noundef nonnull %i.tn) #6
  br label %.thread223.i

.thread215.i:                                     ; preds = %bb.ht, %.critedge158.i, %.thread.i
  %.8207222.i = phi i64 [ %.8207.i, %bb.ht ], [ %.4.i, %.critedge158.i ], [ %.8209.i, %.thread.i ] ; 13 uses
  %.not152211220.i = phi i1 [ %.not152211.i, %bb.ht ], [ true, %.critedge158.i ], [ false, %.thread.i ]
  %i.tq = sub i64 %.8207222.i, %3                 ; 22 uses
  %i.tr = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.tq) #6 ; 8 uses
  %i.ts = ptrtoaddr ptr %i.tr to i64
  %.not156.i = icmp eq ptr %i.tr, null
  br i1 %.not156.i, label %raise_stop_iteration.exit, label %bb.hw

bb.hw:                                            ; preds = %.thread215.i
  %i.tt = getelementptr i8, ptr %i.tr, i64 32     ; 23 uses
  %i.tu = icmp sgt i64 %i.tq, 0
  br i1 %i.tu, label %.lr.ph236.i, label %._crit_edge.i

.lr.ph236.i:                                      ; preds = %bb.hw
  switch i32 %i.f, label %PyUnicode_READ.exit203.preheader.i [
    i32 1, label %iter.check291
    i32 2, label %iter.check
  ]

iter.check:                                       ; preds = %.lr.ph236.i
  %invariant.gep.i = getelementptr [2 x i8], ptr %.0.i.i209, i64 %3 ; 8 uses
  %min.iters.check = icmp ult i64 %i.tq, 4
  br i1 %min.iters.check, label %PyUnicode_READ.exit203.us239.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.tv = add i64 %.8207222.i, 32
  %i.tw = sub i64 %i.tv, %3
  %scevgep = getelementptr i8, ptr %i.tr, i64 %i.tw
  %i.tx = shl i64 %.8207222.i, 1
  %scevgep266 = getelementptr i8, ptr %.0.i.i209, i64 %i.tx
  %bound0 = icmp ult ptr %i.tt, %scevgep266
  %bound1 = icmp ult ptr %invariant.gep.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %PyUnicode_READ.exit203.us239.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check267 = icmp ult i64 %i.tq, 16
  br i1 %min.iters.check267, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.tq, 12
  %n.vec = and i64 %i.tq, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ty = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.tz = getelementptr i8, ptr %i.ty, i64 16
  %wide.load = load <8 x i16>, ptr %i.ty, align 2, !tbaa !32, !alias.scope !73
  %wide.load268 = load <8 x i16>, ptr %i.tz, align 2, !tbaa !32, !alias.scope !73
  %i.ua = trunc <8 x i16> %wide.load to <8 x i8>
  %i.ub = trunc <8 x i16> %wide.load268 to <8 x i8>
  %i.uc = getelementptr i8, ptr %i.tt, i64 %index ; 2 uses
  %i.ud = getelementptr i8, ptr %i.uc, i64 8
  store <8 x i8> %i.ua, ptr %i.uc, align 1, !tbaa !27, !alias.scope !76, !noalias !73
  store <8 x i8> %i.ub, ptr %i.ud, align 1, !tbaa !27, !alias.scope !76, !noalias !73
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ue = icmp eq i64 %index.next, %n.vec
  br i1 %i.ue, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.tq, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %PyUnicode_READ.exit203.us239.i.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec270 = and i64 %i.tq, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index271.a = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next273, %vec.epilog.vector.body ] ; 3 uses
  %i.uf = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index271.a
  %wide.load272.a = load <4 x i16>, ptr %i.uf, align 2, !tbaa !32, !alias.scope !73
  %i.ug = trunc <4 x i16> %wide.load272.a to <4 x i8>
  %i.uh = getelementptr i8, ptr %i.tt, i64 %index271.a
  store <4 x i8> %i.ug, ptr %i.uh, align 1, !tbaa !27, !alias.scope !76, !noalias !73
  %index.next273 = add nuw i64 %index271.a, 4     ; 2 uses
  %i.ui = icmp eq i64 %index.next273, %n.vec270
  br i1 %i.ui, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n274 = icmp eq i64 %i.tq, %n.vec270
  br i1 %cmp.n274, label %._crit_edge.i, label %PyUnicode_READ.exit203.us239.i.preheader

PyUnicode_READ.exit203.us239.i.preheader:         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0132235.us238.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec270, %vec.epilog.middle.block ] ; 3 uses
  %i.uj = sub i64 %.8207222.i, %3
  %xtraiter = and i64 %i.uj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %PyUnicode_READ.exit203.us239.i.prol.loopexit, label %PyUnicode_READ.exit203.us239.i.prol

PyUnicode_READ.exit203.us239.i.prol:              ; preds = %PyUnicode_READ.exit203.us239.i.preheader, %PyUnicode_READ.exit203.us239.i.prol
  %.0132235.us238.i.prol = phi i64 [ %i.un, %PyUnicode_READ.exit203.us239.i.prol ], [ %.0132235.us238.i.ph, %PyUnicode_READ.exit203.us239.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %PyUnicode_READ.exit203.us239.i.prol ], [ 0, %PyUnicode_READ.exit203.us239.i.preheader ]
  %gep.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %.0132235.us238.i.prol
  %i.uk = load i16, ptr %gep.i.prol, align 2, !tbaa !32
  %i.ul = trunc i16 %i.uk to i8
  %i.um = getelementptr i8, ptr %i.tt, i64 %.0132235.us238.i.prol
  store i8 %i.ul, ptr %i.um, align 1, !tbaa !27
  %i.un = add nuw nsw i64 %.0132235.us238.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %PyUnicode_READ.exit203.us239.i.prol.loopexit, label %PyUnicode_READ.exit203.us239.i.prol, !llvm.loop !83

PyUnicode_READ.exit203.us239.i.prol.loopexit:     ; preds = %PyUnicode_READ.exit203.us239.i.prol, %PyUnicode_READ.exit203.us239.i.preheader
  %.0132235.us238.i.unr = phi i64 [ %.0132235.us238.i.ph, %PyUnicode_READ.exit203.us239.i.preheader ], [ %i.un, %PyUnicode_READ.exit203.us239.i.prol ]
  %i.uo = sub i64 %.0132235.us238.i.ph, %.8207222.i
  %i.up = add i64 %i.uo, %3
  %i.uq = icmp ugt i64 %i.up, -4
  br i1 %i.uq, label %._crit_edge.i, label %PyUnicode_READ.exit203.us239.i

iter.check291:                                    ; preds = %.lr.ph236.i
  %invariant.gep268.i = getelementptr i8, ptr %.0.i.i209, i64 %3 ; 7 uses
  %min.iters.check277 = icmp ult i64 %i.tq, 4
  br i1 %min.iters.check277, label %PyUnicode_READ.exit203.us.i.preheader, label %vector.memcheck275

vector.memcheck275:                               ; preds = %iter.check291
  %i.ur = add i64 %i.ts, 32
  %i.us = add i64 %3, %.0.i.i209276
  %i.ut = sub i64 %i.ur, %i.us
  %diff.check = icmp ult i64 %i.ut, 32
  br i1 %diff.check, label %PyUnicode_READ.exit203.us.i.preheader, label %vector.main.loop.iter.check278

vector.main.loop.iter.check278:                   ; preds = %vector.memcheck275
  %min.iters.check279 = icmp ult i64 %i.tq, 32
  br i1 %min.iters.check279, label %vec.epilog.ph295, label %vector.ph280

vector.ph280:                                     ; preds = %vector.main.loop.iter.check278
  %n.mod.vf281 = and i64 %i.tq, 28
  %n.vec282 = and i64 %i.tq, 9223372036854775776  ; 4 uses
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph280
  %index284 = phi i64 [ 0, %vector.ph280 ], [ %index.next287, %vector.body283 ] ; 3 uses
  %i.uu = getelementptr i8, ptr %invariant.gep268.i, i64 %index284 ; 2 uses
  %i.uv = getelementptr i8, ptr %i.uu, i64 16
  %wide.load285 = load <16 x i8>, ptr %i.uu, align 1, !tbaa !27
  %wide.load286 = load <16 x i8>, ptr %i.uv, align 1, !tbaa !27
  %i.uw = getelementptr i8, ptr %i.tt, i64 %index284 ; 2 uses
  %i.ux = getelementptr i8, ptr %i.uw, i64 16
  store <16 x i8> %wide.load285, ptr %i.uw, align 1, !tbaa !27
  store <16 x i8> %wide.load286, ptr %i.ux, align 1, !tbaa !27
  %index.next287 = add nuw i64 %index284, 32      ; 2 uses
  %i.uy = icmp eq i64 %index.next287, %n.vec282
  br i1 %i.uy, label %middle.block288, label %vector.body283, !llvm.loop !85

middle.block288:                                  ; preds = %vector.body283
  %cmp.n289 = icmp eq i64 %i.tq, %n.vec282
  br i1 %cmp.n289, label %._crit_edge.i, label %vec.epilog.iter.check293

vec.epilog.iter.check293:                         ; preds = %middle.block288
  %min.epilog.iters.check294 = icmp eq i64 %n.mod.vf281, 0
  br i1 %min.epilog.iters.check294, label %PyUnicode_READ.exit203.us.i.preheader, label %vec.epilog.ph295, !prof !86

vec.epilog.ph295:                                 ; preds = %vector.main.loop.iter.check278, %vec.epilog.iter.check293
  %vec.epilog.resume.val290 = phi i64 [ %n.vec282, %vec.epilog.iter.check293 ], [ 0, %vector.main.loop.iter.check278 ]
  %n.vec297 = and i64 %i.tq, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body298

vec.epilog.vector.body298:                        ; preds = %vec.epilog.vector.body298, %vec.epilog.ph295
  %index299 = phi i64 [ %vec.epilog.resume.val290, %vec.epilog.ph295 ], [ %index.next301, %vec.epilog.vector.body298 ] ; 3 uses
  %i.uz = getelementptr i8, ptr %invariant.gep268.i, i64 %index299
  %wide.load300 = load <4 x i8>, ptr %i.uz, align 1, !tbaa !27
  %i.va = getelementptr i8, ptr %i.tt, i64 %index299
end_hunk_1
begin_hunk_2_@encoder_encode_key_value:bb.a
  store i32 %i.bd, ptr %.04164, align 8, !tbaa !27
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.ae, label %Py_DECREF.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Py_Dealloc(ptr noundef nonnull %.04164) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bf = icmp slt i32 %i.bb, 0
  br i1 %i.bf, label %Py_DECREF.exit50, label %bb.af

bb.af:                                            ; preds = %Py_DECREF.exit
  %i.bg = getelementptr i8, ptr %0, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !114
  %i.bi = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %1, ptr noundef %i.bh) #6
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %Py_DECREF.exit50, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bk = tail call fastcc i32 @encoder_listencode_obj(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %5, i64 noundef %6, ptr noundef %7)
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %bb.ah, label %Py_DECREF.exit50

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, ...) @_PyErr_FormatNote(ptr noundef nonnull @.str.66, ptr noundef %3, ptr noundef %4) #6
  br label %Py_DECREF.exit50

Py_DECREF.exit50:                                 ; preds = %bb.o, %bb.f, %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.v, %bb.ag, %bb.af, %Py_DECREF.exit, %_Py_NewRef.exit, %bb.r, %bb.ah, %bb.s
  %.0 = phi i32 [ 0, %bb.r ], [ -1, %bb.ab ], [ -1, %_Py_NewRef.exit ], [ -1, %Py_DECREF.exit ], [ -1, %bb.ah ], [ -1, %bb.af ], [ -1, %bb.x ], [ -1, %bb.s ], [ 0, %bb.ag ], [ -1, %bb.v ], [ -1, %bb.w ], [ -1, %bb.z ], [ -1, %bb.aa ], [ -1, %bb.f ], [ -1, %bb.o ]
  ret i32 %.0
}

declare i32 @PyDict_Next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyCFunction_GetFunction(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @write_escaped_ascii(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !24  ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 32
  %.val.i = load i32, ptr %i.b, align 8           ; 3 uses
  %i.c = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.d, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 56
  %.val4.i = load ptr, ptr %i.e, align 8, !tbaa !27
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 2 uses
  %i.f = lshr i32 %.val.i, 2
  %i.g = and i32 %i.f, 7                          ; 2 uses
  %i.h = tail call fastcc i64 @ascii_escape_size(ptr noundef %.0.i, i32 noundef %i.g, i64 noundef %.val) ; 3 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %_steal_accumulate.exit, label %bb.d

bb.d:                                             ; preds = %_PyUnicode_DATA.exit
  %i.j = add i64 %.val, 2
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @PyUnicodeWriter_WriteChar(ptr noundef %0, i32 noundef 34) #6
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %_steal_accumulate.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef %0, ptr noundef nonnull %1) #6
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %_steal_accumulate.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i32 @PyUnicodeWriter_WriteChar(ptr noundef %0, i32 noundef 34) #6
  br label %_steal_accumulate.exit

bb.h:                                             ; preds = %bb.d
  %i.q = tail call fastcc ptr @ascii_escape_unicode_and_size(ptr noundef %.0.i, i32 noundef %i.g, i64 noundef %.val, i64 noundef %i.h) ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_steal_accumulate.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef %0, ptr noundef nonnull %i.q) #6 ; 3 uses
  %i.t = load i32, ptr %i.q, align 8, !tbaa !27   ; 2 uses
  %.not.i.i22 = icmp sgt i32 %i.t, -1
  br i1 %.not.i.i22, label %bb.j, label %_steal_accumulate.exit

bb.j:                                             ; preds = %bb.i
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.q, align 8, !tbaa !27
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %_steal_accumulate.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #6
  br label %_steal_accumulate.exit

_steal_accumulate.exit:                           ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %_PyUnicode_DATA.exit, %bb.g
  %.1 = phi i32 [ -1, %bb.f ], [ -1, %_PyUnicode_DATA.exit ], [ -1, %bb.e ], [ %i.p, %bb.g ], [ -1, %bb.h ], [ %i.s, %bb.i ], [ %i.s, %bb.j ], [ %i.s, %bb.k ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @write_escaped_unicode(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !24  ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 32
  %.val.i = load i32, ptr %i.b, align 8           ; 4 uses
  %i.c = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %.val.i, 64                      ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 56
  %.val4.i = load ptr, ptr %i.e, align 8, !tbaa !27
  %.pre = and i32 %.val.i, 64
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.pre-phi = phi i32 [ %i.d, %bb.b ], [ %.pre, %bb.c ]
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 2 uses
  %i.f = lshr i32 %.val.i, 2
  %i.g = and i32 %i.f, 7                          ; 3 uses
  %.not.i25 = icmp eq i32 %.pre-phi, 0
  %switch.selectcmp.i = icmp eq i32 %i.g, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.g, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  %.0.i26 = select i1 %.not.i25, i32 %switch.select6.i, i32 127
  %i.h = tail call fastcc i64 @escape_size(ptr noundef %.0.i, i32 noundef %i.g, i64 noundef %.val) ; 3 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %_steal_accumulate.exit, label %bb.d

bb.d:                                             ; preds = %_PyUnicode_DATA.exit
  %i.j = add i64 %.val, 2
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @PyUnicodeWriter_WriteChar(ptr noundef %0, i32 noundef 34) #6
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %_steal_accumulate.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef %0, ptr noundef nonnull %1) #6
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %_steal_accumulate.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i32 @PyUnicodeWriter_WriteChar(ptr noundef %0, i32 noundef 34) #6
  br label %_steal_accumulate.exit

bb.h:                                             ; preds = %bb.d
  %i.q = tail call fastcc ptr @escape_unicode_and_size(ptr noundef %.0.i, i32 noundef %.0.i26, i64 noundef %.val, i64 noundef %i.h) ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_steal_accumulate.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef %0, ptr noundef nonnull %i.q) #6 ; 3 uses
  %i.t = load i32, ptr %i.q, align 8, !tbaa !27   ; 2 uses
  %.not.i.i27 = icmp sgt i32 %i.t, -1
  br i1 %.not.i.i27, label %bb.j, label %_steal_accumulate.exit

bb.j:                                             ; preds = %bb.i
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.q, align 8, !tbaa !27
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %_steal_accumulate.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #6
  br label %_steal_accumulate.exit

_steal_accumulate.exit:                           ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %_PyUnicode_DATA.exit, %bb.g
  %.1 = phi i32 [ -1, %bb.f ], [ -1, %_PyUnicode_DATA.exit ], [ -1, %bb.e ], [ %i.p, %bb.g ], [ -1, %bb.h ], [ %i.s, %bb.i ], [ %i.s, %bb.j ], [ %i.s, %bb.k ]
  ret i32 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 8}
!11 = !{!"_object", !8, i64 0, !12, i64 8}
!12 = !{!"p1 _ZTS11_typeobject", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!15, !17, i64 168}
!15 = !{!"_typeobject", !16, i64 0, !18, i64 24, !17, i64 32, !17, i64 40, !13, i64 48, !17, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !17, i64 168, !18, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !17, i64 208, !13, i64 216, !13, i64 224, !19, i64 232, !20, i64 240, !21, i64 248, !12, i64 256, !22, i64 264, !13, i64 272, !13, i64 280, !17, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !22, i64 336, !22, i64 344, !22, i64 352, !13, i64 360, !22, i64 368, !13, i64 376, !7, i64 384, !13, i64 392, !13, i64 400, !8, i64 408, !23, i64 410}
!16 = !{!"PyVarObject", !11, i64 0, !17, i64 16}
!17 = !{!"long", !8, i64 0}
!18 = !{!"p1 omnipotent char", !13, i64 0}
!19 = !{!"p1 _ZTS11PyMethodDef", !13, i64 0}
!20 = !{!"p1 _ZTS11PyMemberDef", !13, i64 0}
!21 = !{!"p1 _ZTS11PyGetSetDef", !13, i64 0}
!22 = !{!"p1 _ZTS7_object", !13, i64 0}
!23 = !{!"short", !8, i64 0}
!24 = !{!25, !17, i64 16}
!25 = !{!"", !11, i64 0, !17, i64 16, !17, i64 24, !26, i64 32}
!26 = !{!"_PyUnicodeObject_state", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0}
!27 = !{!8, !8, i64 0}
!28 = !{!22, !22, i64 0}
!29 = !{!17, !17, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!23, !23, i64 0}
!33 = !{!18, !18, i64 0}
!34 = distinct !{!34, !31}
!35 = distinct !{!35, !31}
!36 = distinct !{!36, !31}
!37 = distinct !{!37, !31}
!38 = distinct !{!38, !31}
!39 = distinct !{!39, !31}
!40 = !{!15, !13, i64 320}
!41 = !{!15, !18, i64 24}
!42 = !{!43, !22, i64 24}
!43 = !{!"_PyScannerObject", !11, i64 0, !8, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56}
!44 = !{!43, !22, i64 32}
!45 = !{!43, !22, i64 40}
!46 = !{!43, !22, i64 48}
!47 = !{!43, !22, i64 56}
!48 = !{!15, !13, i64 304}
!49 = !{!43, !8, i64 16}
!50 = !{!51, !17, i64 952}
!51 = !{!"_PyThreadStateImpl", !52, i64 0, !64, i64 848, !17, i64 936, !17, i64 944, !17, i64 952, !17, i64 960, !17, i64 968, !17, i64 976, !22, i64 984, !22, i64 992, !7, i64 1000, !67, i64 1008, !69, i64 1024, !67, i64 1032}
!52 = !{!"_ts", !53, i64 0, !53, i64 8, !54, i64 16, !17, i64 24, !55, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !56, i64 72, !56, i64 80, !56, i64 88, !13, i64 96, !13, i64 104, !22, i64 112, !22, i64 120, !22, i64 128, !57, i64 136, !22, i64 144, !7, i64 152, !22, i64 160, !17, i64 168, !17, i64 176, !22, i64 184, !17, i64 192, !7, i64 200, !22, i64 208, !22, i64 216, !22, i64 224, !17, i64 232, !17, i64 240, !58, i64 248, !59, i64 256, !59, i64 264, !61, i64 272, !22, i64 288, !62, i64 296, !17, i64 304, !22, i64 312, !22, i64 320, !63, i64 328}
!53 = !{!"p1 _ZTS3_ts", !13, i64 0}
!54 = !{!"p1 _ZTS3_is", !13, i64 0}
!55 = !{!"", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0}
!56 = !{!"p1 _ZTS19_PyInterpreterFrame", !13, i64 0}
!57 = !{!"p1 _ZTS14_err_stackitem", !13, i64 0}
!58 = !{!"p1 _ZTS12_stack_chunk", !13, i64 0}
!59 = !{!"p2 _ZTS7_object", !60, i64 0}
!60 = !{!"any p2 pointer", !13, i64 0}
!61 = !{!"_err_stackitem", !22, i64 0, !57, i64 8}
!62 = !{!"p1 _ZTS11_PyExitData", !13, i64 0}
!63 = !{!"", !7, i64 0, !8, i64 4}
!64 = !{!"_PyInterpreterFrame", !8, i64 0, !56, i64 8, !8, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !65, i64 48, !13, i64 56, !66, i64 64, !23, i64 72, !8, i64 74, !8, i64 75, !8, i64 80}
!65 = !{!"p1 _ZTS6_frame", !13, i64 0}
!66 = !{!"p1 _ZTS11_PyStackRef", !13, i64 0}
!67 = !{!"llist_node", !68, i64 0, !68, i64 8}
!68 = !{!"p1 _ZTS10llist_node", !13, i64 0}
!69 = !{!"p1 _ZTS18_qsbr_thread_state", !13, i64 0}
!70 = distinct !{!70, !31}
!71 = distinct !{!71, !31}
!72 = distinct !{!72, !31}
!73 = !{!74}
!74 = distinct !{!74, !75}
!75 = distinct !{!75, !"LVerDomain"}
!76 = !{!77}
!77 = distinct !{!77, !75}
!78 = distinct !{!78, !31, !79, !80}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!"branch_weights", i32 4, i32 12}
!82 = distinct !{!82, !31, !79, !80}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = distinct !{!85, !31, !79, !80}
!86 = !{!"branch_weights", i32 4, i32 28}
!87 = distinct !{!87, !31, !79, !80}
!88 = distinct !{!88, !84}
!89 = !{!90}
!90 = distinct !{!90, !91}
!91 = distinct !{!91, !"LVerDomain"}
!92 = !{!93}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !31, !79, !80}
!95 = distinct !{!95, !84}
!96 = distinct !{!96, !31, !79}
!97 = distinct !{!97, !31, !79}
!98 = distinct !{!98, !31, !79}
!99 = distinct !{!99, !31}
!100 = distinct !{!100, !31}
!101 = distinct !{!101, !31}
!102 = distinct !{!102, !31}
!103 = distinct !{!103, !31}
!104 = distinct !{!104, !31}
!105 = distinct !{!105, !31}
!106 = distinct !{!106, !31}
!107 = !{!108, !22, i64 40}
!108 = !{!"_PyEncoderObject", !11, i64 0, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !8, i64 64, !8, i64 65, !7, i64 68, !13, i64 72}
!109 = !{!110, !59, i64 24}
!110 = !{!"", !16, i64 0, !59, i64 24, !17, i64 32}
!111 = !{!108, !22, i64 16}
!112 = !{!108, !22, i64 24}
!113 = !{!108, !22, i64 32}
!114 = !{!108, !22, i64 48}
!115 = !{!108, !22, i64 56}
!116 = !{!108, !8, i64 64}
!117 = !{!108, !8, i64 65}
!118 = !{!108, !7, i64 68}
!119 = !{!108, !13, i64 72}
!120 = !{!15, !13, i64 88}
!121 = !{!122, !123, i64 16}
!122 = !{!"", !11, i64 0, !123, i64 16}
!123 = !{!"double", !8, i64 0}
!124 = distinct !{null}
!125 = !{!16, !17, i64 16}
!126 = distinct !{null}
!127 = distinct !{!127, !31, !128}
!128 = !{!"llvm.loop.peeled.count", i32 1}
!129 = !{!130, !130, i64 0}
!130 = !{!"_Bool", !8, i64 0}
!131 = !{!132, !17, i64 16}
!132 = !{!"", !11, i64 0, !17, i64 16, !17, i64 24, !133, i64 32, !134, i64 40}
!133 = !{!"p1 _ZTS15_dictkeysobject", !13, i64 0}
!134 = !{!"p1 _ZTS11_dictvalues", !13, i64 0}
!135 = distinct !{!135, !31}
!136 = distinct !{null}
!137 = distinct !{null}
!138 = distinct !{!138, !31}
!139 = !{i8 0, i8 2}
!140 = !{}
end_hunk_2
