inline.NumInlined: 798
inline.NumDeleted: 249
begin_hunk_0_@os_readlink:bb.a
}

; Function Attrs: nounwind uwtable
define internal ptr @os_copy_file_range(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [5 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread96

.thread96:                                        ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !104
  %i.e = add i64 %2, -3
  %i.f = add i64 %i.e, %.val
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %2, -3                           ; 3 uses
  %i.h = icmp ult i64 %i.g, 3
  %i.i = icmp ne ptr %1, null
  %i.j = and i1 %i.i, %i.h
  br i1 %i.j, label %.thread, label %bb.c

bb.c:                                             ; preds = %.thread96, %bb.b
  %i.k = phi i64 [ %i.f, %.thread96 ], [ %i.g, %bb.b ]
  %i.l = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @os_copy_file_range._parser, i32 noundef 3, i32 noundef 5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.c) #19 ; 2 uses
  %.not53 = icmp eq ptr %i.l, null
  br i1 %.not53, label %.thread71, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.m = phi i64 [ %i.k, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %i.l, %bb.c ], [ %1, %bb.b ]   ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !108
  %i.p = call i32 @PyLong_AsInt(ptr noundef %i.o) #19 ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  %i.r = call ptr @PyErr_Occurred() #19
  %.not54 = icmp eq ptr %i.r, null
  br i1 %.not54, label %bb.e, label %.thread71

bb.e:                                             ; preds = %bb.d, %.thread
  %i.s = getelementptr i8, ptr %i.n, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !108
  %i.u = call i32 @PyLong_AsInt(ptr noundef %i.t) #19 ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = call ptr @PyErr_Occurred() #19
  %.not55 = icmp eq ptr %i.w, null
  br i1 %.not55, label %bb.g, label %.thread71

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = getelementptr i8, ptr %i.n, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !108
  %i.z = call ptr @_PyNumber_Index(ptr noundef %i.y) #19 ; 5 uses
  %.not56 = icmp eq ptr %i.z, null
  br i1 %.not56, label %Py_DECREF.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.z) #19 ; 3 uses
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !118 ; 2 uses
  %.not.i = icmp sgt i32 %i.ab, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.z, align 8, !tbaa !118
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %i.z) #19
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.i, %bb.h
  %i.ae = icmp eq i64 %i.aa, -1
  br i1 %i.ae, label %Py_DECREF.exit.thread, label %bb.k

Py_DECREF.exit.thread:                            ; preds = %bb.g, %Py_DECREF.exit
  %i.af = call ptr @PyErr_Occurred() #19
  %.not57 = icmp eq ptr %i.af, null
  br i1 %.not57, label %.thread68, label %.thread71

bb.k:                                             ; preds = %Py_DECREF.exit
  %i.ag = icmp slt i64 %i.aa, 0
  br i1 %i.ag, label %.thread68, label %bb.l

.thread68:                                        ; preds = %Py_DECREF.exit.thread, %bb.k
  %i.ah = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !108
  call void @PyErr_SetString(ptr noundef %i.ah, ptr noundef nonnull @.str.276) #19
  br label %.thread71

bb.l:                                             ; preds = %bb.k
  %.not58 = icmp eq i64 %i.m, 0
  br i1 %.not58, label %.thread79, label %bb.m

