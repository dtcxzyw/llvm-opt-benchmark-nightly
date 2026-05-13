inline.NumInlined: 217
inline.NumDeleted: 75
begin_hunk_0_@_io__Buffered_seekable:bb.a
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !61
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !69
  %.not.i = icmp eq i32 %i.f, 0
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.24) #9
  br label %_io__Buffered_seekable_impl.exit

bb.d:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.25) #9
  br label %_io__Buffered_seekable_impl.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8, !tbaa !11
  %i.j = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 98744), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_io__Buffered_seekable_impl.exit

_io__Buffered_seekable_impl.exit:                 ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io__Buffered_readable(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !61
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !69
  %.not.i = icmp eq i32 %i.f, 0
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.24) #9
  br label %_io__Buffered_readable_impl.exit

bb.d:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.25) #9
  br label %_io__Buffered_readable_impl.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8, !tbaa !11
  %i.j = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 96896), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_io__Buffered_readable_impl.exit

_io__Buffered_readable_impl.exit:                 ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io__Buffered_fileno(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !61
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !69
  %.not.i = icmp eq i32 %i.f, 0
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.24) #9
  br label %_io__Buffered_fileno_impl.exit

bb.d:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.25) #9
  br label %_io__Buffered_fileno_impl.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8, !tbaa !11
  %i.j = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 83992), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_io__Buffered_fileno_impl.exit

_io__Buffered_fileno_impl.exit:                   ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io__Buffered_isatty(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !61
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !69
  %.not.i = icmp eq i32 %i.f, 0
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.24) #9
  br label %_io__Buffered_isatty_impl.exit

bb.d:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.25) #9
  br label %_io__Buffered_isatty_impl.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8, !tbaa !11
  %i.j = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88392), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_io__Buffered_isatty_impl.exit

_io__Buffered_isatty_impl.exit:                   ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @_io__Buffered__dealloc_warn(ptr noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !61
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_io__Buffered__dealloc_warn_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %.not7.i = icmp eq ptr %i.e, null
  br i1 %.not7.i, label %_io__Buffered__dealloc_warn_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr %i.e, ptr %i.a, align 16, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !11
  %i.g = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 72040), ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #9 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not8.i = icmp eq ptr %i.g, null
  br i1 %.not8.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i.i, label %bb.e, label %_io__Buffered__dealloc_warn_impl.exit

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !19
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %_io__Buffered__dealloc_warn_impl.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.g) #9
  br label %_io__Buffered__dealloc_warn_impl.exit

bb.g:                                             ; preds = %bb.c
  call void @PyErr_Clear() #9
  br label %_io__Buffered__dealloc_warn_impl.exit

_io__Buffered__dealloc_warn_impl.exit:            ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f, %bb.g
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal ptr @_io__Buffered_read(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i64 -1, ptr %i.d, align 8, !tbaa !92
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.7, i64 noundef %2, i64 noundef 0, i64 noundef 1) #9
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_io__Buffered_read_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = icmp slt i64 %2, 1
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %1, align 8, !tbaa !11
  %i.h = call i32 @_Py_convert_optional_to_ssize_t(ptr noundef %i.g, ptr noundef nonnull %i.d) #9
  %.not7 = icmp eq i32 %i.h, 0
  br i1 %.not7, label %_io__Buffered_read_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !61
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.f, label %bb.i

.thread:                                          ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !61
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.f, label %.thread46

bb.f:                                             ; preds = %.thread, %bb.e
  %i.o = getelementptr i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69
  %.not48.i = icmp eq i32 %i.p, 0
  %i.q = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11 ; 2 uses
  br i1 %.not48.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.24) #9
  br label %_io__Buffered_read_impl.exit

bb.h:                                             ; preds = %bb.f
  call void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.25) #9
  br label %_io__Buffered_read_impl.exit

bb.i:                                             ; preds = %bb.e
  %.pre = load i64, ptr %i.d, align 8, !tbaa !92  ; 2 uses
  %i.r = icmp slt i64 %.pre, -1
  br i1 %i.r, label %bb.j, label %.thread46

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.s, ptr noundef nonnull @.str.52) #9
  br label %_io__Buffered_read_impl.exit

