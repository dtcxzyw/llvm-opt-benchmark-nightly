inline.NumInlined: 326
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@textiowrapper_clear:bb.a
  br i1 %.not.i, label %bb.ag, label %Py_DECREF.exit

bb.ag:                                            ; preds = %bb.af
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !19
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.ah, label %Py_DECREF.exit

bb.ah:                                            ; preds = %bb.ag
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ba) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.ah, %bb.ag, %bb.af, %Py_DECREF.exit78
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @textiowrapper_iternext(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !78
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.42) #10
  br label %textiowrapper_iternext_lock_held.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !91
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.48) #10
  br label %textiowrapper_iternext_lock_held.exit

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 95         ; 2 uses
  store i8 0, ptr %i.i, align 1, !tbaa !92
  %i.j = getelementptr i8, ptr %0, i64 192
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.l = getelementptr i8, ptr %i.k, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !94
  %i.n = getelementptr i8, ptr %0, i64 8
  %.val39.i = load ptr, ptr %i.n, align 8, !tbaa !20
  %.not44.i = icmp eq ptr %.val39.i, %i.m
  br i1 %.not44.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !17
  %i.o = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 97112), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #10 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not28.i = icmp eq ptr %i.o, null
  br i1 %.not28.i, label %textiowrapper_iternext_lock_held.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val37.i = load ptr, ptr %i.p, align 8, !tbaa !20 ; 2 uses
  %i.q = getelementptr i8, ptr %.val37.i, i64 168
  %.val38.i = load i64, ptr %i.q, align 8, !tbaa !21
  %i.r = and i64 %.val38.i, 268435456
  %.not29.i = icmp eq i64 %i.r, 0
  br i1 %.not29.i, label %bb.h, label %.thread41.i

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr @PyExc_OSError, align 8, !tbaa !17
  %i.t = getelementptr i8, ptr %.val37.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.v = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.s, ptr noundef nonnull @.str.49, ptr noundef %i.u) #10 ; 0 uses
  %i.w = load i32, ptr %i.o, align 8, !tbaa !19   ; 2 uses
  %.not.i33.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i33.i, label %bb.i, label %textiowrapper_iternext_lock_held.exit

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.o, align 8, !tbaa !19
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %textiowrapper_iternext_lock_held.exit

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %i.o) #10
  br label %textiowrapper_iternext_lock_held.exit

bb.k:                                             ; preds = %bb.e
  %i.z = tail call fastcc ptr @_textiowrapper_readline(ptr noundef nonnull %0, i64 noundef -1) ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %textiowrapper_iternext_lock_held.exit, label %.thread41.i

.thread41.i:                                      ; preds = %bb.k, %bb.g
  %.02443.i = phi ptr [ %i.z, %bb.k ], [ %i.o, %bb.g ] ; 5 uses
  %i.ab = getelementptr i8, ptr %.02443.i, i64 16
  %.024.val.i = load i64, ptr %i.ab, align 8, !tbaa !31
  %i.ac = icmp eq i64 %.024.val.i, 0
  br i1 %i.ac, label %bb.l, label %textiowrapper_iternext_lock_held.exit

bb.l:                                             ; preds = %.thread41.i
  %i.ad = load i32, ptr %.02443.i, align 8, !tbaa !19 ; 2 uses
  %.not.i31.i = icmp sgt i32 %i.ad, -1
  br i1 %.not.i31.i, label %bb.m, label %Py_DECREF.exit32.i

bb.m:                                             ; preds = %bb.l
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %.02443.i, align 8, !tbaa !19
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.n, label %Py_DECREF.exit32.i

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %.02443.i) #10
  br label %Py_DECREF.exit32.i

Py_DECREF.exit32.i:                               ; preds = %bb.n, %bb.m, %bb.l
  %i.ag = getelementptr i8, ptr %0, i64 152       ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !17 ; 4 uses
  %.not30.i = icmp eq ptr %i.ah, null
  br i1 %.not30.i, label %Py_DECREF.exit.i, label %bb.o

bb.o:                                             ; preds = %Py_DECREF.exit32.i
  store ptr null, ptr %i.ag, align 8, !tbaa !17
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ai, -1
  br i1 %.not.i.i, label %bb.p, label %Py_DECREF.exit.i

bb.p:                                             ; preds = %bb.o
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !19
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.q, label %Py_DECREF.exit.i

bb.q:                                             ; preds = %bb.p
  call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #10
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.q, %bb.p, %bb.o, %Py_DECREF.exit32.i
  %i.al = getelementptr i8, ptr %0, i64 93
  %i.am = load i8, ptr %i.al, align 1, !tbaa !95
  store i8 %i.am, ptr %i.i, align 1, !tbaa !92
  br label %textiowrapper_iternext_lock_held.exit

