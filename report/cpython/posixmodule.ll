Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/posixmodule?download=true
inline.NumInlined: 800
inline.NumDeleted: 249
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@os_remove:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) @__const.os_remove.path, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 -100, ptr %i.b, align 4, !tbaa !16
  %i.f = icmp eq i64 %2, 1
  %i.g = icmp ne ptr %1, null
  %i.h = and i1 %i.g, %i.f
  %or.cond5 = and i1 %i.h, %.not
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @os_remove._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not24 = icmp eq ptr %i.i, null
  br i1 %.not24, label %os_unlink_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ %i.i, %bb.d ], [ %1, %bb.c ]   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1581
  %i.l = call fastcc i32 @path_converter(ptr noundef %i.k, ptr noundef %4)
  %.not25 = icmp eq i32 %i.l, 0
  br i1 %.not25, label %os_unlink_impl.exit, label %bb.e

bb.e:                                             ; preds = %.thread
  %.not26 = icmp eq i64 %i.e, 1
  br i1 %.not26, label %thread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1581 ; 4 uses
  %i.o = icmp eq ptr %i.n, @_Py_NoneStruct
  br i1 %i.o, label %thread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @PyIndex_Check(ptr noundef %i.n) #19
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %dir_fd_converter.exit.thread, label %dir_fd_converter.exit

dir_fd_converter.exit.thread:                     ; preds = %bb.g
  %i.q = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !1581
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val.i = load ptr, ptr %i.r, align 8, !tbaa !1583
  %i.s = call ptr @_PyType_Name(ptr noundef %.val.i) #19
  %i.t = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.q, ptr noundef nonnull @.str.210, ptr noundef %i.s) #19 ; 0 uses
  br label %os_unlink_impl.exit

dir_fd_converter.exit:                            ; preds = %bb.g
  %i.u = call fastcc i32 @_fd_converter(ptr noundef %i.n, ptr noundef nonnull %i.b)
  %.not27 = icmp eq i32 %i.u, 0
  br i1 %.not27, label %os_unlink_impl.exit, label %dir_fd_converter.exit.thread-pre-split_crit_edge

dir_fd_converter.exit.thread-pre-split_crit_edge: ; preds = %dir_fd_converter.exit
  %.pr.pre = load i32, ptr %i.b, align 4, !tbaa !16
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.f, %bb.e, %dir_fd_converter.exit.thread-pre-split_crit_edge
  %i.v = phi i32 [ -100, %bb.e ], [ %.pr.pre, %dir_fd_converter.exit.thread-pre-split_crit_edge ], [ -100, %bb.f ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1616 ; 2 uses
  %i.y = icmp eq i32 %i.v, -100                   ; 2 uses
  %i.z = select i1 %i.y, i32 -1, i32 %i.v
  %i.aa = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.280, ptr noundef %i.x, i32 noundef %i.z) #19
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %os_unlink_impl.exit, label %bb.h

bb.h:                                             ; preds = %thread-pre-split
  %i.ac = call ptr @PyEval_SaveThread() #19
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1618 ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = call i32 @unlinkat(i32 noundef %i.v, ptr noundef %i.ae, i32 noundef 0) #19
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ag = call i32 @unlink(ptr noundef %i.ae) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i29 = phi i32 [ %i.af, %bb.i ], [ %i.ag, %bb.j ]
  call void @PyEval_RestoreThread(ptr noundef %i.ac) #19
  %.not13.i = icmp eq i32 %.0.i29, 0
  br i1 %.not13.i, label %os_unlink_impl.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr @PyExc_OSError, align 8, !tbaa !1581
  %i.ai = call ptr @PyErr_SetFromErrnoWithFilenameObject(ptr noundef %i.ah, ptr noundef %i.x) #19
  br label %os_unlink_impl.exit

os_unlink_impl.exit:                              ; preds = %bb.l, %bb.k, %thread-pre-split, %dir_fd_converter.exit.thread, %dir_fd_converter.exit, %.thread, %bb.d
  %.0 = phi ptr [ null, %dir_fd_converter.exit.thread ], [ null, %dir_fd_converter.exit ], [ null, %.thread ], [ null, %bb.d ], [ %i.ai, %bb.l ], [ null, %thread-pre-split ], [ @_Py_NoneStruct, %bb.k ]
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1611
  call void @PyMem_Free(ptr noundef %i.ak) #19
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1581 ; 4 uses
  %.not.i28 = icmp eq ptr %i.am, null
  br i1 %.not.i28, label %Py_DECREF.exit16.i, label %bb.m

bb.m:                                             ; preds = %os_unlink_impl.exit
  %i.an = load i32, ptr %i.am, align 8, !tbaa !1590 ; 2 uses
  %.not.i15.i = icmp sgt i32 %i.an, -1
  br i1 %.not.i15.i, label %bb.n, label %Py_DECREF.exit16.i

bb.n:                                             ; preds = %bb.m
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !1590
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.o, label %Py_DECREF.exit16.i

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.am) #19
  br label %Py_DECREF.exit16.i

Py_DECREF.exit16.i:                               ; preds = %bb.o, %bb.n, %bb.m, %os_unlink_impl.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1581 ; 4 uses
  %.not14.i = icmp eq ptr %i.ar, null
  br i1 %.not14.i, label %path_cleanup.exit, label %bb.p

bb.p:                                             ; preds = %Py_DECREF.exit16.i
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !1590 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.as, -1
  br i1 %.not.i.i, label %bb.q, label %path_cleanup.exit