.thread79:                                        ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr i8, ptr %i.n, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !108 ; 3 uses
  %.not59 = icmp eq ptr %i.aj, null
  br i1 %.not59, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not60 = icmp eq i64 %i.m, 1
  br i1 %.not60, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.044 = phi ptr [ %i.aj, %bb.n ], [ @_Py_NoneStruct, %bb.m ]
  %i.ak = getelementptr i8, ptr %i.n, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !108
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.1 = phi ptr [ %.044, %bb.o ], [ %i.aj, %bb.n ] ; 2 uses
  %.043 = phi ptr [ %i.al, %bb.o ], [ @_Py_NoneStruct, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %.not.i62 = icmp eq ptr %.1, @_Py_NoneStruct
  br i1 %.not.i62, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = call i64 @PyLong_AsLong(ptr noundef %.1) #19
  store i64 %i.am, ptr %i.a, align 8, !tbaa !157
  %i.an = call ptr @PyErr_Occurred() #19
  %.not.i.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i.not.i, label %bb.r, label %os_copy_file_range_impl.exit

bb.r:                                             ; preds = %bb.q, %bb.p
  %.015.i = phi ptr [ null, %bb.p ], [ %i.a, %bb.q ] ; 2 uses
  %.not22.i = icmp eq ptr %.043, @_Py_NoneStruct
  br i1 %.not22.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = call i64 @PyLong_AsLong(ptr noundef %.043) #19
  store i64 %i.ao, ptr %i.b, align 8, !tbaa !157
  %i.ap = call ptr @PyErr_Occurred() #19
  %.not.i26.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i26.not.i, label %bb.t, label %os_copy_file_range_impl.exit

bb.t:                                             ; preds = %.thread79, %bb.s, %bb.r
  %.015.i83 = phi ptr [ %.015.i, %bb.r ], [ %.015.i, %bb.s ], [ null, %.thread79 ]
  %.017.i = phi ptr [ null, %bb.r ], [ %i.b, %bb.s ], [ null, %.thread79 ]
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %i.aq = call ptr @PyEval_SaveThread() #19
  %i.ar = call i64 @copy_file_range(i32 noundef %i.p, ptr noundef %.015.i83, i32 noundef %i.u, ptr noundef %.017.i, i64 noundef %i.aa, i32 noundef 0) #19 ; 2 uses
  call void @PyEval_RestoreThread(ptr noundef %i.aq) #19
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %bb.v, label %.critedge.i

bb.v:                                             ; preds = %bb.u
  %i.at = tail call ptr @__errno_location() #21
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = icmp eq i32 %i.au, 4
  br i1 %i.av, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.aw = call i32 @PyErr_CheckSignals() #19
  %.not24.i = icmp eq i32 %i.aw, 0
  br i1 %.not24.i, label %bb.u, label %os_copy_file_range_impl.exit, !llvm.loop !160

bb.x:                                             ; preds = %bb.v
  %i.ax = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.ay = call ptr @PyErr_SetFromErrno(ptr noundef %i.ax) #19
  br label %os_copy_file_range_impl.exit

.critedge.i:                                      ; preds = %bb.u
  %i.az = call ptr @PyLong_FromSsize_t(i64 noundef %i.ar) #19
  br label %os_copy_file_range_impl.exit

os_copy_file_range_impl.exit:                     ; preds = %bb.w, %bb.q, %bb.s, %bb.x, %.critedge.i
  %.0.i = phi ptr [ null, %bb.s ], [ %i.az, %.critedge.i ], [ null, %bb.q ], [ %i.ay, %bb.x ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.thread71

.thread71:                                        ; preds = %.thread68, %Py_DECREF.exit.thread, %os_copy_file_range_impl.exit, %bb.c, %bb.d, %bb.f
  %.046 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ %.0.i, %os_copy_file_range_impl.exit ], [ null, %bb.c ], [ null, %Py_DECREF.exit.thread ], [ null, %.thread68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  ret ptr %.046
}

; Function Attrs: nounwind uwtable
define internal ptr @os_splice(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [6 x ptr], align 16               ; 3 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.e, align 8, !tbaa !104
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.g = add i64 %i.f, %2                         ; 2 uses
  %i.h = add i64 %i.g, -3                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !7
  %i.i = add i64 %2, -3
  %i.j = icmp ult i64 %i.i, 4
  %i.k = icmp ne ptr %1, null
  %i.l = and i1 %i.k, %i.j
  %or.cond5 = and i1 %.not, %i.l
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @os_splice._parser, i32 noundef 3, i32 noundef 6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.c) #19 ; 2 uses
  %.not60 = icmp eq ptr %i.m, null
  br i1 %.not60, label %.thread80, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.m, %bb.d ], [ %1, %bb.c ]   ; 6 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !108
  %i.p = call i32 @PyLong_AsInt(ptr noundef %i.o) #19 ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread
  %i.r = call ptr @PyErr_Occurred() #19
  %.not61 = icmp eq ptr %i.r, null
  br i1 %.not61, label %bb.f, label %.thread80

