inline.NumInlined: 71
inline.NumDeleted: 34
begin_hunk_0_@fileio_repr:bb.a

bb.g:                                             ; preds = %bb.e
  %i.q = and i8 %.val23, 8
  %.not8.i = icmp eq i8 %i.q, 0
  %i.r = and i8 %.val23, 2
  %.not9.i = icmp eq i8 %i.r, 0                   ; 2 uses
  br i1 %.not8.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.str.11..str.10.i = select i1 %.not9.i, ptr @.str.11, ptr @.str.10
  br label %mode_string.exit

bb.i:                                             ; preds = %bb.g
  br i1 %.not9.i, label %mode_string.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = and i8 %.val23, 4
  %.not10.i = icmp eq i8 %i.s, 0
  br i1 %.not10.i, label %mode_string.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = and i8 %.val23, 64
  %.not11.i = icmp eq i8 %i.t, 0
  %.str.13..str.12.i = select i1 %.not11.i, ptr @.str.13, ptr @.str.12
  br label %mode_string.exit

mode_string.exit:                                 ; preds = %bb.f, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i = phi ptr [ %.str.9..str.8.i, %bb.f ], [ @.str.14, %bb.j ], [ %.str.11..str.10.i, %bb.h ], [ %.str.13..str.12.i, %bb.k ], [ @.str.15, %bb.i ]
  %.not21 = icmp sgt i8 %.val23, -1
  %i.u = select i1 %.not21, ptr @.str.5, ptr @.str.4
  %i.v = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.3, ptr noundef %i.d, i32 noundef %i.m, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.u) #11
  br label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.d
  %i.w = call i32 @Py_ReprEnter(ptr noundef nonnull %0) #11 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.z = getelementptr i8, ptr %0, i64 20
  %.val22 = load i8, ptr %i.z, align 4            ; 7 uses
  %i.aa = and i8 %.val22, 1
  %.not.i25 = icmp eq i8 %i.aa, 0
  br i1 %.not.i25, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = and i8 %.val22, 2
  %.not13.i26 = icmp eq i8 %i.ab, 0
  %.str.9..str.8.i27 = select i1 %.not13.i26, ptr @.str.9, ptr @.str.8
  br label %mode_string.exit35

bb.o:                                             ; preds = %bb.m
  %i.ac = and i8 %.val22, 8
  %.not8.i29 = icmp eq i8 %i.ac, 0
  %i.ad = and i8 %.val22, 2
  %.not9.i30 = icmp eq i8 %i.ad, 0                ; 2 uses
  br i1 %.not8.i29, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.str.11..str.10.i31 = select i1 %.not9.i30, ptr @.str.11, ptr @.str.10
  br label %mode_string.exit35

bb.q:                                             ; preds = %bb.o
  br i1 %.not9.i30, label %mode_string.exit35, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = and i8 %.val22, 4
  %.not10.i32 = icmp eq i8 %i.ae, 0
  br i1 %.not10.i32, label %mode_string.exit35, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = and i8 %.val22, 64
  %.not11.i33 = icmp eq i8 %i.af, 0
  %.str.13..str.12.i34 = select i1 %.not11.i33, ptr @.str.13, ptr @.str.12
  br label %mode_string.exit35

mode_string.exit35:                               ; preds = %bb.n, %bb.p, %bb.q, %bb.r, %bb.s
  %.0.i28 = phi ptr [ %.str.9..str.8.i27, %bb.n ], [ @.str.14, %bb.r ], [ %.str.11..str.10.i31, %bb.p ], [ %.str.13..str.12.i34, %bb.s ], [ @.str.15, %bb.q ]
  %.not = icmp sgt i8 %.val22, -1
  %i.ag = select i1 %.not, ptr @.str.5, ptr @.str.4
  %i.ah = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.6, ptr noundef %i.d, ptr noundef %i.y, ptr noundef nonnull %.0.i28, ptr noundef nonnull %i.ag) #11
  call void @Py_ReprLeave(ptr noundef nonnull %0) #11
  br label %bb.v