.thread46:                                        ; preds = %.thread, %bb.i
  %i.t = phi i64 [ %.pre, %bb.i ], [ -1, %.thread ] ; 5 uses
  %i.u = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !63
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %.thread46
  %i.w = getelementptr i8, ptr %0, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !80
  %.not39.i = icmp eq i32 %i.x, 0
  %i.y = getelementptr i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !67   ; 2 uses
  br i1 %.not39.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = call i32 @_PyFileIO_closed(ptr noundef %i.z) #9
  br label %buffered_closed.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ab = call ptr @PyObject_GetAttr(ptr noundef %i.z, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77912)) #9 ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_io__Buffered_read_impl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.ab) #9 ; 3 uses
  %i.ae = load i32, ptr %i.ab, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ae, -1
  br i1 %.not.i.i.i, label %bb.o, label %buffered_closed.exit.i

bb.o:                                             ; preds = %bb.n
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.ab, align 8, !tbaa !19
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.p, label %buffered_closed.exit.i

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.ab) #9
  br label %buffered_closed.exit.i

buffered_closed.exit.i:                           ; preds = %bb.p, %bb.o, %bb.n, %bb.l
  %i.ah = phi i32 [ %i.ad, %bb.o ], [ %i.aa, %bb.l ], [ %i.ad, %bb.n ], [ %i.ad, %bb.p ] ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_io__Buffered_read_impl.exit, label %bb.q

bb.q:                                             ; preds = %buffered_closed.exit.i
  %.not40.i = icmp eq i32 %i.ah, 0
  br i1 %.not40.i, label %bb.t, label %.thread.i

.thread.i:                                        ; preds = %bb.q, %.thread46
  %i.aj = getelementptr i8, ptr %0, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !76
  %.not41.i = icmp eq i32 %i.ak, 0
  br i1 %.not41.i, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %.thread.i
  %i.al = getelementptr i8, ptr %0, i64 80
  %i.am = load i64, ptr %i.al, align 8, !tbaa !78 ; 2 uses
  %.not42.i = icmp eq i64 %i.am, -1
  br i1 %.not42.i, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr i8, ptr %0, i64 64
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !81
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %.critedge.i, label %bb.t

.critedge.i:                                      ; preds = %bb.s, %bb.r, %.thread.i
  %i.aq = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.aq, ptr noundef nonnull @.str.53) #9
  br label %_io__Buffered_read_impl.exit

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.ar = icmp eq i64 %i.t, -1
  br i1 %i.ar, label %bb.u, label %bb.bw

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr i8, ptr %0, i64 104
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !64
  %i.au = call i32 @PyThread_acquire_lock(ptr noundef %i.at, i32 noundef 0) #9
  %.not46.i = icmp eq i32 %i.au, 0
  br i1 %.not46.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.av = call fastcc i32 @_enter_buffered_busy(ptr noundef nonnull %0)
  %.not47.i = icmp eq i32 %i.av, 0
  br i1 %.not47.i, label %_io__Buffered_read_impl.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.aw = call i64 @PyThread_get_thread_ident() #9
  %i.ax = getelementptr i8, ptr %0, i64 112
  store volatile i64 %i.aw, ptr %i.ax, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr null, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.ay = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !76
  %.not.i52.i = icmp eq i32 %i.az, 0
  br i1 %.not.i52.i, label %.thread.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = getelementptr i8, ptr %0, i64 80
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !78 ; 2 uses
  %.not60.i.i = icmp eq i64 %i.bb, -1
  br i1 %.not60.i.i, label %.thread.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bc = getelementptr i8, ptr %0, i64 64        ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !81 ; 2 uses
  %i.be = sub i64 %i.bb, %i.bd                    ; 4 uses
  %.not61.i.i = icmp eq i64 %i.be, 0
  br i1 %.not61.i.i, label %.thread.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bf = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.bd
  %i.bh = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.bg, i64 noundef %i.be) #9 ; 3 uses
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !11
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_bufferedreader_read_all.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = load i64, ptr %i.bc, align 8, !tbaa !81
  %i.bk = add i64 %i.bj, %i.be
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !81
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.aa, %bb.y, %bb.x, %bb.w
  %3 = phi ptr [ null, %bb.y ], [ %i.bh, %bb.aa ], [ null, %bb.x ], [ null, %bb.w ] ; 2 uses
  %.not6197.i.i = phi i1 [ true, %bb.y ], [ false, %bb.aa ], [ true, %bb.x ], [ true, %bb.w ] ; 2 uses
  %i.bl = phi i64 [ 0, %bb.y ], [ %i.be, %bb.aa ], [ 0, %bb.x ], [ 0, %bb.w ]
  %i.bm = getelementptr i8, ptr %0, i64 36        ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !77
  %.not62.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not62.i.i, label %Py_DECREF.exit74.i.i, label %bb.ab