bb.f:                                             ; preds = %bb.e, %.thread
  %i.s = getelementptr i8, ptr %i.n, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !108
  %i.u = call i32 @PyLong_AsInt(ptr noundef %i.t) #19 ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = call ptr @PyErr_Occurred() #19
  %.not62 = icmp eq ptr %i.w, null
  br i1 %.not62, label %bb.h, label %.thread80

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = getelementptr i8, ptr %i.n, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !108
  %i.z = call ptr @_PyNumber_Index(ptr noundef %i.y) #19 ; 5 uses
  %.not63 = icmp eq ptr %i.z, null
  br i1 %.not63, label %Py_DECREF.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.z) #19 ; 3 uses
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !118 ; 2 uses
  %.not.i = icmp sgt i32 %i.ab, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.z, align 8, !tbaa !118
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.z) #19
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.k, %bb.j, %bb.i
  %i.ae = icmp eq i64 %i.aa, -1
  br i1 %i.ae, label %Py_DECREF.exit.thread, label %bb.l

Py_DECREF.exit.thread:                            ; preds = %bb.h, %Py_DECREF.exit
  %i.af = call ptr @PyErr_Occurred() #19
  %.not64 = icmp eq ptr %i.af, null
  br i1 %.not64, label %.thread77, label %.thread80

bb.l:                                             ; preds = %Py_DECREF.exit
  %i.ag = icmp slt i64 %i.aa, 0
  br i1 %i.ag, label %.thread77, label %bb.m

.thread77:                                        ; preds = %Py_DECREF.exit.thread, %bb.l
  %i.ah = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !108
  call void @PyErr_SetString(ptr noundef %i.ah, ptr noundef nonnull @.str.276) #19
  br label %.thread80

bb.m:                                             ; preds = %bb.l
  %.not65 = icmp eq i64 %i.h, 0
  br i1 %.not65, label %.thread88, label %bb.n