bb.q:                                             ; preds = %bb.p
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !1590
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.r, label %path_cleanup.exit

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.ar) #19
  br label %path_cleanup.exit

path_cleanup.exit:                                ; preds = %Py_DECREF.exit16.i, %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @os_utime(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 !guid !1719 {
bb.a:
  %4 = alloca [2 x %struct.timespec], align 16    ; 5 uses
  %5 = alloca %struct.utime_t, align 8            ; 24 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca [5 x ptr], align 16               ; 3 uses
  %6 = alloca %struct.path_t, align 8             ; 12 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.g, align 8, !tbaa !1578
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.i, -1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(96) @__const.os_utime.path, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  store i32 -100, ptr %i.f, align 4, !tbaa !16
  %i.k = add i64 %2, -1
  %i.l = icmp ult i64 %i.k, 2
  %i.m = icmp ne ptr %1, null
  %i.n = and i1 %i.m, %i.l
  %or.cond5 = and i1 %.not, %i.n
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @os_utime._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.e) #19 ; 2 uses
  %.not50 = icmp eq ptr %i.o, null
  br i1 %.not50, label %bb.aq, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %1, %bb.c ]   ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1581
  %i.r = call fastcc i32 @path_converter(ptr noundef %i.q, ptr noundef %6)
  %.not51 = icmp eq i32 %i.r, 0
  br i1 %.not51, label %bb.aq, label %bb.e

bb.e:                                             ; preds = %.thread
  %.not52 = icmp eq i64 %i.j, 0
  br i1 %.not52, label %.thread81.thread, label %bb.f

.thread81.thread:                                 ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  br label %.thread100

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1581 ; 5 uses
  %.not53 = icmp eq ptr %i.t, null
  br i1 %.not53, label %.thread70, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add i64 %i.i, -2                         ; 2 uses
  %.not54 = icmp eq i64 %i.u, 0
  br i1 %.not54, label %.thread81, label %.thread70

.thread70:                                        ; preds = %bb.f, %bb.g
  %.03675 = phi ptr [ %i.t, %bb.g ], [ @_Py_NoneStruct, %bb.f ] ; 4 uses
  %.03774 = phi i64 [ %i.u, %bb.g ], [ %i.j, %bb.f ] ; 2 uses
  %i.v = getelementptr i8, ptr %i.p, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1581 ; 7 uses
  %.not55 = icmp ne ptr %i.w, null                ; 4 uses
  br i1 %.not55, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread70
  %i.x = add i64 %.03774, -1                      ; 2 uses
  %.not56 = icmp eq i64 %i.x, 0
  br i1 %.not56, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread70
  %.138 = phi i64 [ %i.x, %bb.h ], [ %.03774, %.thread70 ]
  %i.y = getelementptr i8, ptr %i.p, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1581 ; 5 uses
  %.not57 = icmp eq ptr %i.z, null
  br i1 %.not57, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = icmp eq ptr %i.z, @_Py_NoneStruct
  br i1 %i.aa, label %dir_fd_converter.exit.thread78, label %bb.k

dir_fd_converter.exit.thread78:                   ; preds = %bb.j
  store i32 -100, ptr %i.f, align 4, !tbaa !16
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = call i32 @PyIndex_Check(ptr noundef nonnull %i.z) #19
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %dir_fd_converter.exit.thread, label %dir_fd_converter.exit

dir_fd_converter.exit.thread:                     ; preds = %bb.k
  %i.ac = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !1581
  %i.ad = getelementptr i8, ptr %i.z, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !tbaa !1583
  %i.ae = call ptr @_PyType_Name(ptr noundef %.val.i) #19
  %i.af = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ac, ptr noundef nonnull @.str.210, ptr noundef %i.ae) #19 ; 0 uses
  br label %bb.aq

dir_fd_converter.exit:                            ; preds = %bb.k
  %i.ag = call fastcc i32 @_fd_converter(ptr noundef nonnull %i.z, ptr noundef nonnull %i.f)
  %.not58 = icmp eq i32 %i.ag, 0
  br i1 %.not58, label %bb.aq, label %bb.l

bb.l:                                             ; preds = %dir_fd_converter.exit.thread78, %dir_fd_converter.exit
  %i.ah = icmp ugt i64 %.138, 1
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.ai = getelementptr i8, ptr %i.p, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1581
  %i.ak = call i32 @PyObject_IsTrue(ptr noundef %i.aj) #19 ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.aq, label %bb.n

.thread81:                                        ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %.not110 = icmp eq ptr %i.t, @_Py_NoneStruct
  br i1 %.not110, label %.thread100, label %bb.q

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.h
  %.0 = phi i32 [ %i.ak, %bb.m ], [ 1, %bb.l ], [ 1, %bb.h ] ; 3 uses
  %i.am = load i32, ptr %i.f, align 4, !tbaa !16  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %i.an = icmp ne ptr %.03675, @_Py_NoneStruct    ; 2 uses
  %or.cond.i = and i1 %i.an, %.not55
  br i1 %or.cond.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !1581
  call void @PyErr_SetString(ptr noundef %i.ao, ptr noundef nonnull @.str.288) #19
  br label %os_utime_impl.exit

bb.p:                                             ; preds = %bb.n
  br i1 %i.an, label %bb.q, label %bb.w