bb.ab:                                            ; preds = %.thread.i.i
  %i.bo = call fastcc ptr @_bufferedwriter_flush_unlocked(ptr noundef nonnull %0) ; 4 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %Py_XINCREF.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bq = load i32, ptr %i.bo, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.bq, -1
  br i1 %.not.i.i.i.i, label %bb.ad, label %Py_DECREF.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.br = add nsw i32 %i.bq, -1                   ; 2 uses
  store i32 %i.br, ptr %i.bo, align 8, !tbaa !19
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.ae, label %Py_DECREF.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @_Py_Dealloc(ptr noundef nonnull %i.bo) #9
  br label %Py_DECREF.exit.i.i.i

Py_DECREF.exit.i.i.i:                             ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.bt = load i32, ptr %i.ay, align 8, !tbaa !76
  %.not.i83.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i83.i.i, label %buffered_flush_and_rewind_unlocked.exit.i.i, label %bb.af

bb.af:                                            ; preds = %Py_DECREF.exit.i.i.i
  %i.bu = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !78
  %.not17.i.i.i = icmp eq i64 %i.bv, -1
  br i1 %.not17.i.i.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.bw = load i32, ptr %i.bm, align 4, !tbaa !77
  %.not18.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not18.i.i.i, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bx = getelementptr i8, ptr %0, i64 96
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !86
  %.not19.i.i.i = icmp eq i64 %i.by, -1
  br i1 %.not19.i.i.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %i.bz = getelementptr i8, ptr %0, i64 72
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !83 ; 2 uses
  %i.cb = icmp sgt i64 %i.ca, -1
  br i1 %i.cb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cc = getelementptr i8, ptr %0, i64 64
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !81
  %.neg.i.i.i = sub i64 %i.cd, %i.ca
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.neg20.i.i.i = phi i64 [ %.neg.i.i.i, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.ag ]
  %i.ce = call fastcc i64 @_buffered_raw_seek(ptr noundef nonnull %0, i64 noundef %.neg20.i.i.i, i32 noundef 1)
  store i64 -1, ptr %i.bu, align 8, !tbaa !78
  %.not21.i.i.i = icmp eq i64 %i.ce, -1
  br i1 %.not21.i.i.i, label %Py_XINCREF.exit.i.i, label %buffered_flush_and_rewind_unlocked.exit.i.i

buffered_flush_and_rewind_unlocked.exit.i.i:      ; preds = %bb.ak, %Py_DECREF.exit.i.i.i
  %i.cf = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !19 ; 2 uses
  %.not.i73.i.i = icmp sgt i32 %i.cf, -1
  br i1 %.not.i73.i.i, label %bb.al, label %Py_DECREF.exit74.i.i

bb.al:                                            ; preds = %buffered_flush_and_rewind_unlocked.exit.i.i
  %i.cg = add nsw i32 %i.cf, -1                   ; 2 uses
  store i32 %i.cg, ptr @_Py_NoneStruct, align 8, !tbaa !19
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.am, label %Py_DECREF.exit74.i.i

bb.am:                                            ; preds = %bb.al
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #9
  br label %Py_DECREF.exit74.i.i

Py_DECREF.exit74.i.i:                             ; preds = %bb.am, %bb.al, %buffered_flush_and_rewind_unlocked.exit.i.i, %.thread.i.i
  %i.ci = getelementptr i8, ptr %0, i64 80
  store i64 -1, ptr %i.ci, align 8, !tbaa !78
  %i.cj = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !67
  %i.cl = call i32 @PyObject_GetOptionalAttr(ptr noundef %i.ck, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 96952), ptr noundef nonnull %i.c) #9
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %Py_XINCREF.exit.i.i, label %bb.an

bb.an:                                            ; preds = %Py_DECREF.exit74.i.i
  %i.cn = load ptr, ptr %i.c, align 8, !tbaa !11  ; 6 uses
  %.not63.i.i = icmp eq ptr %i.cn, null
  br i1 %.not63.i.i, label %bb.ax, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.co = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !93 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cn, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !tbaa !46 ; 2 uses
  %i.cr = getelementptr i8, ptr %.val.i.i.i.i.i, i64 168
  %.val6.i.i.i.i.i = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.cs = and i64 %.val6.i.i.i.i.i, 2048
  %.not.i.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i.i.i, label %_PyVectorcall_FunctionInline.exit.i.i.i.i