.thread88:                                        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  br label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr i8, ptr %i.n, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !108 ; 3 uses
  %.not66 = icmp eq ptr %i.aj, null
  br i1 %.not66, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = add i64 %i.g, -4                        ; 2 uses
  %.not67 = icmp eq i64 %i.ak, 0
  br i1 %.not67, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.051 = phi i64 [ %i.ak, %bb.o ], [ %i.h, %bb.n ]
  %.047 = phi ptr [ %i.aj, %bb.o ], [ @_Py_NoneStruct, %bb.n ] ; 2 uses
  %i.al = getelementptr i8, ptr %i.n, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !108 ; 3 uses
  %.not68 = icmp eq ptr %i.am, null
  br i1 %.not68, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = icmp ugt i64 %.051, 1
  br i1 %i.an, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %.046 = phi ptr [ %i.am, %bb.q ], [ @_Py_NoneStruct, %bb.p ]
  %i.ao = getelementptr i8, ptr %i.n, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !108
  %i.aq = call i32 @_PyLong_UnsignedInt_Converter(ptr noundef %i.ap, ptr noundef nonnull %i.d) #19
  %.not69 = icmp eq i32 %i.aq, 0
  br i1 %.not69, label %.thread80, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r
  %.pre = load i32, ptr %i.d, align 4, !tbaa !7
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.q, %bb.o
  %4 = phi i32 [ %.pre, %._crit_edge ], [ 0, %bb.q ], [ 0, %bb.o ] ; 2 uses
  %.148 = phi ptr [ %.047, %._crit_edge ], [ %.047, %bb.q ], [ %i.aj, %bb.o ] ; 2 uses
  %.1 = phi ptr [ %.046, %._crit_edge ], [ %i.am, %bb.q ], [ @_Py_NoneStruct, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %.not.i71 = icmp eq ptr %.148, @_Py_NoneStruct
  br i1 %.not.i71, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = call i64 @PyLong_AsLong(ptr noundef %.148) #19
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !157
  %i.as = call ptr @PyErr_Occurred() #19
  %.not.i.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i.not.i, label %bb.u, label %os_splice_impl.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  %.016.i = phi ptr [ null, %bb.s ], [ %i.a, %bb.t ] ; 2 uses
  %.not22.i = icmp eq ptr %.1, @_Py_NoneStruct
  br i1 %.not22.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = call i64 @PyLong_AsLong(ptr noundef %.1) #19
  store i64 %i.at, ptr %i.b, align 8, !tbaa !157
  %i.au = call ptr @PyErr_Occurred() #19
  %.not.i26.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i26.not.i, label %bb.w, label %os_splice_impl.exit

bb.w:                                             ; preds = %.thread88, %bb.v, %bb.u
  %.016.i92 = phi ptr [ %.016.i, %bb.u ], [ %.016.i, %bb.v ], [ null, %.thread88 ]
  %i.av = phi i32 [ %4, %bb.u ], [ %4, %bb.v ], [ 0, %.thread88 ]
  %.017.i = phi ptr [ null, %bb.u ], [ %i.b, %bb.v ], [ null, %.thread88 ]
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w
  %i.aw = call ptr @PyEval_SaveThread() #19
  %i.ax = call i64 @splice(i32 noundef %i.p, ptr noundef %.016.i92, i32 noundef %i.u, ptr noundef %.017.i, i64 noundef %i.aa, i32 noundef %i.av) #19 ; 2 uses
  call void @PyEval_RestoreThread(ptr noundef %i.aw) #19
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %bb.x
  %i.az = tail call ptr @__errno_location() #21
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bb = icmp eq i32 %i.ba, 4
  br i1 %i.bb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bc = call i32 @PyErr_CheckSignals() #19
  %.not24.i = icmp eq i32 %i.bc, 0
  br i1 %.not24.i, label %bb.x, label %os_splice_impl.exit, !llvm.loop !161

bb.aa:                                            ; preds = %bb.y
  %i.bd = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.be = call ptr @PyErr_SetFromErrno(ptr noundef %i.bd) #19
  br label %os_splice_impl.exit

.critedge.i:                                      ; preds = %bb.x
  %i.bf = call ptr @PyLong_FromSsize_t(i64 noundef %i.ax) #19
  br label %os_splice_impl.exit

os_splice_impl.exit:                              ; preds = %bb.z, %bb.t, %bb.v, %bb.aa, %.critedge.i
  %.0.i = phi ptr [ null, %bb.v ], [ %i.bf, %.critedge.i ], [ null, %bb.t ], [ %i.be, %bb.aa ], [ null, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.thread80

.thread80:                                        ; preds = %.thread77, %Py_DECREF.exit.thread, %os_splice_impl.exit, %bb.d, %bb.e, %bb.g, %bb.r
  %.050 = phi ptr [ null, %bb.e ], [ null, %bb.g ], [ %.0.i, %os_splice_impl.exit ], [ null, %bb.r ], [ null, %bb.d ], [ null, %Py_DECREF.exit.thread ], [ null, %.thread77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  ret ptr %.050
}

; Function Attrs: nounwind uwtable
define internal ptr @os_rename(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.path_t, align 8             ; 8 uses
  %5 = alloca %struct.path_t, align 8             ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !104
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.f = add i64 %2, -2
  %i.g = add i64 %i.f, %i.e                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) @__const.os_rename.src, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull align 8 dereferenceable(96) @__const.os_rename.dst, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 -100, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 -100, ptr %i.c, align 4, !tbaa !7
  %i.h = icmp eq i64 %2, 2
  %i.i = icmp ne ptr %1, null
  %i.j = and i1 %i.i, %i.h
  %or.cond5 = and i1 %i.j, %.not
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @os_rename._parser, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not30 = icmp eq ptr %i.k, null
  br i1 %.not30, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %1, %bb.c ]   ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !108
  %i.n = call fastcc i32 @path_converter(ptr noundef %i.m, ptr noundef %4)
  %.not31 = icmp eq i32 %i.n, 0
  br i1 %.not31, label %bb.m, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.o = getelementptr i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.q = call fastcc i32 @path_converter(ptr noundef %i.p, ptr noundef %5)
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not33 = icmp eq i64 %i.g, 0
  br i1 %.not33, label %dir_fd_converter.exit41.thread57, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %i.l, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !108  ; 5 uses
  %.not34 = icmp eq ptr %i.s, null
  br i1 %.not34, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = icmp eq ptr %i.s, @_Py_NoneStruct
  br i1 %i.t, label %dir_fd_converter.exit.thread52, label %bb.i

dir_fd_converter.exit.thread52:                   ; preds = %bb.h
  store i32 -100, ptr %i.b, align 4, !tbaa !7
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = call i32 @PyIndex_Check(ptr noundef nonnull %i.s) #19
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %dir_fd_converter.exit.thread, label %dir_fd_converter.exit

dir_fd_converter.exit.thread:                     ; preds = %bb.i
  %i.v = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !108
  %i.w = getelementptr i8, ptr %i.s, i64 8
  %.val.i = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.x = call ptr @_PyType_Name(ptr noundef %.val.i) #19
  %i.y = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.v, ptr noundef nonnull @.str.210, ptr noundef %i.x) #19 ; 0 uses
  br label %bb.m