bb.q:                                             ; preds = %.thread81, %bb.p
  %.036698699 = phi ptr [ %i.t, %.thread81 ], [ %.03675, %bb.p ] ; 5 uses
  %.18796 = phi ptr [ null, %.thread81 ], [ %i.w, %bb.p ]
  %.08893 = phi i32 [ 1, %.thread81 ], [ %.0, %bb.p ]
  %i.ap = phi i32 [ -100, %.thread81 ], [ %i.am, %bb.p ]
  %i.aq = phi i1 [ false, %.thread81 ], [ %.not55, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.ar = getelementptr i8, ptr %.036698699, i64 8
  %.val58.i = load ptr, ptr %i.ar, align 8, !tbaa !1583
  %.not74.i = icmp eq ptr %.val58.i, @PyTuple_Type
  br i1 %.not74.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.as = call i64 @PyTuple_Size(ptr noundef nonnull %.036698699) #19
  %.not54.i = icmp eq i64 %i.as, 2
  br i1 %.not54.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.at = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !1581
  call void @PyErr_SetString(ptr noundef %i.at, ptr noundef nonnull @.str.289) #19
  br label %.critedge.i

bb.t:                                             ; preds = %bb.r
  store i32 0, ptr %5, align 8, !tbaa !1620
  %i.au = getelementptr i8, ptr %.036698699, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1581
  %i.aw = call i32 @_PyTime_ObjectToTimespec(ptr noundef %i.av, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef 0) #19
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %.critedge.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr i8, ptr %.036698699, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1581
  %i.ba = call i32 @_PyTime_ObjectToTimespec(ptr noundef %i.az, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef 0) #19
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %.critedge.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !1617
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !1720
  %i.be = load i64, ptr %i.c, align 8, !tbaa !1617
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !1721
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !1617
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !1722
  %i.bi = load i64, ptr %i.d, align 8, !tbaa !1617
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !1723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.bk = select i1 %i.aq, ptr %.18796, ptr @_Py_NoneStruct
  br label %bb.ac

bb.w:                                             ; preds = %bb.p
  br i1 %.not55, label %bb.x, label %.thread100

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr i8, ptr %i.w, i64 8
  %.val.i60 = load ptr, ptr %i.bl, align 8, !tbaa !1583
  %.not.i61 = icmp eq ptr %.val.i60, @PyTuple_Type
  br i1 %.not.i61, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bm = call i64 @PyTuple_Size(ptr noundef nonnull %i.w) #19
  %.not50.i = icmp eq i64 %i.bm, 2
  br i1 %.not50.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bn = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !1581
  call void @PyErr_SetString(ptr noundef %i.bn, ptr noundef nonnull @.str.290) #19
  br label %os_utime_impl.exit

bb.aa:                                            ; preds = %bb.y
  store i32 0, ptr %5, align 8, !tbaa !1620
  %i.bo = getelementptr i8, ptr %i.w, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1581
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bs = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %.val61.i = load ptr, ptr %i.bs, align 8, !tbaa !1595
  %.val61.val.i = load ptr, ptr %.val61.i, align 8, !tbaa !1597
  %i.bt = call fastcc i32 @split_py_long_to_s_and_ns(ptr %.val61.val.i, ptr noundef %i.bp, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.br)
  %.not51.i = icmp eq i32 %i.bt, 0
  br i1 %.not51.i, label %os_utime_impl.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bu = getelementptr i8, ptr %i.w, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1581
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.val60.i = load ptr, ptr %i.bs, align 8, !tbaa !1595
  %.val60.val.i = load ptr, ptr %.val60.i, align 8, !tbaa !1597
  %i.by = call fastcc i32 @split_py_long_to_s_and_ns(ptr %.val60.val.i, ptr noundef %i.bv, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bx)
  %.not52.i = icmp eq i32 %i.by, 0
  br i1 %.not52.i, label %os_utime_impl.exit, label %bb.ac

.thread100:                                       ; preds = %.thread81, %.thread81.thread, %bb.w
  %i.bz = phi i32 [ %i.am, %bb.w ], [ -100, %.thread81.thread ], [ -100, %.thread81 ]
  %.08892106 = phi i32 [ %.0, %bb.w ], [ 1, %.thread81.thread ], [ 1, %.thread81 ]
  %.036698698104 = phi ptr [ %.03675, %bb.w ], [ @_Py_NoneStruct, %.thread81.thread ], [ %i.t, %.thread81 ]
  store i32 1, ptr %5, align 8, !tbaa !1620
  br label %bb.ac

bb.ac:                                            ; preds = %.thread100, %bb.ab, %bb.v
  %.036698697 = phi ptr [ %.036698698104, %.thread100 ], [ %.03675, %bb.ab ], [ %.036698699, %bb.v ]
  %.08891 = phi i32 [ %.08892106, %.thread100 ], [ %.0, %bb.ab ], [ %.08893, %bb.v ] ; 2 uses
  %i.ca = phi i32 [ %i.bz, %.thread100 ], [ %i.am, %bb.ab ], [ %i.ap, %bb.v ] ; 3 uses
  %i.cb = phi ptr [ @_Py_NoneStruct, %.thread100 ], [ %i.w, %bb.ab ], [ %i.bk, %bb.v ]
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1611
  %i.ce = icmp eq ptr %i.cd, null
  %i.cf = icmp ne i32 %i.ca, -100                 ; 5 uses
  %or.cond.i.i = and i1 %i.cf, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  %i.ch = load ptr, ptr %i.cg, align 8
  %.not.i.i = icmp eq ptr %i.ch, null
  %or.cond = select i1 %or.cond.i.i, i1 %.not.i.i, i1 false
  br i1 %or.cond, label %path_and_dir_fd_invalid.exit.i, label %bb.ad

path_and_dir_fd_invalid.exit.i:                   ; preds = %bb.ac
  %i.ci = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !1581
  %i.cj = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ci, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.48) #19 ; 0 uses
  br label %os_utime_impl.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !1612
  %i.cm = icmp ne i32 %i.cl, -1
  %or.cond.i62.i = and i1 %i.cf, %i.cm
  br i1 %or.cond.i62.i, label %dir_fd_and_fd_invalid.exit.i, label %bb.ae