_PyVectorcall_FunctionInline.exit.i.i.i.i:        ; preds = %bb.ao
  %i.ct = getelementptr i8, ptr %.val.i.i.i.i.i, i64 56
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !95
  %i.cv = getelementptr i8, ptr %i.cn, i64 %i.cu
  %.0.copyload.i.i.i.i.i = load ptr, ptr %i.cv, align 1 ; 2 uses
  %i.cw = icmp eq ptr %.0.copyload.i.i.i.i.i, null
  br i1 %i.cw, label %_PyVectorcall_FunctionInline.exit.thread.i.i.i.i, label %bb.ap

_PyVectorcall_FunctionInline.exit.thread.i.i.i.i: ; preds = %_PyVectorcall_FunctionInline.exit.i.i.i.i, %bb.ao
  %i.cx = call ptr @_PyObject_MakeTpCall(ptr noundef %i.cp, ptr noundef nonnull %i.cn, ptr noundef null, i64 noundef 0, ptr noundef null) #9
  br label %_PyObject_CallNoArgs.exit.i.i

bb.ap:                                            ; preds = %_PyVectorcall_FunctionInline.exit.i.i.i.i
  %i.cy = call ptr %.0.copyload.i.i.i.i.i(ptr noundef nonnull %i.cn, ptr noundef null, i64 noundef 0, ptr noundef null) #9, !inline_history !96
  %i.cz = call ptr @_Py_CheckFunctionResult(ptr noundef %i.cp, ptr noundef nonnull %i.cn, ptr noundef %i.cy, ptr noundef null) #9
  br label %_PyObject_CallNoArgs.exit.i.i

_PyObject_CallNoArgs.exit.i.i:                    ; preds = %bb.ap, %_PyVectorcall_FunctionInline.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.cx, %_PyVectorcall_FunctionInline.exit.thread.i.i.i.i ], [ %i.cz, %bb.ap ] ; 8 uses
  %i.da = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !19 ; 2 uses
  %.not.i71.i.i = icmp sgt i32 %i.db, -1
  br i1 %.not.i71.i.i, label %bb.aq, label %Py_DECREF.exit72.i.i

bb.aq:                                            ; preds = %_PyObject_CallNoArgs.exit.i.i
  %i.dc = add nsw i32 %i.db, -1                   ; 2 uses
  store i32 %i.dc, ptr %i.da, align 8, !tbaa !19
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.ar, label %Py_DECREF.exit72.i.i

bb.ar:                                            ; preds = %bb.aq
  call void @_Py_Dealloc(ptr noundef nonnull %i.da) #9
  br label %Py_DECREF.exit72.i.i

Py_DECREF.exit72.i.i:                             ; preds = %bb.ar, %bb.aq, %_PyObject_CallNoArgs.exit.i.i
  %i.de = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.de, label %Py_XINCREF.exit.i.i, label %bb.as

bb.as:                                            ; preds = %Py_DECREF.exit72.i.i
  %.not69.i.i = icmp eq ptr %.0.i.i.i.i, @_Py_NoneStruct
  br i1 %.not69.i.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.df = getelementptr i8, ptr %.0.i.i.i.i, i64 8
  %.val77.i.i = load ptr, ptr %i.df, align 8, !tbaa !46
  %i.dg = getelementptr i8, ptr %.val77.i.i, i64 168
  %.val79.i.i = load i64, ptr %i.dg, align 8, !tbaa !47
  %i.dh = and i64 %.val79.i.i, 134217728
  %.not70.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not70.i.i, label %bb.au, label %.thread99.i.i

bb.au:                                            ; preds = %bb.at
  %i.di = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.di, ptr noundef nonnull @.str.54) #9
  br label %Py_XINCREF.exit.i.i

bb.av:                                            ; preds = %bb.as
  br i1 %.not6197.i.i, label %.thread153.i.i, label %bb.bl

.thread99.i.i:                                    ; preds = %bb.at
  br i1 %.not6197.i.i, label %bb.bl, label %bb.aw

bb.aw:                                            ; preds = %.thread99.i.i
  call void @PyBytes_Concat(ptr noundef nonnull %i.b, ptr noundef nonnull %.0.i.i.i.i) #9
  %.pre.i.i.a = load ptr, ptr %i.b, align 8, !tbaa !11
  br label %bb.bl