textiowrapper_iternext_lock_held.exit:            ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.i, %bb.j, %bb.k, %.thread41.i, %Py_DECREF.exit.i
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %.02443.i, %.thread41.i ], [ null, %Py_DECREF.exit.i ], [ null, %bb.k ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.f ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_io_TextIOWrapper___init__(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca [6 x ptr], align 16               ; 3 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.f = getelementptr i8, ptr %1, i64 16
  %.val106 = load i64, ptr %i.f, align 8, !tbaa !43 ; 3 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %2, i64 16
  %.val107 = load i64, ptr %i.g, align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.val107, %bb.b ], [ 0, %bb.a ]
  %i.i = add i64 %i.h, %.val106                   ; 2 uses
  %i.j = add i64 %i.i, -1                         ; 2 uses
  %i.k = add i64 %.val106, -1
  %i.l = icmp ult i64 %i.k, 6
  %or.cond3 = select i1 %.not, i1 %i.l, i1 false
  %i.m = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.n = icmp ne ptr %i.m, null
  %or.cond7 = and i1 %i.n, %or.cond3
  br i1 %or.cond7, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.m, i64 noundef %.val106, ptr noundef %2, ptr noundef null, ptr noundef nonnull @_io_TextIOWrapper___init__._parser, i32 noundef 1, i32 noundef 6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.c) #10 ; 2 uses
  %.not87 = icmp eq ptr %i.o, null
  br i1 %.not87, label %bb.di, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.m, %bb.c ] ; 6 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17   ; 7 uses
  %.not88 = icmp eq i64 %i.j, 0
  br i1 %.not88, label %.thread114, label %bb.e

.thread114:                                       ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.r = getelementptr i8, ptr %0, i64 16         ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !78
  %i.s = getelementptr i8, ptr %0, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !91
  br label %bb.ad

bb.e:                                             ; preds = %.thread
  %i.t = getelementptr i8, ptr %i.p, i64 8        ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17   ; 4 uses
  %.not89 = icmp eq ptr %i.u, null
  br i1 %.not89, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq ptr %i.u, @_Py_NoneStruct
  br i1 %i.v, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.u, i64 8
  %.val103 = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.x = getelementptr i8, ptr %.val103, i64 168
  %.val105 = load i64, ptr %i.x, align 8, !tbaa !21
  %i.y = and i64 %.val105, 268435456
  %.not90 = icmp eq i64 %i.y, 0
  br i1 %.not90, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %3 = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.z = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %3, ptr noundef nonnull %i.d) #10 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.thread109, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #11
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !40
  %.not91 = icmp eq i64 %i.ab, %i.ac
  br i1 %.not91, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  call void @PyErr_SetString(ptr noundef %i.ad, ptr noundef nonnull @.str.14) #10
  br label %.thread109

.thread109:                                       ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %bb.di

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, ptr noundef nonnull %i.u) #10
  br label %bb.di

bb.m:                                             ; preds = %bb.k, %bb.f
  %.064 = phi ptr [ %i.z, %bb.k ], [ null, %bb.f ] ; 2 uses
  %i.ae = add i64 %i.i, -2                        ; 2 uses
  %.not92 = icmp eq i64 %i.ae, 0
  br i1 %.not92, label %bb.ac, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.e
  %.068 = phi i64 [ %i.ae, %bb.m ], [ %i.j, %bb.e ] ; 2 uses
  %.165 = phi ptr [ %.064, %bb.m ], [ null, %bb.e ] ; 4 uses
  %i.af = getelementptr i8, ptr %i.p, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17 ; 3 uses
  %.not93 = icmp eq ptr %i.ag, null
  br i1 %.not93, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = add i64 %.068, -1                       ; 2 uses
  %.not94 = icmp eq i64 %i.ah, 0
  br i1 %.not94, label %bb.ac, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.169 = phi i64 [ %i.ah, %bb.o ], [ %.068, %bb.n ] ; 2 uses
  %.062 = phi ptr [ %i.ag, %bb.o ], [ @_Py_NoneStruct, %bb.n ] ; 3 uses
  %i.ai = getelementptr i8, ptr %i.p, i64 24      ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !17 ; 4 uses
  %.not95 = icmp eq ptr %i.aj, null
  br i1 %.not95, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = icmp eq ptr %i.aj, @_Py_NoneStruct
  br i1 %i.ak, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr i8, ptr %i.aj, i64 8
  %.val = load ptr, ptr %i.al, align 8, !tbaa !20
  %i.am = getelementptr i8, ptr %.val, i64 168
  %.val104 = load i64, ptr %i.am, align 8, !tbaa !21
  %i.an = and i64 %.val104, 268435456
  %.not96 = icmp eq i64 %i.an, 0
  br i1 %.not96, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %4 = load ptr, ptr %i.ai, align 8, !tbaa !17
  %i.ao = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %4, ptr noundef nonnull %i.e) #10 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.thread112, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #11
  %i.ar = load i64, ptr %i.e, align 8, !tbaa !40
  %.not97 = icmp eq i64 %i.aq, %i.ar
  br i1 %.not97, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  call void @PyErr_SetString(ptr noundef %i.as, ptr noundef nonnull @.str.14) #10
  br label %.thread112

