inline.NumInlined: 33
inline.NumDeleted: 17
begin_hunk_0_@perm_comb_small:bb.a
bb.u:                                             ; preds = %Py_DECREF.exit98
  %i.di = add nsw i32 %i.dh, -1                   ; 2 uses
  store i32 %i.di, ptr %i.db, align 8, !tbaa !13
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.v, label %Py_DECREF.exit96

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.db) #6
  br label %Py_DECREF.exit96

bb.w:                                             ; preds = %bb.q, %bb.k
  %.183 = phi ptr [ %i.cn, %bb.k ], [ %i.ct, %bb.q ] ; 3 uses
  %i.dk = load i32, ptr %.183, align 8, !tbaa !13 ; 2 uses
  %.not.i = icmp sgt i32 %i.dk, -1
  br i1 %.not.i, label %bb.x, label %Py_DECREF.exit96

bb.x:                                             ; preds = %bb.w
  %i.dl = add nsw i32 %i.dk, -1                   ; 2 uses
  store i32 %i.dl, ptr %.183, align 8, !tbaa !13
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.y, label %Py_DECREF.exit96

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %.183) #6
  br label %Py_DECREF.exit96

Py_DECREF.exit96:                                 ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %Py_DECREF.exit98, %.thread, %Py_DECREF.exit100, %._crit_edge, %bb.j, %._crit_edge117, %bb.d
  %.1 = phi ptr [ %i.ab, %bb.d ], [ %i.am, %._crit_edge117 ], [ %i.bv, %._crit_edge ], [ %i.bs, %bb.j ], [ null, %.thread ], [ %i.dd, %bb.v ], [ %i.ct, %Py_DECREF.exit100 ], [ %i.dd, %Py_DECREF.exit98 ], [ %i.dd, %bb.u ], [ null, %bb.w ], [ null, %bb.x ], [ null, %bb.y ]
  ret ptr %.1
}