dir_fd_converter.exit:                            ; preds = %bb.i
  %i.z = call fastcc i32 @_fd_converter(ptr noundef nonnull %i.s, ptr noundef nonnull %i.b)
  %.not35 = icmp eq i32 %i.z, 0
  br i1 %.not35, label %bb.m, label %bb.j

bb.j:                                             ; preds = %dir_fd_converter.exit.thread52, %dir_fd_converter.exit
  %.not36 = icmp eq i64 %i.g, 1
  br i1 %.not36, label %dir_fd_converter.exit41.thread57, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.aa = getelementptr i8, ptr %i.l, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !108 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, @_Py_NoneStruct
  br i1 %i.ac, label %dir_fd_converter.exit41.thread57, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = call i32 @PyIndex_Check(ptr noundef %i.ab) #19
  %.not.i38 = icmp eq i32 %i.ad, 0
  br i1 %.not.i38, label %dir_fd_converter.exit41.thread, label %dir_fd_converter.exit41

dir_fd_converter.exit41.thread:                   ; preds = %bb.l
  %i.ae = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !108
  %i.af = getelementptr i8, ptr %i.ab, i64 8
  %.val.i40 = load ptr, ptr %i.af, align 8, !tbaa !110
  %i.ag = call ptr @_PyType_Name(ptr noundef %.val.i40) #19
  %i.ah = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ae, ptr noundef nonnull @.str.210, ptr noundef %i.ag) #19 ; 0 uses
  br label %bb.m

dir_fd_converter.exit41:                          ; preds = %bb.l
  %i.ai = call fastcc i32 @_fd_converter(ptr noundef %i.ab, ptr noundef nonnull %i.c)
  %.not37 = icmp eq i32 %i.ai, 0
  br i1 %.not37, label %bb.m, label %dir_fd_converter.exit41._crit_edge

dir_fd_converter.exit41._crit_edge:               ; preds = %dir_fd_converter.exit41
  %.pre = load i32, ptr %i.c, align 4, !tbaa !7
  br label %dir_fd_converter.exit41.thread57