.thread112:                                       ; preds = %bb.s, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %bb.di

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.122, ptr noundef nonnull %i.aj) #10
  br label %bb.di

bb.x:                                             ; preds = %bb.v, %bb.q
  %.060 = phi ptr [ %i.ao, %bb.v ], [ null, %bb.q ] ; 2 uses
  %i.at = add i64 %.169, -1                       ; 2 uses
  %.not98 = icmp eq i64 %i.at, 0
  br i1 %.not98, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.p
  %.270 = phi i64 [ %i.at, %bb.x ], [ %.169, %bb.p ]
  %.161 = phi ptr [ %.060, %bb.x ], [ null, %bb.p ] ; 2 uses
  %i.au = getelementptr i8, ptr %i.p, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !17 ; 2 uses
  %.not99 = icmp eq ptr %i.av, null
  br i1 %.not99, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aw = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.av) #10 ; 3 uses
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.di, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ay = icmp ugt i64 %.270, 1
  br i1 %i.ay, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.058 = phi i32 [ %i.aw, %bb.aa ], [ 0, %bb.y ]
  %i.az = getelementptr i8, ptr %i.p, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !17
  %i.bb = call i32 @PyObject_IsTrue(ptr noundef %i.ba) #10 ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.di, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.x, %bb.o, %bb.m
  %.266 = phi ptr [ %.165, %bb.ab ], [ %.165, %bb.aa ], [ %.165, %bb.x ], [ %.165, %bb.o ], [ %.064, %bb.m ] ; 2 uses
  %.163 = phi ptr [ %.062, %bb.ab ], [ %.062, %bb.aa ], [ %.062, %bb.x ], [ %i.ag, %bb.o ], [ @_Py_NoneStruct, %bb.m ] ; 2 uses
  %.2 = phi ptr [ %.161, %bb.ab ], [ %.161, %bb.aa ], [ %.060, %bb.x ], [ null, %bb.o ], [ null, %bb.m ] ; 2 uses
  %.159 = phi i32 [ %.058, %bb.ab ], [ %i.aw, %bb.aa ], [ 0, %bb.x ], [ 0, %bb.o ], [ 0, %bb.m ] ; 2 uses
  %.057 = phi i32 [ %i.bb, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.x ], [ 0, %bb.o ], [ 0, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.bd = getelementptr i8, ptr %0, i64 16        ; 3 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !78
  %i.be = getelementptr i8, ptr %0, i64 20
  store i32 0, ptr %i.be, align 4, !tbaa !91
  %i.bf = icmp eq ptr %.266, null
  br i1 %i.bf, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %.thread114, %bb.ac
  %i.bg = phi ptr [ %i.r, %.thread114 ], [ %i.bd, %bb.ac ] ; 2 uses
  %.057129 = phi i32 [ 0, %.thread114 ], [ %.057, %bb.ac ] ; 2 uses
  %.159127 = phi i32 [ 0, %.thread114 ], [ %.159, %bb.ac ] ; 2 uses
  %.2125 = phi ptr [ null, %.thread114 ], [ %.2, %bb.ac ] ; 2 uses
  %.163123 = phi ptr [ @_Py_NoneStruct, %.thread114 ], [ %.163, %bb.ac ] ; 2 uses
  %i.bh = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !61
  %i.bj = call ptr @_PyInterpreterState_GetConfig(ptr noundef %i.bi) #10
  %i.bk = getelementptr i8, ptr %i.bj, i64 184
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !96
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %.critedge.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bm = load ptr, ptr @PyExc_EncodingWarning, align 8, !tbaa !17
  %i.bn = call i32 @PyErr_WarnEx(ptr noundef %i.bm, ptr noundef nonnull @.str.124, i64 noundef 1) #10
  %.not163.i = icmp eq i32 %i.bn, 0
  br i1 %.not163.i, label %.critedge.i, label %_io_TextIOWrapper___init___impl.exit

.critedge.i:                                      ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.bo = phi i1 [ true, %bb.ae ], [ true, %bb.ad ], [ false, %bb.ac ] ; 2 uses
  %i.bp = phi ptr [ %i.bg, %bb.ae ], [ %i.bg, %bb.ad ], [ %i.bd, %bb.ac ]
  %.057128 = phi i32 [ %.057129, %bb.ae ], [ %.057129, %bb.ad ], [ %.057, %bb.ac ]
  %.159126 = phi i32 [ %.159127, %bb.ae ], [ %.159127, %bb.ad ], [ %.159, %bb.ac ]
  %.2124 = phi ptr [ %.2125, %bb.ae ], [ %.2125, %bb.ad ], [ %.2, %bb.ac ] ; 7 uses
  %.163122 = phi ptr [ %.163123, %bb.ae ], [ %.163123, %bb.ad ], [ %.163, %bb.ac ] ; 8 uses
  %.266120 = phi ptr [ null, %bb.ae ], [ null, %bb.ad ], [ %.266, %bb.ac ] ; 3 uses
  %i.bq = icmp eq ptr %.163122, @_Py_NoneStruct
  br i1 %i.bq, label %io_check_errors.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %.critedge.i
  %i.br = getelementptr i8, ptr %.163122, i64 8
  %.val226.i = load ptr, ptr %i.br, align 8, !tbaa !20 ; 2 uses
  %i.bs = getelementptr i8, ptr %.val226.i, i64 168
  %.val227.i = load i64, ptr %i.bs, align 8, !tbaa !21
  %i.bt = and i64 %.val227.i, 268435456
  %.not164.i = icmp eq i64 %i.bt, 0
  br i1 %.not164.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bu = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !17
  %i.bv = getelementptr i8, ptr %.val226.i, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !30
  %i.bx = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bu, ptr noundef nonnull @.str.125, ptr noundef %i.bw) #10 ; 0 uses
  br label %_io_TextIOWrapper___init___impl.exit