declare ptr @PyNumber_Subtract(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_RichCompareBool(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @perm_comb(ptr noundef nonnull %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  switch i64 %1, label %bb.e [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @PyLong_FromLong(i64 noundef 1) #6
  br label %_Py_NewRef.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !13
  br label %_Py_NewRef.exit

bb.e:                                             ; preds = %bb.a
  %i.e = lshr i64 %1, 1                           ; 4 uses
  %i.f = tail call fastcc ptr @perm_comb(ptr noundef %0, i64 noundef %i.e, i32 noundef %2) ; 8 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @PyLong_FromUnsignedLongLong(i64 noundef %i.e) #6 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call ptr @PyNumber_Subtract(ptr noundef nonnull %0, ptr noundef nonnull %i.h) #6 ; 5 uses
  %i.k = load i32, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %.not.i60 = icmp sgt i32 %i.k, -1
  br i1 %.not.i60, label %bb.h, label %Py_DECREF.exit61

bb.h:                                             ; preds = %bb.g
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.h, align 8, !tbaa !13
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.i, label %Py_DECREF.exit61

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #6
  br label %Py_DECREF.exit61

Py_DECREF.exit61:                                 ; preds = %bb.g, %bb.h, %bb.i
  %i.n = icmp eq ptr %i.j, null
  br i1 %i.n, label %bb.x, label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit61
  %i.o = sub i64 %1, %i.e
  %i.p = tail call fastcc ptr @perm_comb(ptr noundef %i.j, i64 noundef %i.o, i32 noundef %2) ; 5 uses
  %i.q = load i32, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %.not.i58 = icmp sgt i32 %i.q, -1
  br i1 %.not.i58, label %bb.k, label %Py_DECREF.exit59

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.j, align 8, !tbaa !13
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.l, label %Py_DECREF.exit59

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #6
  br label %Py_DECREF.exit59

Py_DECREF.exit59:                                 ; preds = %bb.j, %bb.k, %bb.l
  %i.t = icmp eq ptr %i.p, null
  br i1 %i.t, label %bb.x, label %bb.m

bb.m:                                             ; preds = %Py_DECREF.exit59
  %i.u = tail call ptr @PyNumber_Multiply(ptr noundef nonnull %i.f, ptr noundef nonnull %i.p) #6 ; 7 uses
  %i.v = load i32, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %.not.i56 = icmp sgt i32 %i.v, -1
  br i1 %.not.i56, label %bb.n, label %Py_DECREF.exit57

bb.n:                                             ; preds = %bb.m
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.f, align 8, !tbaa !13
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.o, label %Py_DECREF.exit57

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #6
  br label %Py_DECREF.exit57

Py_DECREF.exit57:                                 ; preds = %bb.m, %bb.n, %bb.o
  %i.y = load i32, ptr %i.p, align 8, !tbaa !13   ; 2 uses
  %.not.i54 = icmp sgt i32 %i.y, -1
  br i1 %.not.i54, label %bb.p, label %Py_DECREF.exit55

bb.p:                                             ; preds = %Py_DECREF.exit57
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.p, align 8, !tbaa !13
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.q, label %Py_DECREF.exit55

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #6
  br label %Py_DECREF.exit55

Py_DECREF.exit55:                                 ; preds = %Py_DECREF.exit57, %bb.p, %bb.q
  %i.ab = icmp ne i32 %2, 0
  %i.ac = icmp ne ptr %i.u, null
  %or.cond = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.r, label %_Py_NewRef.exit

bb.r:                                             ; preds = %Py_DECREF.exit55
  %i.ad = tail call fastcc ptr @perm_comb_small(i64 noundef %1, i64 noundef %i.e, i32 noundef 1) ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = tail call ptr @PyNumber_FloorDivide(ptr noundef nonnull %i.u, ptr noundef nonnull %i.ad) #6 ; 3 uses
  %i.ag = load i32, ptr %i.u, align 8, !tbaa !13  ; 2 uses
  %.not.i52 = icmp sgt i32 %i.ag, -1
  br i1 %.not.i52, label %bb.t, label %Py_DECREF.exit53

bb.t:                                             ; preds = %bb.s
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.u, align 8, !tbaa !13
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.u, label %Py_DECREF.exit53

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.u) #6
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.s, %bb.t, %bb.u
  %i.aj = load i32, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %.not.i50 = icmp sgt i32 %i.aj, -1
  br i1 %.not.i50, label %bb.v, label %_Py_NewRef.exit

bb.v:                                             ; preds = %Py_DECREF.exit53
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ad, align 8, !tbaa !13
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.w, label %_Py_NewRef.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #6
  br label %_Py_NewRef.exit

bb.x:                                             ; preds = %bb.r, %Py_DECREF.exit59, %Py_DECREF.exit61, %bb.f
  %.142 = phi ptr [ %i.f, %bb.f ], [ %i.f, %Py_DECREF.exit61 ], [ %i.f, %Py_DECREF.exit59 ], [ %i.u, %bb.r ] ; 3 uses
  %i.am = load i32, ptr %.142, align 8, !tbaa !13 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.y, label %_Py_NewRef.exit

bb.y:                                             ; preds = %bb.x
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %.142, align 8, !tbaa !13
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.z, label %_Py_NewRef.exit

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %.142) #6
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.d, %bb.c, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %Py_DECREF.exit53, %bb.e, %Py_DECREF.exit55, %bb.b
  %.2 = phi ptr [ %i.a, %bb.b ], [ null, %bb.z ], [ null, %bb.e ], [ %i.af, %bb.w ], [ %i.u, %Py_DECREF.exit55 ], [ %i.af, %Py_DECREF.exit53 ], [ %i.af, %bb.v ], [ null, %bb.x ], [ null, %bb.y ], [ %0, %bb.c ], [ %0, %bb.d ]
  ret ptr %.2
}

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromUnsignedLongLong(i64 noundef) local_unnamed_addr #1

declare ptr @PyNumber_Multiply(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyNumber_FloorDivide(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsLongAndOverflow(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare ptr @PyLong_FromUnsignedLong(i64 noundef) local_unnamed_addr #1

declare ptr @_PyLong_Lshift(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @factorial_partial_product(i64 noundef range(i64 1, 0) %0, i64 noundef range(i64 1, 0) %1, i64 noundef range(i64 -2147483648, 2147483648) %2) unnamed_addr #0 {
bb.a:
  %i.a = sub i64 %1, %0                           ; 2 uses
  %i.b = lshr i64 %i.a, 1                         ; 2 uses
  %i.c = icmp ult i64 %i.a, 130
  %i.d = mul nsw i64 %i.b, %2
  %i.e = icmp ult i64 %i.d, 65
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.02849 = add i64 %0, 2                         ; 2 uses
  %i.f = icmp ult i64 %.02849, %1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.02851 = phi i64 [ %.028, %.lr.ph ], [ %.02849, %.preheader ] ; 2 uses
  %.050 = phi i64 [ %i.g, %.lr.ph ], [ %0, %.preheader ]
  %i.g = mul i64 %.050, %.02851                   ; 2 uses
  %.028 = add i64 %.02851, 2                      ; 2 uses
  %i.h = icmp ult i64 %.028, %1
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.0.lcssa = phi i64 [ %0, %.preheader ], [ %i.g, %.lr.ph ]
  %i.i = tail call ptr @PyLong_FromUnsignedLong(i64 noundef %.0.lcssa) #6
  br label %Py_XDECREF.exit38

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.b, %0
  %i.k = or i64 %i.j, 1                           ; 3 uses
  %i.l = add i64 %i.k, -2
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 -1, -2) %i.l, i1 true)
  %i.n = sub nuw nsw i64 64, %i.m
  %i.o = tail call fastcc ptr @factorial_partial_product(i64 noundef %0, i64 noundef %i.k, i64 noundef %i.n) ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %Py_XDECREF.exit38, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call fastcc ptr @factorial_partial_product(i64 noundef %i.k, i64 noundef %1, i64 noundef %2) ; 5 uses
  %i.r = icmp eq ptr %i.q, null                   ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call ptr @PyNumber_Multiply(ptr noundef nonnull %i.o, ptr noundef nonnull %i.q) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.029.ph = phi ptr [ %i.s, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.t = load i32, ptr %i.o, align 8, !tbaa !13   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i.i, label %bb.f, label %Py_XDECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.o, align 8, !tbaa !13
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %Py_XDECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.o) #6
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.e, %bb.f, %bb.g
  br i1 %i.r, label %Py_XDECREF.exit38, label %bb.h

bb.h:                                             ; preds = %Py_XDECREF.exit
  %i.w = load i32, ptr %i.q, align 8, !tbaa !13   ; 2 uses
  %.not.i.i37 = icmp sgt i32 %i.w, -1
  br i1 %.not.i.i37, label %bb.i, label %Py_XDECREF.exit38

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.q, align 8, !tbaa !13
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %Py_XDECREF.exit38

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #6
  br label %Py_XDECREF.exit38

Py_XDECREF.exit38:                                ; preds = %bb.b, %bb.j, %bb.i, %bb.h, %Py_XDECREF.exit, %._crit_edge
  %.031 = phi ptr [ %i.i, %._crit_edge ], [ %.029.ph, %bb.j ], [ %.029.ph, %Py_XDECREF.exit ], [ %.029.ph, %bb.h ], [ %.029.ph, %bb.i ], [ null, %bb.b ]
  ret ptr %.031
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

declare ptr @_PyLong_GCD(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyNumber_Absolute(ptr noundef) local_unnamed_addr #1

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #1

declare i64 @_PyLong_NumBits(ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsUnsignedLongLong(ptr noundef) local_unnamed_addr #1

declare ptr @_PyLong_Rshift(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyNumber_Add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @math_integer_exec(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str) #6 ; 15 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit35, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @PyObject_SetAttrString(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.a) #6
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = load ptr, ptr @math_integer_methods, align 16, !tbaa !36 ; 2 uses
  %.not42 = icmp eq ptr %i.e, null
  br i1 %.not42, label %.critedge25, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not.i34 = icmp sgt i32 %i.f, -1
  br i1 %.not.i34, label %bb.d, label %Py_DECREF.exit35

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.a, align 8, !tbaa !13
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %Py_DECREF.exit35.sink.split, label %Py_DECREF.exit35

.lr.ph:                                           ; preds = %.preheader, %Py_DECREF.exit27
  %i.i = phi ptr [ %i.aa, %Py_DECREF.exit27 ], [ %i.e, %.preheader ]
  %.01943 = phi ptr [ %i.z, %Py_DECREF.exit27 ], [ @math_integer_methods, %.preheader ]
  %i.j = tail call ptr @PyObject_GetAttrString(ptr noundef %0, ptr noundef nonnull %i.i) #6 ; 8 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.l = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not.i32 = icmp sgt i32 %i.l, -1
  br i1 %.not.i32, label %bb.f, label %Py_DECREF.exit35

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.a, align 8, !tbaa !13
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %Py_DECREF.exit35.sink.split, label %Py_DECREF.exit35

bb.g:                                             ; preds = %.lr.ph
  %i.o = tail call i32 @PyObject_SetAttrString(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.a) #6
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not.i30 = icmp sgt i32 %i.q, -1
  br i1 %.not.i30, label %bb.i, label %Py_DECREF.exit31

bb.i:                                             ; preds = %bb.h
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.a, align 8, !tbaa !13
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.j, label %Py_DECREF.exit31

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #6
  br label %Py_DECREF.exit31

Py_DECREF.exit31:                                 ; preds = %bb.h, %bb.i, %bb.j
  %i.t = load i32, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %.not.i28 = icmp sgt i32 %i.t, -1
  br i1 %.not.i28, label %bb.k, label %Py_DECREF.exit35

bb.k:                                             ; preds = %Py_DECREF.exit31
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.j, align 8, !tbaa !13
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %Py_DECREF.exit35.sink.split, label %Py_DECREF.exit35

end_hunk_0