bb.t:                                             ; preds = %bb.l
  %i.ai = icmp sgt i32 %i.w, 0
  br i1 %i.ai, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aj = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !32
  %i.ak = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aj, ptr noundef nonnull @.str.7, ptr noundef %i.d) #11 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %mode_string.exit35
  %.018 = phi ptr [ %i.ah, %mode_string.exit35 ], [ null, %bb.u ], [ null, %bb.t ] ; 3 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !33 ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.w, label %Py_DECREF.exit

bb.w:                                             ; preds = %bb.v
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !33
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.x, label %Py_DECREF.exit

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.al) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.x, %bb.w, %bb.v, %mode_string.exit, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.v, %mode_string.exit ], [ %.018, %bb.v ], [ %.018, %bb.w ], [ %.018, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.y

bb.y:                                             ; preds = %Py_DECREF.exit, %bb.b
  %.1 = phi ptr [ %i.h, %bb.b ], [ %.0, %Py_DECREF.exit ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @fileio_traverse(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val22 = load ptr, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %.not = icmp eq ptr %.val22, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(ptr noundef nonnull %.val22, ptr noundef %2) #11 ; 2 uses
  %.not19 = icmp eq i32 %i.b, 0
  br i1 %.not19, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %.not20 = icmp eq ptr %i.d, null
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 %1(ptr noundef nonnull %i.d, ptr noundef %2) #11 ; 2 uses
  %.not21 = icmp eq i32 %i.e, 0
  br i1 %.not21, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.3 = phi i32 [ 0, %bb.e ], [ %i.e, %bb.d ], [ %i.b, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @fileio_clear(ptr noundef captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !33
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_io_FileIO___init__(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [4 x ptr], align 16               ; 3 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !45  ; 3 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 16
  %.val68 = load i64, ptr %i.e, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %.val68, %bb.b ], [ 0, %bb.a ]
  %i.g = add i64 %i.f, %.val                      ; 2 uses
  %i.h = add i64 %i.g, -1                         ; 2 uses
  %i.i = add i64 %.val, -1
  %i.j = icmp ult i64 %i.i, 4
  %or.cond3 = select i1 %.not, i1 %i.j, i1 false
  %i.k = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.l = icmp ne ptr %i.k, null
  %or.cond7 = and i1 %i.l, %or.cond3
  br i1 %or.cond7, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.k, i64 noundef %.val, ptr noundef %2, ptr noundef null, ptr noundef nonnull @_io_FileIO___init__._parser, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #11 ; 2 uses
  %.not59 = icmp eq ptr %i.m, null
  br i1 %.not59, label %bb.by, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.m, %bb.d ], [ %i.k, %bb.c ] ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 8 uses
  %.not60 = icmp eq i64 %i.h, 0
  br i1 %.not60, label %bb.o, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32   ; 4 uses
  %.not61 = icmp eq ptr %i.q, null
  br i1 %.not61, label %.thread75, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val69 = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.s = getelementptr i8, ptr %.val69, i64 168
  %.val70 = load i64, ptr %i.s, align 8, !tbaa !50
  %i.t = and i64 %.val70, 268435456
  %.not62 = icmp eq i64 %i.t, 0
  br i1 %.not62, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.q) #11
  br label %bb.by

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.u = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.q, ptr noundef nonnull %i.c) #11 ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread72, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #12
  %i.x = load i64, ptr %i.c, align 8, !tbaa !51
  %.not63 = icmp eq i64 %i.w, %i.x
  br i1 %.not63, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.y, ptr noundef nonnull @.str.63) #11
  br label %.thread72

bb.k:                                             ; preds = %bb.i
  %i.z = add i64 %i.g, -2                         ; 2 uses
  %.not64 = icmp eq i64 %i.z, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br i1 %.not64, label %bb.o, label %.thread75

.thread72:                                        ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.by

.thread75:                                        ; preds = %bb.k, %bb.e
  %.147 = phi i64 [ %i.h, %bb.e ], [ %i.z, %bb.k ]
  %.043 = phi ptr [ @.str.60, %bb.e ], [ %i.u, %bb.k ] ; 2 uses
  %i.aa = getelementptr i8, ptr %i.n, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32 ; 2 uses
  %.not65 = icmp eq ptr %i.ab, null
  br i1 %.not65, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.thread75
  %i.ac = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.ab) #11 ; 3 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.by, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not66 = icmp eq i64 %.147, 1
  br i1 %.not66, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread75
  %.042 = phi i32 [ %i.ac, %bb.m ], [ 1, %.thread75 ]
  %i.ae = getelementptr i8, ptr %i.n, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.m, %.thread, %bb.n
  %.144 = phi ptr [ %.043, %bb.n ], [ %.043, %bb.m ], [ @.str.60, %.thread ], [ %i.u, %bb.k ] ; 4 uses
  %.1 = phi i32 [ %.042, %bb.n ], [ %i.ac, %bb.m ], [ 1, %.thread ], [ 1, %bb.k ] ; 2 uses
  %.041 = phi ptr [ %i.af, %bb.n ], [ @_Py_NoneStruct, %bb.m ], [ @_Py_NoneStruct, %.thread ], [ @_Py_NoneStruct, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !32
  %i.ag = getelementptr i8, ptr %0, i64 16        ; 11 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !11
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr i8, ptr %0, i64 20
  %i.ak = load i8, ptr %i.aj, align 4
  %.not.i = icmp sgt i8 %i.ak, -1
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = call fastcc i32 @internal_close(ptr noundef nonnull %0)
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %_io_FileIO___init___impl.exit, label %bb.s

bb.r:                                             ; preds = %bb.p
  store i32 -1, ptr %i.ag, align 8, !tbaa !11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %i.an = getelementptr i8, ptr %i.o, i64 8
  %.val159.i = load ptr, ptr %i.an, align 8, !tbaa !34
  %.not174.i = icmp eq ptr %.val159.i, @PyBool_Type
  br i1 %.not174.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ao = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !32
  %i.ap = call i32 @PyErr_WarnEx(ptr noundef %i.ao, ptr noundef nonnull @.str.64, i64 noundef 1) #11
  %.not123.i = icmp eq i32 %i.ap, 0
  br i1 %.not123.i, label %bb.u, label %_io_FileIO___init___impl.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.aq = call i32 @PyLong_AsInt(ptr noundef nonnull %i.o) #11 ; 3 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.v, label %.critedge145.i

bb.v:                                             ; preds = %bb.u
  %i.as = call ptr @PyErr_Occurred() #11
  %.not124.i = icmp eq ptr %i.as, null
  br i1 %.not124.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.at = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.at, ptr noundef nonnull @.str.65) #11
  br label %_io_FileIO___init___impl.exit