bb.ah:                                            ; preds = %bb.af
  %i.by = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !61 ; 2 uses
  %i.ca = call ptr @_PyInterpreterState_GetConfig(ptr noundef %i.bz) #10
  %i.cb = getelementptr i8, ptr %i.ca, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !102
  %.not.i232.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i232.i, label %io_check_errors.exit.thread.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cd = getelementptr i8, ptr %i.bz, i64 11832
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !103
  %.not9.i.i = icmp eq ptr %i.ce, null
  br i1 %.not9.i.i, label %io_check_errors.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cf = call ptr @_PyUnicode_AsUTF8NoNUL(ptr noundef %.163122) #10 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_io_TextIOWrapper___init___impl.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ch = call ptr @PyCodec_LookupError(ptr noundef nonnull %i.cf) #10 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.ch, null
  br i1 %.not10.i.i, label %_io_TextIOWrapper___init___impl.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ci, -1
  br i1 %.not.i.i.i, label %bb.am, label %io_check_errors.exit.thread.i

bb.am:                                            ; preds = %bb.al
  %i.cj = add nsw i32 %i.ci, -1                   ; 2 uses
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !19
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.an, label %io_check_errors.exit.thread.i

bb.an:                                            ; preds = %bb.am
  call void @_Py_Dealloc(ptr noundef nonnull %i.ch) #10
  br label %io_check_errors.exit.thread.i

io_check_errors.exit.thread.i:                    ; preds = %bb.an, %bb.am, %bb.al, %bb.ai, %bb.ah, %.critedge.i
  %.0133.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 101208), %.critedge.i ], [ %.163122, %bb.ai ], [ %.163122, %bb.ah ], [ %.163122, %bb.al ], [ %.163122, %bb.am ], [ %.163122, %bb.an ] ; 4 uses
  %i.cl = call ptr @_PyUnicode_AsUTF8NoNUL(ptr noundef %.0133.i) #10 ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_io_TextIOWrapper___init___impl.exit, label %bb.ao

bb.ao:                                            ; preds = %io_check_errors.exit.thread.i
  %.not.i233.i = icmp eq ptr %.2124, null
  br i1 %.not.i233.i, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cn = load i8, ptr %.2124, align 1, !tbaa !19
  switch i8 %i.cn, label %validate_newline.exit.i [
    i8 0, label %bb.at
    i8 10, label %bb.aq
    i8 13, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.co = getelementptr i8, ptr %.2124, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !19
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.at, label %validate_newline.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.cr = getelementptr i8, ptr %.2124, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !19
  switch i8 %i.cs, label %validate_newline.exit.i [
    i8 0, label %bb.at
    i8 10, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar
  %i.ct = getelementptr i8, ptr %.2124, i64 2
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !19
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %bb.at, label %validate_newline.exit.i

validate_newline.exit.i:                          ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %i.cw = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  %i.cx = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cw, ptr noundef nonnull @.str.77, ptr noundef nonnull %.2124) #10 ; 0 uses
  br label %_io_TextIOWrapper___init___impl.exit
end_hunk_0