dir_fd_converter.exit41.thread57:                 ; preds = %bb.k, %dir_fd_converter.exit41._crit_edge, %bb.j, %bb.f
  %i.aj = phi i32 [ %.pre, %dir_fd_converter.exit41._crit_edge ], [ -100, %bb.f ], [ -100, %bb.j ], [ -100, %bb.k ]
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !7
  %i.al = call fastcc ptr @internal_rename(ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %5, i32 noundef %i.ak, i32 noundef %i.aj)
  br label %bb.m

bb.m:                                             ; preds = %dir_fd_converter.exit41.thread, %dir_fd_converter.exit.thread, %dir_fd_converter.exit41, %dir_fd_converter.exit, %bb.e, %.thread, %bb.d, %dir_fd_converter.exit41.thread57
  %.0 = phi ptr [ %i.al, %dir_fd_converter.exit41.thread57 ], [ null, %dir_fd_converter.exit41 ], [ null, %dir_fd_converter.exit ], [ null, %bb.e ], [ null, %.thread ], [ null, %bb.d ], [ null, %dir_fd_converter.exit.thread ], [ null, %dir_fd_converter.exit41.thread ]
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !148
  call void @PyMem_Free(ptr noundef %i.an) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !108 ; 4 uses
  %.not.i42 = icmp eq ptr %i.ap, null
  br i1 %.not.i42, label %Py_DECREF.exit16.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !118 ; 2 uses
  %.not.i15.i = icmp sgt i32 %i.aq, -1
  br i1 %.not.i15.i, label %bb.o, label %Py_DECREF.exit16.i

bb.o:                                             ; preds = %bb.n
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !118
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.p, label %Py_DECREF.exit16.i

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.ap) #19
  br label %Py_DECREF.exit16.i

Py_DECREF.exit16.i:                               ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !108 ; 4 uses
  %.not14.i = icmp eq ptr %i.au, null