bb.x:                                             ; preds = %bb.v
  call void @PyErr_Clear() #11
  %i.au = call i32 @PyUnicode_FSConverter(ptr noundef nonnull %i.o, ptr noundef nonnull %i.a) #11
  %.not125.i = icmp eq i32 %i.au, 0
  br i1 %.not125.i, label %_io_FileIO___init___impl.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.aw = getelementptr i8, ptr %i.av, i64 32
  br label %.critedge145.i

.critedge145.i:                                   ; preds = %bb.y, %bb.u
  %.0101.i = phi ptr [ %i.aw, %bb.y ], [ null, %bb.u ]
  %i.ax = load i8, ptr %.144, align 1, !tbaa !33  ; 2 uses
  %.not126180.i = icmp eq i8 %i.ax, 0
  br i1 %.not126180.i, label %.loopexit175.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge145.i
  %i.ay = getelementptr i8, ptr %0, i64 20        ; 16 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.al, %.lr.ph.i
  %i.az = phi i8 [ %i.ax, %.lr.ph.i ], [ %i.br, %bb.al ]
  %.0102184.i = phi ptr [ %.144, %.lr.ph.i ], [ %i.ba, %bb.al ]
  %.0104183.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.al ] ; 6 uses
  %.0105182.i = phi i32 [ 0, %.lr.ph.i ], [ %.1106.i, %bb.al ] ; 6 uses
  %.0107181.i = phi i32 [ 0, %.lr.ph.i ], [ %.1108.i, %bb.al ] ; 6 uses
  %i.ba = getelementptr i8, ptr %.0102184.i, i64 1 ; 2 uses
  switch i8 %i.az, label %bb.ak [
    i8 120, label %bb.aa
    i8 114, label %bb.ac
    i8 119, label %bb.ae
    i8 97, label %bb.ag
    i8 98, label %bb.al
    i8 43, label %bb.ai
  ]

bb.aa:                                            ; preds = %bb.z
  %.not141.i = icmp eq i32 %.0104183.i, 0
  br i1 %.not141.i, label %bb.ab, label %.loopexit175.i