bb.ax:                                            ; preds = %bb.an
  %i.dj = call ptr @PyList_New(i64 noundef 0) #9  ; 8 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %Py_XINCREF.exit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ax
  %i.dl = getelementptr i8, ptr %0, i64 48        ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %.backedge, %.preheader.i.i
  %i.dm = phi ptr [ %3, %.preheader.i.i ], [ %i.du, %.backedge ] ; 2 uses
  %.035.i.i = phi i64 [ %i.bl, %.preheader.i.i ], [ %i.ee, %.backedge ] ; 2 uses
  %.not64.i.i = icmp eq ptr %i.dm, null
  br i1 %.not64.i.i, label %Py_DECREF.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dn = call i32 @PyList_Append(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dm) #9
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %Py_XINCREF.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dp = load ptr, ptr %i.b, align 8, !tbaa !11  ; 4 uses
  %.not65.i.i = icmp eq ptr %i.dp, null
  br i1 %.not65.i.i, label %Py_DECREF.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !19 ; 2 uses
  %.not.i.i54.i = icmp sgt i32 %i.dq, -1
  br i1 %.not.i.i54.i, label %bb.bc, label %Py_DECREF.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.dr = add nsw i32 %i.dq, -1                   ; 2 uses
  store i32 %i.dr, ptr %i.dp, align 8, !tbaa !19
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.bd, label %Py_DECREF.exit.i.i

bb.bd:                                            ; preds = %bb.bc
  call void @_Py_Dealloc(ptr noundef nonnull %i.dp) #9
  br label %Py_DECREF.exit.i.i

Py_DECREF.exit.i.i:                               ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ay
  %i.dt = load ptr, ptr %i.cj, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.dt, ptr %i.a, align 8, !tbaa !11
  %i.du = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 96800), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #9 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.du, ptr %i.b, align 8, !tbaa !11
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %Py_XDECREF.exit91.i.i, label %bb.be

bb.be:                                            ; preds = %Py_DECREF.exit.i.i
  %.not66.i.i = icmp eq ptr %i.du, @_Py_NoneStruct
  br i1 %.not66.i.i, label %.thread101.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dw = getelementptr i8, ptr %i.du, i64 8
  %.val.i.i = load ptr, ptr %i.dw, align 8, !tbaa !46
  %i.dx = getelementptr i8, ptr %.val.i.i, i64 168
  %.val78.i.i = load i64, ptr %i.dx, align 8, !tbaa !47
  %i.dy = and i64 %.val78.i.i, 134217728
  %.not67.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not67.i.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.dz = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.dz, ptr noundef nonnull @.str.18) #9
  br label %Py_XINCREF.exit.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.ea = getelementptr i8, ptr %i.du, i64 16
  %.val82.i.i = load i64, ptr %i.ea, align 8, !tbaa !20 ; 3 uses
  %i.eb = icmp eq i64 %.val82.i.i, 0
  br i1 %i.eb, label %.thread101.i.i, label %bb.bj

.thread101.i.i:                                   ; preds = %bb.bh, %bb.be
  %i.ec = icmp eq i64 %.035.i.i, 0
  br i1 %i.ec, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %.thread101.i.i
  %i.ed = call ptr @PyBytes_Join(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 47096), ptr noundef nonnull %i.dj) #9 ; 2 uses
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %i.ee = add i64 %.val82.i.i, %.035.i.i
  %i.ef = load i64, ptr %i.dl, align 8, !tbaa !89 ; 2 uses
  %.not68.i.i = icmp eq i64 %i.ef, -1
  br i1 %.not68.i.i, label %.backedge, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eg = add i64 %i.ef, %.val82.i.i
  store i64 %i.eg, ptr %i.dl, align 8, !tbaa !89
  br label %.backedge

.backedge:                                        ; preds = %bb.bk, %bb.bj
  br label %bb.ay