dir_fd_and_fd_invalid.exit.i:                     ; preds = %bb.ad
  %i.cn = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !1581
  %i.co = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cn, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.48) #19 ; 0 uses
  br label %os_utime_impl.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 4, !tbaa !1613, !range !1614, !noundef !1615
  %i.cr = icmp eq i8 %i.cq, 0
  %i.cs = icmp ne i32 %.08891, 0                  ; 3 uses
  %or.cond.i64.i = or i1 %i.cs, %i.cr
  br i1 %or.cond.i64.i, label %bb.af, label %fd_and_follow_symlinks_invalid.exit.i

fd_and_follow_symlinks_invalid.exit.i:            ; preds = %bb.ae
  %i.ct = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !1581
  %i.cu = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ct, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.48) #19 ; 0 uses
  br label %os_utime_impl.exit

bb.af:                                            ; preds = %bb.ae
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1616
  %.not75.i = xor i1 %i.cf, true
  %i.cx = select i1 %i.cf, i32 %i.ca, i32 -1
  %i.cy = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.291, ptr noundef nonnull @.str.292, ptr noundef %i.cw, ptr noundef nonnull %.036698697, ptr noundef nonnull %i.cb, i32 noundef %i.cx) #19
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %os_utime_impl.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.da = call ptr @PyEval_SaveThread() #19
  %or.cond3.not.i = or i1 %i.cs, %i.cf
  br i1 %or.cond3.not.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = load ptr, ptr %i.cg, align 8, !tbaa !1618
  %i.dc = call fastcc i32 @utime_nofollow_symlinks(ptr noundef %5, ptr noundef %i.db)
  br label %bb.ao

bb.ai:                                            ; preds = %bb.ag
  %or.cond5.i = and i1 %i.cs, %.not75.i
  br i1 %or.cond5.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dd = load ptr, ptr %i.cg, align 8, !tbaa !1618
  %i.de = call fastcc i32 @utime_dir_fd(ptr noundef %5, i32 noundef %i.ca, ptr noundef %i.dd, i32 noundef range(i32 0, -2147483648) %.08891)
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ai
  %i.df = load i8, ptr %i.cp, align 4, !tbaa !1613, !range !1614, !noundef !1615
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.dh = load i32, ptr %i.ck, align 8, !tbaa !1612
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.di = load i32, ptr %5, align 8, !tbaa !1620
  %.not.i66.i = icmp eq i32 %i.di, 0
  br i1 %.not.i66.i, label %bb.am, label %utime_fd.exit.i

bb.am:                                            ; preds = %bb.al
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dk = load <2 x i64>, ptr %i.dj, align 8, !tbaa !1617
  store <2 x i64> %i.dk, ptr %4, align 16, !tbaa !1617
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dn = load <2 x i64>, ptr %i.dl, align 8, !tbaa !1617
  store <2 x i64> %i.dn, ptr %i.dm, align 16, !tbaa !1617
  br label %utime_fd.exit.i

