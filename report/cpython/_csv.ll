inline.NumInlined: 116
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Writer_traverse:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #5 ; 2 uses
  %.not42 = icmp eq i32 %i.c, 0
  br i1 %.not42, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %.not43 = icmp eq ptr %i.e, null
  br i1 %.not43, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #5 ; 2 uses
  %.not44 = icmp eq i32 %i.f, 0
  br i1 %.not44, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71   ; 2 uses
  %.not45 = icmp eq ptr %i.h, null
  br i1 %.not45, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 %1(ptr noundef nonnull %i.h, ptr noundef %2) #5 ; 2 uses
  %.not46 = icmp eq i32 %i.i, 0
  br i1 %.not46, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.j = getelementptr i8, ptr %0, i64 8
  %.val49 = load ptr, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %.not47 = icmp eq ptr %.val49, null
  br i1 %.not47, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i32 %1(ptr noundef nonnull %.val49, ptr noundef %2) #5 ; 2 uses
  %.not48 = icmp eq i32 %i.k, 0
  br i1 %.not48, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.i
  %.7 = phi i32 [ 0, %bb.i ], [ %i.k, %bb.h ], [ %i.i, %bb.f ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @Writer_clear(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit23, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !61
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not.i22 = icmp sgt i32 %i.c, -1
  br i1 %.not.i22, label %bb.c, label %Py_DECREF.exit23

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !29
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit23

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #5
  br label %Py_DECREF.exit23

Py_DECREF.exit23:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10   ; 4 uses
  %.not18 = icmp eq ptr %i.g, null
  br i1 %.not18, label %Py_DECREF.exit21, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit23
  store ptr null, ptr %i.f, align 8, !tbaa !10
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %.not.i20 = icmp sgt i32 %i.h, -1
  br i1 %.not.i20, label %bb.f, label %Py_DECREF.exit21

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !29
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit21

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #5
  br label %Py_DECREF.exit21

Py_DECREF.exit21:                                 ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit23
  %i.k = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10   ; 4 uses
  %.not19 = icmp eq ptr %i.l, null
  br i1 %.not19, label %Py_DECREF.exit, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit21
  store ptr null, ptr %i.k, align 8, !tbaa !10
  %i.m = load i32, ptr %i.l, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !29
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit21
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @Writer_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !14  ; 4 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #5
  %i.b = getelementptr i8, ptr %.val, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = tail call i32 %i.c(ptr noundef %0) #5    ; 0 uses
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMem_Free(ptr noundef nonnull %i.f) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @PyObject_GC_Del(ptr noundef nonnull %0) #5
  %i.g = load i32, ptr %.val, align 8, !tbaa !29  ; 2 uses
  %.not.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %.val, align 8, !tbaa !29
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @csv_writerow(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.c = tail call ptr @PyObject_GetIter(ptr noundef %1) #5 ; 12 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  %i.f = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.e) #5
  %.not71.i = icmp eq i32 %i.f, 0
  br i1 %.not71.i, label %csv_writerow_lock_held.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.i = getelementptr i8, ptr %1, i64 8
  %.val94.i = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.j = getelementptr i8, ptr %.val94.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.55, ptr noundef %i.k) #5 ; 0 uses
  br label %csv_writerow_lock_held.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 48         ; 5 uses
  store i64 0, ptr %i.m, align 8, !tbaa !73
  %i.n = getelementptr i8, ptr %0, i64 56         ; 3 uses
  store i32 0, ptr %i.n, align 8, !tbaa !74
  %i.o = tail call ptr @PyIter_Next(ptr noundef nonnull %i.c) #5 ; 2 uses
  %.not104.i = icmp eq ptr %i.o, null
  br i1 %.not104.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.b, i64 20
  br label %bb.f

bb.e:                                             ; preds = %Py_DECREF.exit85.i
  %i.q = tail call ptr @PyIter_Next(ptr noundef nonnull %i.c) #5 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.f, !llvm.loop !75

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %i.r = phi ptr [ %i.o, %.lr.ph.i ], [ %i.q, %bb.e ] ; 15 uses
  %i.s = load i32, ptr %i.p, align 4, !tbaa !35   ; 2 uses
  switch i32 %i.s, label %bb.j [
    i32 2, label %bb.g
    i32 1, label %bb.k
    i32 4, label %bb.h
    i32 5, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i32 @PyNumber_Check(ptr noundef nonnull %i.r) #5
  %.not67.i = icmp eq i32 %i.t, 0
  %i.u = zext i1 %.not67.i to i32
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.r, i64 8
  %.val93.i = load ptr, ptr %i.v, align 8, !tbaa !14
  %i.w = getelementptr i8, ptr %.val93.i, i64 168
  %.val96.i = load i64, ptr %i.w, align 8, !tbaa !17
  %i.x = trunc i64 %.val96.i to i32
  %i.y = lshr i32 %i.x, 28
  %i.z = and i32 %i.y, 1
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.aa = icmp ne ptr %i.r, @_Py_NoneStruct
  %i.ab = zext i1 %i.aa to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i = phi i32 [ 0, %bb.j ], [ %i.u, %bb.g ], [ %i.ab, %bb.i ], [ %i.z, %bb.h ], [ %i.s, %bb.f ] ; 3 uses
  %i.ac = icmp eq ptr %i.r, @_Py_NoneStruct       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.r, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !tbaa !14
  %i.ae = getelementptr i8, ptr %.val.i, i64 168
  %.val95.i = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.af = and i64 %.val95.i, 268435456
  %.not68.i = icmp eq i64 %i.af, 0
  br i1 %.not68.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = tail call fastcc i32 @join_append(ptr noundef %0, ptr noundef nonnull %i.r, i32 noundef %.0.i) ; 3 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !29  ; 2 uses
  %.not.i84.i = icmp sgt i32 %i.ah, -1
  br i1 %.not.i84.i, label %bb.m, label %Py_DECREF.exit85.i

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.r, align 8, !tbaa !29
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %Py_DECREF.exit85.sink.split.i, label %Py_DECREF.exit85.i

bb.n:                                             ; preds = %bb.k
  br i1 %i.ac, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ak = tail call fastcc i32 @join_append(ptr noundef %0, ptr noundef null, i32 noundef %.0.i) ; 3 uses
  %i.al = load i32, ptr %i.r, align 8, !tbaa !29  ; 2 uses
  %.not.i82.i = icmp sgt i32 %i.al, -1
  br i1 %.not.i82.i, label %bb.p, label %Py_DECREF.exit85.i

bb.p:                                             ; preds = %bb.o
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %i.r, align 8, !tbaa !29
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %Py_DECREF.exit85.sink.split.i, label %Py_DECREF.exit85.i

bb.q:                                             ; preds = %bb.n
  %i.ao = tail call ptr @PyObject_Str(ptr noundef nonnull %i.r) #5 ; 5 uses
  %i.ap = load i32, ptr %i.r, align 8, !tbaa !29  ; 2 uses
  %.not.i80.i = icmp sgt i32 %i.ap, -1
  br i1 %.not.i80.i, label %bb.r, label %Py_DECREF.exit81.i

bb.r:                                             ; preds = %bb.q
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.r, align 8, !tbaa !29
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.s, label %Py_DECREF.exit81.i

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #5
  br label %Py_DECREF.exit81.i

Py_DECREF.exit81.i:                               ; preds = %bb.s, %bb.r, %bb.q
  %.not69.i = icmp eq ptr %i.ao, null
  br i1 %.not69.i, label %bb.t, label %bb.w

bb.t:                                             ; preds = %Py_DECREF.exit81.i
  %i.as = load i32, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %.not.i78.i = icmp sgt i32 %i.as, -1
  br i1 %.not.i78.i, label %bb.u, label %csv_writerow_lock_held.exit

bb.u:                                             ; preds = %bb.t
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.c, align 8, !tbaa !29
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.v, label %csv_writerow_lock_held.exit

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #5
  br label %csv_writerow_lock_held.exit

bb.w:                                             ; preds = %Py_DECREF.exit81.i
  %i.av = tail call fastcc i32 @join_append(ptr noundef %0, ptr noundef nonnull %i.ao, i32 noundef %.0.i) ; 3 uses
  %i.aw = load i32, ptr %i.ao, align 8, !tbaa !29 ; 2 uses
  %.not.i76.i = icmp sgt i32 %i.aw, -1
  br i1 %.not.i76.i, label %bb.x, label %Py_DECREF.exit85.i

bb.x:                                             ; preds = %bb.w
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.ao, align 8, !tbaa !29
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %Py_DECREF.exit85.sink.split.i, label %Py_DECREF.exit85.i

Py_DECREF.exit85.sink.split.i:                    ; preds = %bb.x, %bb.p, %bb.m
  %.sink.i = phi ptr [ @_Py_NoneStruct, %bb.p ], [ %i.r, %bb.m ], [ %i.ao, %bb.x ]
  %.1.ph.i = phi i32 [ %i.ak, %bb.p ], [ %i.ag, %bb.m ], [ %i.av, %bb.x ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i) #5
  br label %Py_DECREF.exit85.i

Py_DECREF.exit85.i:                               ; preds = %Py_DECREF.exit85.sink.split.i, %bb.x, %bb.w, %bb.p, %bb.o, %bb.m, %bb.l
  %.1.i = phi i32 [ %i.av, %bb.w ], [ %i.av, %bb.x ], [ %i.ag, %bb.l ], [ %i.ag, %bb.m ], [ %i.ak, %bb.o ], [ %i.ak, %bb.p ], [ %.1.ph.i, %Py_DECREF.exit85.sink.split.i ]
  %.not70.i = icmp eq i32 %.1.i, 0
  br i1 %.not70.i, label %bb.y, label %bb.e, !llvm.loop !75

bb.y:                                             ; preds = %Py_DECREF.exit85.i
  %i.az = load i32, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %.not.i74.i = icmp sgt i32 %i.az, -1
  br i1 %.not.i74.i, label %bb.z, label %csv_writerow_lock_held.exit

bb.z:                                             ; preds = %bb.y
  %i.ba = add nsw i32 %i.az, -1                   ; 2 uses
  store i32 %i.ba, ptr %i.c, align 8, !tbaa !29
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.aa, label %csv_writerow_lock_held.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #5
  br label %csv_writerow_lock_held.exit

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  %.056.lcssa.i = phi i1 [ false, %bb.d ], [ %i.ac, %bb.e ]
  %i.bc = load i32, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %.not.i72.i = icmp sgt i32 %i.bc, -1
  br i1 %.not.i72.i, label %bb.ab, label %Py_DECREF.exit73.i

bb.ab:                                            ; preds = %._crit_edge.i
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.c, align 8, !tbaa !29
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.ac, label %Py_DECREF.exit73.i

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #5
  br label %Py_DECREF.exit73.i

Py_DECREF.exit73.i:                               ; preds = %bb.ac, %bb.ab, %._crit_edge.i
  %i.bf = tail call ptr @PyErr_Occurred() #5
  %.not64.i = icmp eq ptr %i.bf, null
  br i1 %.not64.i, label %bb.ad, label %csv_writerow_lock_held.exit

bb.ad:                                            ; preds = %Py_DECREF.exit73.i
  %i.bg = load i32, ptr %i.n, align 8, !tbaa !74  ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.bi = load i64, ptr %i.m, align 8, !tbaa !73
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.bk = getelementptr i8, ptr %i.b, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !35 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 3
  br i1 %i.bm, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bn = and i32 %i.bl, -2
  %switch.i = icmp eq i32 %i.bn, 4
  %or.cond.i = and i1 %.056.lcssa.i, %switch.i
  br i1 %or.cond.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bo = getelementptr i8, ptr %0, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !71
  %i.bq = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bp, ptr noundef nonnull @.str.56) #5 ; 0 uses
  br label %csv_writerow_lock_held.exit

bb.ai:                                            ; preds = %bb.ag
  %i.br = add nsw i32 %i.bg, -1
  store i32 %i.br, ptr %i.n, align 8, !tbaa !74
  %i.bs = tail call fastcc i32 @join_append(ptr noundef nonnull %0, ptr noundef null, i32 noundef 1)
  %.not65.i = icmp eq i32 %i.bs, 0
  br i1 %.not65.i, label %csv_writerow_lock_held.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ae, %bb.ad
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.bu = getelementptr i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !32 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  %.val.i.i = load i64, ptr %i.bw, align 8, !tbaa !41 ; 22 uses
  %i.bx = icmp eq i64 %.val.i.i, -1
  br i1 %i.bx, label %csv_writerow_lock_held.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.by = load i64, ptr %i.m, align 8, !tbaa !73
  %i.bz = add i64 %i.by, %.val.i.i                ; 2 uses
  %i.ca = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !76
  %i.cc = icmp sgt i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.cd = sdiv i64 %i.bz, 32768
  %i.ce = shl nsw i64 %i.cd, 15
  %i.cf = add i64 %i.ce, 32768                    ; 3 uses
  %i.cg = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ch = icmp ugt i64 %i.cf, 2305843009213693951
  br i1 %i.ch, label %join_check_rec_size.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !72
  %i.cj = shl nuw nsw i64 %i.cf, 2
  %i.ck = tail call ptr @PyMem_Realloc(ptr noundef %i.ci, i64 noundef %i.cj) #5 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %join_check_rec_size.exit.i.i, label %.thread17.i.i.i

.thread17.i.i.i:                                  ; preds = %bb.am
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !72
  store i64 %i.cf, ptr %i.ca, align 8, !tbaa !76
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !68
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.pre.i.i, i64 40
  %.pre32.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !32
  br label %bb.an

join_check_rec_size.exit.i.i:                     ; preds = %bb.am, %bb.al
  %i.cm = tail call ptr @PyErr_NoMemory() #5      ; 0 uses
  br label %csv_writerow_lock_held.exit

bb.an:                                            ; preds = %.thread17.i.i.i, %bb.ak
  %i.cn = phi ptr [ %.pre32.i.i, %.thread17.i.i.i ], [ %i.bv, %bb.ak ] ; 3 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 32
  %i.cp = load i32, ptr %i.co, align 8            ; 3 uses
  %i.cq = lshr i32 %i.cp, 2
  %i.cr = and i32 %i.cq, 7
  %i.cs = and i32 %i.cp, 32
  %.not.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ct = and i32 %i.cp, 64
  %.not.i.i.i.i = icmp eq i32 %i.ct, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %i.cn, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.ap:                                            ; preds = %bb.an
  %i.cu = getelementptr i8, ptr %i.cn, i64 56
  %.val4.i.i.i = load ptr, ptr %i.cu, align 8, !tbaa !29
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.ap, %bb.ao
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.ao ], [ %.val4.i.i.i, %bb.ap ] ; 17 uses
end_hunk_0