bb.bl:                                            ; preds = %bb.bi, %.thread101.i.i, %bb.aw, %.thread99.i.i, %bb.av
  %.2.i.i = phi ptr [ %.0.i.i.i.i, %.thread99.i.i ], [ %i.ed, %bb.bi ], [ %.0.i.i.i.i, %bb.aw ], [ null, %.thread101.i.i ], [ @_Py_NoneStruct, %bb.av ] ; 2 uses
  %.037.i.i = phi ptr [ null, %.thread99.i.i ], [ %i.dj, %bb.bi ], [ null, %bb.aw ], [ %i.dj, %.thread101.i.i ], [ null, %bb.av ] ; 2 uses
  %.036.i.i = phi ptr [ %.0.i.i.i.i, %.thread99.i.i ], [ %i.ed, %bb.bi ], [ %.pre.i.i.a, %bb.aw ], [ %i.du, %.thread101.i.i ], [ %3, %bb.av ] ; 2 uses
  %.not.i84.i.i = icmp eq ptr %.036.i.i, null
  br i1 %.not.i84.i.i, label %Py_XINCREF.exit.i.i, label %.thread153.i.i

.thread153.i.i:                                   ; preds = %bb.bl, %bb.av
  %.036160.i.i = phi ptr [ %.036.i.i, %bb.bl ], [ @_Py_NoneStruct, %bb.av ] ; 4 uses
  %.037159.i.i = phi ptr [ %.037.i.i, %bb.bl ], [ null, %bb.av ] ; 2 uses
  %.2158.i.i = phi ptr [ %.2.i.i, %bb.bl ], [ @_Py_NoneStruct, %bb.av ] ; 2 uses
  %i.eh = load i32, ptr %.036160.i.i, align 8, !tbaa !19 ; 2 uses
  %i.ei = icmp ugt i32 %i.eh, -1073741825
  br i1 %i.ei, label %Py_XINCREF.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %.thread153.i.i
  %i.ej = add nuw i32 %i.eh, 1
  store i32 %i.ej, ptr %.036160.i.i, align 8, !tbaa !19
  br label %Py_XINCREF.exit.i.i

Py_XINCREF.exit.i.i:                              ; preds = %bb.az, %bb.bm, %.thread153.i.i, %bb.bl, %bb.bg, %bb.ax, %bb.au, %Py_DECREF.exit72.i.i, %Py_DECREF.exit74.i.i, %bb.ak, %bb.ab
  %.036110.ph.i.i = phi ptr [ null, %bb.ab ], [ null, %bb.ak ], [ %.036160.i.i, %bb.bm ], [ null, %bb.ax ], [ null, %bb.au ], [ null, %bb.bg ], [ null, %Py_DECREF.exit72.i.i ], [ null, %Py_DECREF.exit74.i.i ], [ %.036160.i.i, %.thread153.i.i ], [ null, %bb.bl ], [ null, %bb.az ] ; 4 uses
  %.037109.ph.i.i = phi ptr [ null, %bb.ab ], [ null, %bb.ak ], [ %.037159.i.i, %bb.bm ], [ null, %bb.ax ], [ null, %bb.au ], [ %i.dj, %bb.bg ], [ null, %Py_DECREF.exit72.i.i ], [ null, %Py_DECREF.exit74.i.i ], [ %.037159.i.i, %.thread153.i.i ], [ %.037.i.i, %bb.bl ], [ %i.dj, %bb.az ] ; 4 uses
  %.2108.ph.i.i = phi ptr [ null, %bb.ab ], [ null, %bb.ak ], [ %.2158.i.i, %bb.bm ], [ null, %bb.ax ], [ %.0.i.i.i.i, %bb.au ], [ null, %bb.bg ], [ null, %Py_DECREF.exit72.i.i ], [ null, %Py_DECREF.exit74.i.i ], [ %.2158.i.i, %.thread153.i.i ], [ %.2.i.i, %bb.bl ], [ null, %bb.az ] ; 4 uses
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !11 ; 4 uses
  %.not.i85.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i85.i.i, label %Py_XDECREF.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %Py_XINCREF.exit.i.i
  %i.ek = load i32, ptr %.pr.i.i, align 8, !tbaa !19 ; 2 uses
  %.not.i.i86.i.i = icmp sgt i32 %i.ek, -1
  br i1 %.not.i.i86.i.i, label %bb.bo, label %Py_XDECREF.exit.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.el = add nsw i32 %i.ek, -1                   ; 2 uses
  store i32 %i.el, ptr %.pr.i.i, align 8, !tbaa !19
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.bp, label %Py_XDECREF.exit.i.i

bb.bp:                                            ; preds = %bb.bo
  call void @_Py_Dealloc(ptr noundef nonnull %.pr.i.i) #9
  br label %Py_XDECREF.exit.i.i