utime_fd.exit.i:                                  ; preds = %bb.am, %bb.al
  %.0.i67.i = phi ptr [ %4, %bb.am ], [ null, %bb.al ]
  %i.do = call i32 @futimens(i32 noundef %i.dh, ptr noundef %.0.i67.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak
  %i.dp = load ptr, ptr %i.cg, align 8, !tbaa !1618
  %i.dq = call fastcc i32 @utime_default(ptr noundef %5, ptr noundef %i.dp)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %utime_fd.exit.i, %bb.aj, %bb.ah
  %.046.i = phi i32 [ %i.dc, %bb.ah ], [ %i.do, %utime_fd.exit.i ], [ %i.dq, %bb.an ], [ %i.de, %bb.aj ]
  call void @PyEval_RestoreThread(ptr noundef %i.da) #19
  %i.dr = icmp slt i32 %.046.i, 0
  br i1 %i.dr, label %bb.ap, label %os_utime_impl.exit

bb.ap:                                            ; preds = %bb.ao
  %.val59.i = load ptr, ptr %i.cv, align 8, !tbaa !1616
  %i.ds = load ptr, ptr @PyExc_OSError, align 8, !tbaa !1581
  %i.dt = call ptr @PyErr_SetFromErrnoWithFilenameObject(ptr noundef %i.ds, ptr noundef %.val59.i) #19 ; 0 uses
  br label %os_utime_impl.exit

.critedge.i:                                      ; preds = %bb.u, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %os_utime_impl.exit

os_utime_impl.exit:                               ; preds = %bb.o, %bb.z, %bb.aa, %bb.ab, %path_and_dir_fd_invalid.exit.i, %dir_fd_and_fd_invalid.exit.i, %fd_and_follow_symlinks_invalid.exit.i, %bb.af, %bb.ao, %bb.ap, %.critedge.i
  %.1.i = phi ptr [ null, %bb.o ], [ null, %bb.aa ], [ null, %path_and_dir_fd_invalid.exit.i ], [ null, %bb.ap ], [ null, %bb.af ], [ null, %.critedge.i ], [ null, %bb.z ], [ null, %bb.ab ], [ null, %fd_and_follow_symlinks_invalid.exit.i ], [ null, %dir_fd_and_fd_invalid.exit.i ], [ @_Py_NoneStruct, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.aq

bb.aq:                                            ; preds = %dir_fd_converter.exit.thread, %bb.m, %dir_fd_converter.exit, %.thread, %bb.d, %os_utime_impl.exit
  %.039 = phi ptr [ null, %bb.m ], [ %.1.i, %os_utime_impl.exit ], [ null, %dir_fd_converter.exit ], [ null, %.thread ], [ null, %bb.d ], [ null, %dir_fd_converter.exit.thread ]
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !1611
  call void @PyMem_Free(ptr noundef %i.dv) #19
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1581 ; 4 uses
  %.not.i62 = icmp eq ptr %i.dx, null
  br i1 %.not.i62, label %Py_DECREF.exit16.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !1590 ; 2 uses
  %.not.i15.i = icmp sgt i32 %i.dy, -1
  br i1 %.not.i15.i, label %bb.as, label %Py_DECREF.exit16.i

bb.as:                                            ; preds = %bb.ar
  %i.dz = add nsw i32 %i.dy, -1                   ; 2 uses
  store i32 %i.dz, ptr %i.dx, align 8, !tbaa !1590
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.at, label %Py_DECREF.exit16.i

bb.at:                                            ; preds = %bb.as
  call void @_Py_Dealloc(ptr noundef nonnull %i.dx) #19
  br label %Py_DECREF.exit16.i

Py_DECREF.exit16.i:                               ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1581 ; 4 uses
  %.not14.i = icmp eq ptr %i.ec, null
  br i1 %.not14.i, label %path_cleanup.exit, label %bb.au

bb.au:                                            ; preds = %Py_DECREF.exit16.i
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !1590 ; 2 uses
  %.not.i.i63 = icmp sgt i32 %i.ed, -1
  br i1 %.not.i.i63, label %bb.av, label %path_cleanup.exit

bb.av:                                            ; preds = %bb.au
  %i.ee = add nsw i32 %i.ed, -1                   ; 2 uses
  store i32 %i.ee, ptr %i.ec, align 8, !tbaa !1590
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.aw, label %path_cleanup.exit

bb.aw:                                            ; preds = %bb.av
  call void @_Py_Dealloc(ptr noundef nonnull %i.ec) #19
  br label %path_cleanup.exit

path_cleanup.exit:                                ; preds = %Py_DECREF.exit16.i, %bb.au, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  ret ptr %.039
}

; Function Attrs: nounwind uwtable
define internal ptr @os_times(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 !guid !1724 {
bb.a:
  %2 = alloca %struct.tms, align 8                ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !1595
  %i.b = getelementptr i8, ptr %.val.i, i64 112
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1725
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = tail call ptr @__errno_location() #21
  store i32 0, ptr %i.d, align 4, !tbaa !16
  %i.e = call i64 @times(ptr noundef nonnull %2) #19 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @PyExc_OSError, align 8, !tbaa !1581
  %i.h = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.g) #19
end_hunk_0
begin_hunk_1_@path_converter:bb.a
  %i.cj = getelementptr i8, ptr %1, i64 56
  store i32 -1, ptr %i.cj, align 8, !tbaa !1612
  br label %bb.bh

bb.ai:                                            ; preds = %bb.ac
  %i.ck = tail call ptr @PyUnicode_EncodeFSDefault(ptr noundef nonnull %.1132) #19 ; 2 uses
  %.not168 = icmp eq ptr %i.ck, null
  br i1 %.not168, label %Py_DECREF.exit200.thread, label %_Py_NewRef.exit

bb.aj:                                            ; preds = %Py_DECREF.exit200.thread228
  %.not158 = icmp eq i32 %.2112, 0
  br i1 %.not158, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cl = load i32, ptr %.1132, align 8, !tbaa !1590 ; 2 uses
  %i.cm = icmp ugt i32 %i.cl, -1073741825
  br i1 %i.cm, label %_Py_NewRef.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cn = add nuw i32 %i.cl, 1
  store i32 %i.cn, ptr %.1132, align 8, !tbaa !1590
  br label %_Py_NewRef.exit

bb.am:                                            ; preds = %bb.aj
  br i1 %i.ac, label %bb.an, label %Py_DECREF.exit200

bb.an:                                            ; preds = %bb.am
  %i.co = getelementptr i8, ptr %1, i64 56
  %i.cp = tail call fastcc i32 @_fd_converter(ptr noundef nonnull %.1132, ptr noundef %i.co)
  %.not166 = icmp eq i32 %i.cp, 0
  br i1 %.not166, label %Py_DECREF.exit200.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cq = getelementptr i8, ptr %1, i64 40
  %i.cr = getelementptr i8, ptr %1, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.cr, align 4, !tbaa !1613
  br label %bb.bh

Py_DECREF.exit200:                                ; preds = %bb.p, %bb.am
  %.2133 = phi ptr [ %.1132, %bb.am ], [ %0, %bb.p ] ; 2 uses
  %i.cs = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !1581
  %i.ct = load ptr, ptr %1, align 8, !tbaa !1910  ; 2 uses
  %.not159 = icmp eq ptr %i.ct, null              ; 2 uses
  %spec.select190 = select i1 %.not159, ptr @.str.200, ptr %i.ct
  %i.cu = select i1 %.not159, ptr @.str.200, ptr @.str.201
  %i.cv = getelementptr i8, ptr %1, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1911 ; 2 uses
  %.not161 = icmp eq ptr %i.cw, null
  %i.cx = select i1 %.not161, ptr @.str.196, ptr %i.cw
  %i.cy = load i32, ptr %i.y, align 8, !tbaa !1907
  %.not162 = icmp eq i32 %i.cy, 0
  %i.cz = getelementptr i8, ptr %1, i64 16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !1906
  %.not165 = icmp eq i32 %i.da, 0                 ; 2 uses
  %spec.select233 = select i1 %.not165, ptr @.str.204, ptr @.str.203
  %i.db = select i1 %.not165, ptr @.str.206, ptr @.str.205
  %i.dc = select i1 %.not162, ptr %i.db, ptr %spec.select233
  %i.dd = getelementptr i8, ptr %.2133, i64 8
  %.2133.val = load ptr, ptr %i.dd, align 8, !tbaa !1583
  %i.de = tail call ptr @_PyType_Name(ptr noundef %.2133.val) #19
  %i.df = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cs, ptr noundef nonnull @.str.202, ptr noundef nonnull %spec.select190, ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.dc, ptr noundef %i.de) #19 ; 0 uses
  br label %Py_DECREF.exit200.thread

_Py_NewRef.exit:                                  ; preds = %bb.al, %bb.ak, %bb.ai
  %.0113 = phi ptr [ %i.ck, %bb.ai ], [ %.1132, %bb.ak ], [ %.1132, %bb.al ] ; 14 uses
  %i.dg = getelementptr i8, ptr %.0113, i64 16
  %.0113.val = load i64, ptr %i.dg, align 8, !tbaa !1578 ; 3 uses
  store i64 %.0113.val, ptr %i.a, align 8, !tbaa !1617
  %i.dh = getelementptr i8, ptr %.0113, i64 32    ; 3 uses
  %i.di = getelementptr i8, ptr %1, i64 20        ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !1909
  %.not169 = icmp eq i32 %i.dj, 0
  br i1 %.not169, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %_Py_NewRef.exit
  %i.dk = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dh) #22
  %.not170 = icmp eq i64 %i.dk, %.0113.val
  br i1 %.not170, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dl = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !1581
  %i.dm = load ptr, ptr %1, align 8, !tbaa !1910  ; 2 uses
  %.not171 = icmp eq ptr %i.dm, null              ; 2 uses
  %spec.select191 = select i1 %.not171, ptr @.str.200, ptr %i.dm
  %i.dn = select i1 %.not171, ptr @.str.200, ptr @.str.201
  %i.do = getelementptr i8, ptr %1, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1911 ; 2 uses
  %.not173 = icmp eq ptr %i.dp, null
  %i.dq = select i1 %.not173, ptr @.str.196, ptr %i.dp
  %i.dr = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.dl, ptr noundef nonnull @.str.199, ptr noundef nonnull %spec.select191, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.dq) #19 ; 0 uses
  br label %Py_DECREF.exit200.thread