end_hunk_0
begin_hunk_1_@os_wait4:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = icmp eq ptr %3, null
  %i.c = icmp eq i64 %2, 2
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @os_wait4._parser, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = call i32 @PyLong_AsInt(ptr noundef %i.g) #19 ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.j = call ptr @PyErr_Occurred() #19
  %.not25 = icmp eq ptr %i.j, null
  br i1 %.not25, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %.thread
  %i.k = getelementptr i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !108
  %i.m = call i32 @PyLong_AsInt(ptr noundef %i.l) #19 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.o = call ptr @PyErr_Occurred() #19
  %.not26 = icmp eq ptr %i.o, null
  br i1 %.not26, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.d
  %.sink = phi i32 [ %i.m, %bb.d ], [ -1, %bb.e ]
  %i.p = call fastcc ptr @os_wait4_impl(i32 noundef %i.h, i32 noundef %.sink)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.b ], [ %i.p, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_waitid(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.97, i64 noundef %2, i64 noundef 3, i64 noundef 3) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %idtype_t_converter.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !108
  %i.c = tail call i32 @PyLong_AsInt(ptr noundef %i.b) #19 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %idtype_t_converter.exit

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PyErr_Occurred() #19
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %idtype_t_converter.exit, label %idtype_t_converter.exit.thread

idtype_t_converter.exit:                          ; preds = %bb.d, %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = tail call i32 @PyLong_AsInt(ptr noundef %i.g) #19 ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %idtype_t_converter.exit
  %i.j = tail call ptr @PyErr_Occurred() #19
  %.not15 = icmp eq ptr %i.j, null
  br i1 %.not15, label %bb.f, label %idtype_t_converter.exit.thread

bb.f:                                             ; preds = %bb.e, %idtype_t_converter.exit
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !108
  %i.m = tail call i32 @PyLong_AsInt(ptr noundef %i.l) #19 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.g, label %idtype_t_converter.exit.thread.sink.split

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @PyErr_Occurred() #19
  %.not16 = icmp eq ptr %i.o, null
  br i1 %.not16, label %idtype_t_converter.exit.thread.sink.split, label %idtype_t_converter.exit.thread

idtype_t_converter.exit.thread.sink.split:        ; preds = %bb.g, %bb.f
  %.sink = phi i32 [ %i.m, %bb.f ], [ -1, %bb.g ]
  %i.p = tail call fastcc ptr @os_waitid_impl(ptr noundef %0, i32 noundef %i.c, i32 noundef %i.h, i32 noundef %.sink)
  br label %idtype_t_converter.exit.thread

idtype_t_converter.exit.thread:                   ; preds = %idtype_t_converter.exit.thread.sink.split, %bb.d, %bb.g, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.b ], [ null, %bb.d ], [ %i.p, %idtype_t_converter.exit.thread.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_waitpid(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.98, i64 noundef %2, i64 noundef 2, i64 noundef 2) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !108
  %i.c = tail call i32 @PyLong_AsInt(ptr noundef %i.b) #19 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PyErr_Occurred() #19
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = tail call i32 @PyLong_AsInt(ptr noundef %i.g) #19 ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @PyErr_Occurred() #19
  %.not14 = icmp eq ptr %i.j, null
  br i1 %.not14, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %bb.e
  %.sink = phi i32 [ %i.h, %bb.e ], [ -1, %bb.f ]
  %i.k = tail call fastcc ptr @os_waitpid_impl(i32 noundef %i.c, i32 noundef %.sink)
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.b ], [ %i.k, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_pidfd_open(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !104
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.e = add i64 %i.d, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.f = add i64 %2, -1
  %i.g = icmp ult i64 %i.f, 2
  %i.h = icmp ne ptr %1, null
  %i.i = and i1 %i.h, %i.g
  %or.cond5 = and i1 %.not, %i.i
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @os_pidfd_open._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not26 = icmp eq ptr %i.j, null
  br i1 %.not26, label %os_pidfd_open_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ %1, %bb.c ]   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !108
  %i.m = call i32 @PyLong_AsInt(ptr noundef %i.l) #19 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread
  %i.o = call ptr @PyErr_Occurred() #19
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.f, label %os_pidfd_open_impl.exit

bb.f:                                             ; preds = %bb.e, %.thread
  %.not28 = icmp eq i64 %i.e, 1
  br i1 %.not28, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %i.k, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !108
  %i.r = call i32 @_PyLong_UnsignedInt_Converter(ptr noundef %i.q, ptr noundef nonnull %i.b) #19
  %.not29 = icmp eq i32 %i.r, 0
  br i1 %.not29, label %os_pidfd_open_impl.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i32, ptr %i.b, align 4, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.f
  %4 = phi i32 [ %.pre, %._crit_edge ], [ 0, %bb.f ]
  %i.s = call i64 (i64, ...) @syscall(i64 noundef 434, i32 noundef %i.m, i32 noundef %4) #19 ; 2 uses
  %i.t = and i64 %i.s, 2147483648
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.v = call ptr @PyErr_SetFromErrno(ptr noundef %i.u) #19
  br label %os_pidfd_open_impl.exit

bb.j:                                             ; preds = %bb.h
  %i.w = and i64 %i.s, 2147483647
  %i.x = call ptr @PyLong_FromLong(i64 noundef %i.w) #19
  br label %os_pidfd_open_impl.exit

os_pidfd_open_impl.exit:                          ; preds = %bb.j, %bb.i, %bb.g, %bb.e, %bb.d
  %.0 = phi ptr [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.g ], [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_getsid(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #19 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.d, label %.split

.split:                                           ; preds = %bb.a
  %i.c = tail call i32 @getsid(i32 noundef %i.a) #19 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split
  %i.e = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.f = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.e) #19
  br label %os_getsid_impl.exit

bb.c:                                             ; preds = %.split
  %i.g = zext nneg i32 %i.c to i64
  %i.h = tail call ptr @PyLong_FromLong(i64 noundef %i.g) #19
  br label %os_getsid_impl.exit

bb.d:                                             ; preds = %bb.a
  %i.i = tail call ptr @PyErr_Occurred() #19
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.split4, label %os_getsid_impl.exit

.split4:                                          ; preds = %bb.d
  %i.j = tail call i32 @getsid(i32 noundef -1) #19 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split4
  %i.l = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.m = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.l) #19
  br label %os_getsid_impl.exit

bb.f:                                             ; preds = %.split4
  %i.n = zext nneg i32 %i.j to i64
  %i.o = tail call ptr @PyLong_FromLong(i64 noundef %i.n) #19
  br label %os_getsid_impl.exit

os_getsid_impl.exit:                              ; preds = %bb.f, %bb.e, %bb.c, %bb.b, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.h, %bb.c ], [ %i.f, %bb.b ], [ %i.m, %bb.e ], [ %i.o, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_setsid(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @setsid() #19
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %os_setsid_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.d = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.c) #19
  br label %os_setsid_impl.exit

os_setsid_impl.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @os_setpgid(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.102, i64 noundef %2, i64 noundef 2, i64 noundef 2) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %os_setpgid_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !108
  %i.c = tail call i32 @PyLong_AsInt(ptr noundef %i.b) #19 ; 3 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PyErr_Occurred() #19
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.e, label %os_setpgid_impl.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = tail call i32 @PyLong_AsInt(ptr noundef %i.g) #19 ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.j = tail call i32 @setpgid(i32 noundef %i.c, i32 noundef %i.h) #19
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %os_setpgid_impl.exit.sink.split, label %os_setpgid_impl.exit

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @PyErr_Occurred() #19
  %.not14 = icmp eq ptr %i.l, null
  br i1 %.not14, label %.split11, label %os_setpgid_impl.exit

.split11:                                         ; preds = %bb.f
  %i.m = tail call i32 @setpgid(i32 noundef %i.c, i32 noundef -1) #19
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %os_setpgid_impl.exit.sink.split, label %os_setpgid_impl.exit

os_setpgid_impl.exit.sink.split:                  ; preds = %.split11, %.split
  %i.o = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.p = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.o) #19
  br label %os_setpgid_impl.exit