Py_XDECREF.exit.i.i:                              ; preds = %bb.bp, %bb.bo, %bb.bn, %Py_XINCREF.exit.i.i
  %.not.i88.i.i = icmp eq ptr %.2108.ph.i.i, null
  br i1 %.not.i88.i.i, label %Py_XDECREF.exit91.i.i, label %bb.bq

bb.bq:                                            ; preds = %Py_XDECREF.exit.i.i
  %i.en = load i32, ptr %.2108.ph.i.i, align 8, !tbaa !19 ; 2 uses
  %.not.i.i89.i.i = icmp sgt i32 %i.en, -1
  br i1 %.not.i.i89.i.i, label %bb.br, label %Py_XDECREF.exit91.i.i

bb.br:                                            ; preds = %bb.bq
  %i.eo = add nsw i32 %i.en, -1                   ; 2 uses
  store i32 %i.eo, ptr %.2108.ph.i.i, align 8, !tbaa !19
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.bs, label %Py_XDECREF.exit91.i.i

bb.bs:                                            ; preds = %bb.br
  call void @_Py_Dealloc(ptr noundef nonnull %.2108.ph.i.i) #9
  br label %Py_XDECREF.exit91.i.i

Py_XDECREF.exit91.i.i:                            ; preds = %Py_DECREF.exit.i.i, %bb.bs, %bb.br, %bb.bq, %Py_XDECREF.exit.i.i
  %.036110115123.i.i = phi ptr [ %.036110.ph.i.i, %bb.bs ], [ %.036110.ph.i.i, %Py_XDECREF.exit.i.i ], [ %.036110.ph.i.i, %bb.bq ], [ %.036110.ph.i.i, %bb.br ], [ null, %Py_DECREF.exit.i.i ] ; 4 uses
  %.037109116122.i.i = phi ptr [ %.037109.ph.i.i, %bb.bs ], [ %.037109.ph.i.i, %Py_XDECREF.exit.i.i ], [ %.037109.ph.i.i, %bb.bq ], [ %.037109.ph.i.i, %bb.br ], [ %i.dj, %Py_DECREF.exit.i.i ] ; 4 uses
  %.not.i92.i.i = icmp eq ptr %.037109116122.i.i, null
  br i1 %.not.i92.i.i, label %_bufferedreader_read_all.exit.i, label %bb.bt

bb.bt:                                            ; preds = %Py_XDECREF.exit91.i.i
  %i.eq = load i32, ptr %.037109116122.i.i, align 8, !tbaa !19 ; 2 uses
  %.not.i.i93.i.i = icmp sgt i32 %i.eq, -1
  br i1 %.not.i.i93.i.i, label %bb.bu, label %_bufferedreader_read_all.exit.i

bb.bu:                                            ; preds = %bb.bt
  %i.er = add nsw i32 %i.eq, -1                   ; 2 uses
  store i32 %i.er, ptr %.037109116122.i.i, align 8, !tbaa !19
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.bv, label %_bufferedreader_read_all.exit.i

bb.bv:                                            ; preds = %bb.bu
  call void @_Py_Dealloc(ptr noundef nonnull %.037109116122.i.i) #9
  br label %_bufferedreader_read_all.exit.i

_bufferedreader_read_all.exit.i:                  ; preds = %bb.bv, %bb.bu, %bb.bt, %Py_XDECREF.exit91.i.i, %bb.z
  %.0.i53.i = phi ptr [ null, %bb.z ], [ %.036110115123.i.i, %Py_XDECREF.exit91.i.i ], [ %.036110115123.i.i, %bb.bt ], [ %.036110115123.i.i, %bb.bu ], [ %.036110115123.i.i, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.cf

bb.bw:                                            ; preds = %bb.t
  %i.et = getelementptr i8, ptr %0, i64 32
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !76
  %.not.i55.i = icmp eq i32 %i.eu, 0
  br i1 %.not.i55.i, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ev = getelementptr i8, ptr %0, i64 80
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !78 ; 2 uses
  %.not16.i.i = icmp eq i64 %i.ew, -1
  br i1 %.not16.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ex = getelementptr i8, ptr %0, i64 64
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !81
  %i.ez = sub i64 %i.ew, %i.ey
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %i.fa = phi i64 [ %i.ez, %bb.by ], [ 0, %bb.bx ], [ 0, %bb.bw ]
  %.not17.i.i = icmp sgt i64 %i.t, %i.fa
  br i1 %.not17.i.i, label %_bufferedreader_read_fast.exit.thread.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fb = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.fc = getelementptr i8, ptr %0, i64 64        ; 3 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !81
  %i.fe = getelementptr i8, ptr %i.fb, i64 %i.fd
  %i.ff = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.fe, i64 noundef %i.t) #9 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ff, null
  br i1 %.not18.i.i, label %_io__Buffered_read_impl.exit, label %_bufferedreader_read_fast.exit.i