.loopexit175.i:                                   ; preds = %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %._crit_edge.i, %.critedge145.i
  %i.bb = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.bb, ptr noundef nonnull @.str.66) #11
  br label %.thread173.i

bb.ab:                                            ; preds = %bb.aa
  %i.bc = load i8, ptr %i.ay, align 4
  %i.bd = or i8 %i.bc, 5
  store i8 %i.bd, ptr %i.ay, align 4
  %i.be = or i32 %.0107181.i, 192
  br label %bb.al

bb.ac:                                            ; preds = %bb.z
  %.not140.i = icmp eq i32 %.0104183.i, 0
  br i1 %.not140.i, label %bb.ad, label %.loopexit175.i

bb.ad:                                            ; preds = %bb.ac
  %i.bf = load i8, ptr %i.ay, align 4
  %i.bg = or i8 %i.bf, 2
  store i8 %i.bg, ptr %i.ay, align 4
  br label %bb.al

bb.ae:                                            ; preds = %bb.z
  %.not139.i = icmp eq i32 %.0104183.i, 0
  br i1 %.not139.i, label %bb.af, label %.loopexit175.i

bb.af:                                            ; preds = %bb.ae
  %i.bh = load i8, ptr %i.ay, align 4
  %i.bi = or i8 %i.bh, 68
  store i8 %i.bi, ptr %i.ay, align 4
  %i.bj = or i32 %.0107181.i, 576
  br label %bb.al

bb.ag:                                            ; preds = %bb.z
  %.not138.i = icmp eq i32 %.0104183.i, 0
  br i1 %.not138.i, label %bb.ah, label %.loopexit175.i

bb.ah:                                            ; preds = %bb.ag
  %i.bk = load i8, ptr %i.ay, align 4
  %i.bl = or i8 %i.bk, 12
  store i8 %i.bl, ptr %i.ay, align 4
  %i.bm = or i32 %.0107181.i, 1088
  br label %bb.al

bb.ai:                                            ; preds = %bb.z
  %.not137.i = icmp eq i32 %.0105182.i, 0
  br i1 %.not137.i, label %bb.aj, label %.loopexit175.i

bb.aj:                                            ; preds = %bb.ai
  %i.bn = load i8, ptr %i.ay, align 4
  %i.bo = or i8 %i.bn, 6
  store i8 %i.bo, ptr %i.ay, align 4
  br label %bb.al

bb.ak:                                            ; preds = %bb.z
  %i.bp = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  %i.bq = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bp, ptr noundef nonnull @.str.67, ptr noundef nonnull %.144) #11 ; 0 uses
  br label %.thread173.i

bb.al:                                            ; preds = %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z
  %.1108.i = phi i32 [ %i.be, %bb.ab ], [ %.0107181.i, %bb.ad ], [ %i.bj, %bb.af ], [ %i.bm, %bb.ah ], [ %.0107181.i, %bb.z ], [ %.0107181.i, %bb.aj ] ; 2 uses
  %.1106.i = phi i32 [ %.0105182.i, %bb.ab ], [ %.0105182.i, %bb.ad ], [ %.0105182.i, %bb.af ], [ %.0105182.i, %bb.ah ], [ %.0105182.i, %bb.z ], [ 1, %bb.aj ]
  %.1.i = phi i32 [ 1, %bb.ab ], [ 1, %bb.ad ], [ 1, %bb.af ], [ 1, %bb.ah ], [ %.0104183.i, %bb.z ], [ %.0104183.i, %bb.aj ] ; 2 uses
  %i.br = load i8, ptr %i.ba, align 1, !tbaa !33  ; 2 uses
  %.not126.i = icmp eq i8 %i.br, 0
  br i1 %.not126.i, label %._crit_edge.i, label %bb.z, !llvm.loop !52

._crit_edge.i:                                    ; preds = %bb.al
  %i.bs = icmp eq i32 %.1.i, 0
  br i1 %i.bs, label %.loopexit175.i, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i
  %i.bt = load i8, ptr %i.ay, align 4             ; 2 uses
  %i.bu = and i8 %i.bt, 2
  %.not128.i = icmp eq i8 %i.bu, 0
end_hunk_0