os_setpgid_impl.exit:                             ; preds = %os_setpgid_impl.exit.sink.split, %.split11, %.split, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.b ], [ @_Py_NoneStruct, %.split ], [ @_Py_NoneStruct, %.split11 ], [ %i.p, %os_setpgid_impl.exit.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_tcgetpgrp(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #19 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.d, label %.split

.split:                                           ; preds = %bb.a
  %i.c = tail call i32 @tcgetpgrp(i32 noundef %i.a) #19 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split
  %i.e = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.f = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.e) #19
  br label %os_tcgetpgrp_impl.exit

bb.c:                                             ; preds = %.split
  %i.g = zext nneg i32 %i.c to i64
  %i.h = tail call ptr @PyLong_FromLong(i64 noundef %i.g) #19
  br label %os_tcgetpgrp_impl.exit

bb.d:                                             ; preds = %bb.a
  %i.i = tail call ptr @PyErr_Occurred() #19
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.split4, label %os_tcgetpgrp_impl.exit

.split4:                                          ; preds = %bb.d
  %i.j = tail call i32 @tcgetpgrp(i32 noundef -1) #19 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split4
  %i.l = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.m = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.l) #19
  br label %os_tcgetpgrp_impl.exit

bb.f:                                             ; preds = %.split4
  %i.n = zext nneg i32 %i.j to i64
  %i.o = tail call ptr @PyLong_FromLong(i64 noundef %i.n) #19
  br label %os_tcgetpgrp_impl.exit

os_tcgetpgrp_impl.exit:                           ; preds = %bb.f, %bb.e, %bb.c, %bb.b, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.h, %bb.c ], [ %i.f, %bb.b ], [ %i.m, %bb.e ], [ %i.o, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_tcsetpgrp(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.104, i64 noundef %2, i64 noundef 2, i64 noundef 2) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %os_tcsetpgrp_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !108
end_hunk_1