bb.ar:                                            ; preds = %bb.ap, %_Py_NewRef.exit
  %i.ds = getelementptr i8, ptr %1, i64 24
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !1908
  %.not174 = icmp eq i32 %i.dt, 0
  br i1 %.not174, label %bb.bc, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.du = tail call ptr @PyUnicode_DecodeFSDefaultAndSize(ptr noundef %i.dh, i64 noundef %.0113.val) #19 ; 5 uses
  %.not175 = icmp eq ptr %i.du, null
  br i1 %.not175, label %Py_DECREF.exit200.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dv = call ptr @PyUnicode_AsWideCharString(ptr noundef nonnull %i.du, ptr noundef nonnull %i.a) #19 ; 4 uses
  %i.dw = load i32, ptr %i.du, align 8, !tbaa !1590 ; 2 uses
  %.not.i195 = icmp sgt i32 %i.dw, -1
  br i1 %.not.i195, label %bb.au, label %Py_DECREF.exit196

bb.au:                                            ; preds = %bb.at
  %i.dx = add nsw i32 %i.dw, -1                   ; 2 uses
  store i32 %i.dx, ptr %i.du, align 8, !tbaa !1590
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.av, label %Py_DECREF.exit196

bb.av:                                            ; preds = %bb.au
  call void @_Py_Dealloc(ptr noundef nonnull %i.du) #19
  br label %Py_DECREF.exit196

Py_DECREF.exit196:                                ; preds = %bb.at, %bb.au, %bb.av
  %.not176 = icmp eq ptr %i.dv, null
  br i1 %.not176, label %Py_DECREF.exit200.thread, label %bb.aw