_bufferedreader_read_fast.exit.i:                 ; preds = %bb.ca
  %i.fg = load i64, ptr %i.fc, align 8, !tbaa !81
  %i.fh = add i64 %i.fg, %i.t
  store i64 %i.fh, ptr %i.fc, align 8, !tbaa !81
  %.not43.i = icmp eq ptr %i.ff, @_Py_NoneStruct
  br i1 %.not43.i, label %_bufferedreader_read_fast.exit.thread.i, label %_io__Buffered_read_impl.exit

_bufferedreader_read_fast.exit.thread.i:          ; preds = %_bufferedreader_read_fast.exit.i, %bb.bz
  %i.fi = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !19 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.fi, -1
  br i1 %.not.i.i, label %bb.cb, label %Py_DECREF.exit.i

bb.cb:                                            ; preds = %_bufferedreader_read_fast.exit.thread.i
  %i.fj = add nsw i32 %i.fi, -1                   ; 2 uses
  store i32 %i.fj, ptr @_Py_NoneStruct, align 8, !tbaa !19
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.cc, label %Py_DECREF.exit.i

bb.cc:                                            ; preds = %bb.cb
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #9
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.cc, %bb.cb, %_bufferedreader_read_fast.exit.thread.i
  %i.fl = getelementptr i8, ptr %0, i64 104
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !64
  %i.fn = call i32 @PyThread_acquire_lock(ptr noundef %i.fm, i32 noundef 0) #9
  %.not44.i = icmp eq i32 %i.fn, 0
  br i1 %.not44.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %Py_DECREF.exit.i
  %i.fo = call fastcc i32 @_enter_buffered_busy(ptr noundef nonnull %0)
  %.not45.i = icmp eq i32 %i.fo, 0
  br i1 %.not45.i, label %_io__Buffered_read_impl.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %Py_DECREF.exit.i
  %i.fp = call i64 @PyThread_get_thread_ident() #9
  %i.fq = getelementptr i8, ptr %0, i64 112
  store volatile i64 %i.fp, ptr %i.fq, align 8, !tbaa !82
  %i.fr = call fastcc ptr @_bufferedreader_read_generic(ptr noundef nonnull %0, i64 noundef %i.t)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %_bufferedreader_read_all.exit.i
  %.034.i = phi ptr [ %.0.i53.i, %_bufferedreader_read_all.exit.i ], [ %i.fr, %bb.ce ]
  %i.fs = getelementptr i8, ptr %0, i64 112
  store volatile i64 0, ptr %i.fs, align 8, !tbaa !82
  %i.ft = getelementptr i8, ptr %0, i64 104
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !64
  call void @PyThread_release_lock(ptr noundef %i.fu) #9
  br label %_io__Buffered_read_impl.exit

_io__Buffered_read_impl.exit:                     ; preds = %bb.cf, %bb.cd, %_bufferedreader_read_fast.exit.i, %bb.ca, %bb.v, %.critedge.i, %buffered_closed.exit.i, %bb.m, %bb.j, %bb.h, %bb.g, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.cd ], [ null, %bb.j ], [ %.034.i, %bb.cf ], [ null, %bb.g ], [ null, %bb.v ], [ %i.ff, %_bufferedreader_read_fast.exit.i ], [ null, %bb.h ], [ null, %.critedge.i ], [ null, %buffered_closed.exit.i ], [ null, %bb.m ], [ null, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_io__Buffered_peek(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.44, i64 noundef %2, i64 noundef 0, i64 noundef 1) #9
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_io__Buffered_peek_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !11
  %i.d = tail call ptr @_PyNumber_Index(ptr noundef %i.c) #9 ; 5 uses
  %.not20 = icmp eq ptr %i.d, null
  br i1 %.not20, label %Py_DECREF.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.d) #9
  %i.f = load i32, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

end_hunk_0