bb.aw:                                            ; preds = %Py_DECREF.exit196
  %i.dz = load i32, ptr %i.di, align 4, !tbaa !1909
  %.not177 = icmp eq i32 %i.dz, 0
  br i1 %.not177, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.ea = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.dv) #22
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !1617
  %.not178 = icmp eq i64 %i.ea, %i.eb
  br i1 %.not178, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ec = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !1581
  %i.ed = load ptr, ptr %1, align 8, !tbaa !1910  ; 2 uses
  %.not179 = icmp eq ptr %i.ed, null              ; 2 uses
  %spec.select192 = select i1 %.not179, ptr @.str.200, ptr %i.ed
  %i.ee = select i1 %.not179, ptr @.str.200, ptr @.str.201
  %i.ef = getelementptr i8, ptr %1, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1911 ; 2 uses
  %.not181 = icmp eq ptr %i.eg, null
  %i.eh = select i1 %.not181, ptr @.str.196, ptr %i.eg
  %i.ei = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ec, ptr noundef nonnull @.str.199, ptr noundef nonnull %spec.select192, ptr noundef nonnull %i.ee, ptr noundef nonnull %i.eh) #19 ; 0 uses
  br label %Py_DECREF.exit200.thread

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %i.ej = getelementptr i8, ptr %1, i64 40
  store ptr %i.dv, ptr %i.ej, align 8, !tbaa !1611
  %i.ek = getelementptr i8, ptr %1, i64 48
  store ptr null, ptr %i.ek, align 8, !tbaa !1618
  %i.el = load i32, ptr %.0113, align 8, !tbaa !1590 ; 2 uses
  %.not.i193 = icmp sgt i32 %i.el, -1
  br i1 %.not.i193, label %bb.ba, label %Py_DECREF.exit194

bb.ba:                                            ; preds = %bb.az
  %i.em = add nsw i32 %i.el, -1                   ; 2 uses
  store i32 %i.em, ptr %.0113, align 8, !tbaa !1590
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.bb, label %Py_DECREF.exit194

bb.bb:                                            ; preds = %bb.ba
  call void @_Py_Dealloc(ptr noundef nonnull %.0113) #19
  br label %Py_DECREF.exit194

bb.bc:                                            ; preds = %bb.ar
  %i.eo = getelementptr i8, ptr %1, i64 40
  store ptr null, ptr %i.eo, align 8, !tbaa !1611
  %i.ep = getelementptr i8, ptr %1, i64 48
  store ptr %i.dh, ptr %i.ep, align 8, !tbaa !1618
  %i.eq = icmp eq ptr %.0113, %.1132
  br i1 %i.eq, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.er = load i32, ptr %.0113, align 8, !tbaa !1590 ; 2 uses
  %.not.i = icmp sgt i32 %i.er, -1
  br i1 %.not.i, label %bb.be, label %Py_DECREF.exit194

bb.be:                                            ; preds = %bb.bd
  %i.es = add nsw i32 %i.er, -1                   ; 2 uses
  store i32 %i.es, ptr %.0113, align 8, !tbaa !1590
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.bf, label %Py_DECREF.exit194

bb.bf:                                            ; preds = %bb.be
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0113) #19
  br label %Py_DECREF.exit194

bb.bg:                                            ; preds = %bb.bc
  store ptr %.0113, ptr %i.o, align 8, !tbaa !1912
  br label %Py_DECREF.exit194

Py_DECREF.exit194:                                ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.az, %bb.bg
  %i.eu = getelementptr i8, ptr %1, i64 56
  store i32 -1, ptr %i.eu, align 8, !tbaa !1612
  br label %bb.bh

bb.bh:                                            ; preds = %Py_DECREF.exit194, %bb.ao, %bb.ah, %bb.l
  %.3 = phi ptr [ %0, %bb.l ], [ %.1132, %bb.ah ], [ %.1132, %Py_DECREF.exit194 ], [ %.1132, %bb.ao ]
  %i.ev = getelementptr i8, ptr %1, i64 64
  store i32 0, ptr %i.ev, align 8, !tbaa !1913
  %i.ew = load i64, ptr %i.a, align 8, !tbaa !1617
  %i.ex = getelementptr i8, ptr %1, i64 72
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !1629
  store ptr %.3, ptr %i.p, align 8, !tbaa !1616
  br label %path_cleanup.exit

Py_DECREF.exit200.thread:                         ; preds = %bb.x, %bb.w, %bb.y, %Py_DECREF.exit202, %bb.ag, %Py_DECREF.exit200, %bb.aq, %bb.ay, %bb.ad, %bb.ai, %bb.an, %bb.as, %Py_DECREF.exit196
  %.4 = phi ptr [ %.1132, %bb.ag ], [ %.1132, %bb.ad ], [ %.1132, %bb.ay ], [ %.1132, %Py_DECREF.exit196 ], [ %.1132, %bb.as ], [ %.1132, %bb.aq ], [ %.1132, %bb.ai ], [ %.1132, %bb.an ], [ %.2133, %Py_DECREF.exit200 ], [ %0, %Py_DECREF.exit202 ], [ %0, %bb.y ], [ %0, %bb.w ], [ %0, %bb.x ] ; 3 uses
  %.1114 = phi ptr [ null, %bb.ag ], [ null, %bb.ad ], [ %.0113, %bb.ay ], [ %.0113, %Py_DECREF.exit196 ], [ %.0113, %bb.as ], [ %.0113, %bb.aq ], [ null, %bb.ai ], [ null, %bb.an ], [ null, %Py_DECREF.exit200 ], [ null, %Py_DECREF.exit202 ], [ null, %bb.y ], [ null, %bb.w ], [ null, %bb.x ] ; 4 uses
  %.0108 = phi ptr [ %i.bv, %bb.ag ], [ null, %bb.ad ], [ %i.dv, %bb.ay ], [ null, %Py_DECREF.exit196 ], [ null, %bb.as ], [ null, %bb.aq ], [ null, %bb.ai ], [ null, %bb.an ], [ null, %Py_DECREF.exit200 ], [ null, %Py_DECREF.exit202 ], [ null, %bb.y ], [ null, %bb.w ], [ null, %bb.x ]
  %i.ey = load i32, ptr %.4, align 8, !tbaa !1590 ; 2 uses
  %.not.i.i219 = icmp sgt i32 %i.ey, -1
  br i1 %.not.i.i219, label %bb.bi, label %Py_XDECREF.exit

bb.bi:                                            ; preds = %Py_DECREF.exit200.thread
  %i.ez = add nsw i32 %i.ey, -1                   ; 2 uses
  store i32 %i.ez, ptr %.4, align 8, !tbaa !1590
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.bj, label %Py_XDECREF.exit

bb.bj:                                            ; preds = %bb.bi
  call void @_Py_Dealloc(ptr noundef nonnull %.4) #19
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %Py_DECREF.exit200.thread, %bb.bi, %bb.bj
  %.not.i220 = icmp eq ptr %.1114, null
  br i1 %.not.i220, label %Py_XDECREF.exit222, label %bb.bk

bb.bk:                                            ; preds = %Py_XDECREF.exit
  %i.fb = load i32, ptr %.1114, align 8, !tbaa !1590 ; 2 uses
  %.not.i.i221 = icmp sgt i32 %i.fb, -1
  br i1 %.not.i.i221, label %bb.bl, label %Py_XDECREF.exit222

bb.bl:                                            ; preds = %bb.bk
  %i.fc = add nsw i32 %i.fb, -1                   ; 2 uses
  store i32 %i.fc, ptr %.1114, align 8, !tbaa !1590
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.bm, label %Py_XDECREF.exit222

bb.bm:                                            ; preds = %bb.bl
  call void @_Py_Dealloc(ptr noundef nonnull %.1114) #19
  br label %Py_XDECREF.exit222

Py_XDECREF.exit222:                               ; preds = %Py_XDECREF.exit, %bb.bk, %bb.bl, %bb.bm
  call void @PyMem_Free(ptr noundef %.0108) #19
  %i.fe = getelementptr i8, ptr %1, i64 28
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !1914
  %.not188 = icmp eq i32 %i.ff, 0
  br i1 %.not188, label %path_cleanup.exit, label %bb.bn

bb.bn:                                            ; preds = %Py_XDECREF.exit222
  %i.fg = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !1581
  %i.fh = call i32 @PyErr_ExceptionMatches(ptr noundef %i.fg) #19
  %.not189 = icmp eq i32 %i.fh, 0
  br i1 %.not189, label %path_cleanup.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @PyErr_Clear() #19
  %i.fi = getelementptr i8, ptr %1, i64 40
  %i.fj = getelementptr i8, ptr %1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.fj, align 8, !tbaa !1612
  %i.fk = getelementptr i8, ptr %1, i64 64
  store i32 1, ptr %i.fk, align 8, !tbaa !1913
  %i.fl = getelementptr i8, ptr %1, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, i8 0, i64 16, i1 false)
  br label %path_cleanup.exit

path_cleanup.exit:                                ; preds = %bb.h, %bb.g, %bb.f, %Py_DECREF.exit16.i, %Py_XDECREF.exit222, %bb.bn, %bb.bo, %bb.bh
  %.0 = phi i32 [ 0, %Py_XDECREF.exit222 ], [ 131072, %bb.bh ], [ 131072, %bb.bo ], [ 0, %bb.bn ], [ 1, %Py_DECREF.exit16.i ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.0
}

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #2

declare i32 @PyIndex_Check(ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_AsWideCharString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #9

declare ptr @PyUnicode_EncodeFSDefault(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_fd_converter(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #0 !guid !1915 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !1583
  %.not = icmp eq ptr %.val, @PyBool_Type
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !1581
  %i.d = tail call i32 @PyErr_WarnEx(ptr noundef %i.c, ptr noundef nonnull @.str.207, i64 noundef 1) #19
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call ptr @_PyNumber_Index(ptr noundef nonnull %0) #19 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call i64 @PyLong_AsLongAndOverflow(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #19 ; 3 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !1590 ; 2 uses
  %.not.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.e, align 8, !tbaa !1590
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #19
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.e, %bb.f
  %i.k = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  %i.m = icmp sgt i64 %i.g, 2147483647
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %Py_DECREF.exit
  %i.n = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !1581
  call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.208) #19
  br label %bb.k

bb.h:                                             ; preds = %Py_DECREF.exit
  %i.o = icmp slt i32 %i.k, 0
  %i.p = icmp slt i64 %i.g, -2147483648
  %or.cond3 = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !1581
  call void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.209) #19
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = trunc nsw i64 %i.g to i32
  store i32 %i.r, ptr %1, align 4, !tbaa !16
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.j, %bb.c, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 1, %bb.j ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare ptr @PyUnicode_DecodeFSDefaultAndSize(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #2

declare void @PyErr_Clear() local_unnamed_addr #2

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @posix_do_stat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 0, -2147483648) %3) unnamed_addr #0 !guid !1916 {
bb.a:
  %4 = alloca %struct.stat, align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = getelementptr i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1611
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp ne i32 %2, -100                     ; 4 uses
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1618
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %path_and_dir_fd_invalid.exit, label %bb.c

path_and_dir_fd_invalid.exit:                     ; preds = %bb.b
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !1581
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.13) #19 ; 0 uses
  br label %bb.o

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr i8, ptr %1, i64 56         ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1612
  %i.k = icmp ne i32 %i.j, -1
  %or.cond.i30 = and i1 %i.d, %i.k
  br i1 %or.cond.i30, label %dir_fd_and_fd_invalid.exit, label %bb.d

dir_fd_and_fd_invalid.exit:                       ; preds = %bb.c
end_hunk_1
