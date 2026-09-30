Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/fcntlmodule?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
begin_hunk_0_@fcntl_ioctl:bb.a
  %i.di = load ptr, ptr @PyExc_OSError, align 8, !tbaa !12
  %i.dj = call ptr @PyErr_SetFromErrno(ptr noundef %i.di) #6 ; 0 uses
  br label %.loopexit34.i

.loopexit34.i:                                    ; preds = %bb.ay, %.thread30.i
  call void @PyBytesWriter_Discard(ptr noundef nonnull %i.cw) #6
  br label %.loopexit33.i

bb.az:                                            ; preds = %.critedge6.i
  %i.dk = getelementptr i8, ptr %i.cy, i64 %i.cd
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !30
  %.not103.i = icmp eq i8 %i.dl, 0
  br i1 %.not103.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dm = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !12
  call void @PyErr_SetString(ptr noundef %i.dm, ptr noundef nonnull @.str.20) #6
  call void @PyBytesWriter_Discard(ptr noundef nonnull %i.cw) #6
  br label %.loopexit33.i

bb.bb:                                            ; preds = %bb.az
  %i.dn = call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.cw) #6
  br label %.loopexit33.i

.loopexit33.i:                                    ; preds = %bb.ap, %bb.bb, %bb.ba, %.loopexit34.i, %bb.au, %bb.as, %bb.ar, %.thread22.i, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %.loopexit35.i
  %.5.i = phi ptr [ null, %bb.ak ], [ null, %bb.ai ], [ %i.by, %bb.ah ], [ null, %.loopexit35.i ], [ null, %bb.ag ], [ %i.dn, %bb.bb ], [ null, %bb.ar ], [ %i.cv, %bb.as ], [ %i.cq, %.thread22.i ], [ null, %bb.au ], [ null, %.loopexit34.i ], [ null, %bb.ba ], [ null, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %fcntl_ioctl_impl.exit

bb.bc:                                            ; preds = %bb.u
  %i.do = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !12
  %i.dp = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.do, ptr noundef nonnull @.str.21, ptr noundef nonnull %.023) #6 ; 0 uses
  br label %fcntl_ioctl_impl.exit

fcntl_ioctl_impl.exit:                            ; preds = %bb.h, %bb.f, %bb.bc, %.loopexit33.i, %.loopexit.i, %bb.l, %bb.e, %bb.b, %bb.c, %bb.k
  %.024 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.k ], [ null, %bb.l ], [ null, %bb.e ], [ null, %bb.bc ], [ %.0.i, %.loopexit.i ], [ %.5.i, %.loopexit33.i ], [ null, %bb.f ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret ptr %.024
}

; Function Attrs: nounwind uwtable
define internal ptr @fcntl_flock(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.2, i64 noundef %2, i64 noundef 2, i64 noundef 2) #6
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !12
  %i.c = tail call i32 @PyObject_AsFileDescriptor(ptr noundef %i.b) #6 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = tail call i32 @PyLong_AsInt(ptr noundef %i.f) #6 ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @PyErr_Occurred() #6
  %.not14 = icmp eq ptr %i.i, null
  br i1 %.not14, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.d
  %.sink = phi i32 [ %i.g, %bb.d ], [ -1, %bb.e ]
  %i.j = tail call fastcc ptr @fcntl_flock_impl(i32 noundef %i.c, i32 noundef %.sink)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.b ], [ %i.j, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @fcntl_lockf(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.flock, align 8              ; 10 uses
  %i.a = add i64 %2, -2
  %or.cond = icmp ult i64 %i.a, 4
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.3, i64 noundef %2, i64 noundef 2, i64 noundef 5) #6
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %fcntl_lockf_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !12
  %i.d = tail call i32 @PyObject_AsFileDescriptor(ptr noundef %i.c) #6 ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %fcntl_lockf_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = tail call i32 @PyLong_AsInt(ptr noundef %i.g) #6 ; 6 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @PyErr_Occurred() #6
  %.not27 = icmp eq ptr %i.j, null
  br i1 %.not27, label %bb.f, label %fcntl_lockf_impl.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = icmp slt i64 %2, 3
  br i1 %i.k, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12   ; 4 uses
  %i.n = icmp eq i64 %2, 3
  br i1 %i.n, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12   ; 3 uses
  %i.q = icmp samesign ult i64 %2, 5
  br i1 %i.q, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.t = tail call i32 @PyLong_AsInt(ptr noundef %i.s) #6 ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = tail call ptr @PyErr_Occurred() #6
  %.not28 = icmp eq ptr %i.v, null
  br i1 %.not28, label %bb.k, label %fcntl_lockf_impl.exit

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.g, %bb.f
  %.022 = phi ptr [ null, %bb.f ], [ %i.m, %bb.g ], [ %i.m, %bb.h ], [ %i.m, %bb.j ], [ %i.m, %bb.i ] ; 3 uses
  %.021 = phi ptr [ null, %bb.f ], [ null, %bb.g ], [ %i.p, %bb.h ], [ %i.p, %bb.j ], [ %i.p, %bb.i ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ -1, %bb.j ], [ %i.t, %bb.i ] ; 2 uses
  %.not.i = icmp eq ptr %.022, null               ; 2 uses
  %i.w = select i1 %.not.i, ptr @_Py_NoneStruct, ptr %.022
  %.not28.i = icmp eq ptr %.021, null             ; 2 uses
  %i.x = select i1 %.not28.i, ptr @_Py_NoneStruct, ptr %.021
  %i.y = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef range(i32 0, -2147483648) %i.d, i32 noundef %i.h, ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, i32 noundef %.0) #6
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %fcntl_lockf_impl.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.aa = icmp eq i32 %i.h, 8
  br i1 %i.aa, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = and i32 %i.h, 1
  %.not29.i = icmp eq i32 %i.ab, 0
  br i1 %.not29.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ac = and i32 %i.h, 2
  %.not30.i = icmp eq i32 %i.ac, 0
  br i1 %.not30.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !12
  tail call void @PyErr_SetString(ptr noundef %i.ad, ptr noundef nonnull @.str.26) #6
  br label %.critedge37.i

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.sink.i = phi i16 [ 2, %bb.l ], [ 0, %bb.m ], [ 1, %bb.n ]
  store i16 %.sink.i, ptr %3, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  br i1 %.not28.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = tail call i64 @PyLong_AsLong(ptr noundef nonnull %.021) #6
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !42
  %i.ah = tail call ptr @PyErr_Occurred() #6
  %.not31.i = icmp eq ptr %i.ah, null
  br i1 %.not31.i, label %bb.r, label %.critedge37.i

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ai = tail call i64 @PyLong_AsLong(ptr noundef nonnull %.022) #6
  store i64 %i.ai, ptr %i.ae, align 8, !tbaa !43
  %i.aj = tail call ptr @PyErr_Occurred() #6
  %.not32.i = icmp eq ptr %i.aj, null
  br i1 %.not32.i, label %bb.t, label %.critedge37.i

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ak = trunc i32 %.0 to i16
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !44
  %4 = lshr i32 %i.h, 2
  %5 = and i32 %4, 1
  %6 = xor i32 %5, 7
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %i.am = call ptr @PyEval_SaveThread() #6
  %i.an = call i32 (i32, i32, ...) @fcntl64(i32 noundef range(i32 0, -2147483648) %i.d, i32 noundef %6, ptr noundef nonnull %3) #6 ; 2 uses
  call void @PyEval_RestoreThread(ptr noundef %i.am) #6
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %bb.v, label %.critedge.i

bb.v:                                             ; preds = %bb.u
  %i.ap = tail call ptr @__errno_location() #7
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.ar = icmp eq i32 %i.aq, 4
  br i1 %i.ar, label %bb.w, label %.critedge.thread11.i

.critedge.thread11.i:                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.as = call i32 @PyErr_CheckSignals() #6
  %.not34.i = icmp eq i32 %i.as, 0
  br i1 %.not34.i, label %bb.u, label %.critedge.thread.i, !llvm.loop !39

.critedge.thread.i:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %fcntl_lockf_impl.exit

.critedge.i:                                      ; preds = %bb.u
  %i.at = icmp sgt i32 %i.an, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br i1 %i.at, label %fcntl_lockf_impl.exit, label %bb.x

bb.x:                                             ; preds = %.critedge.i, %.critedge.thread11.i
  %i.au = load ptr, ptr @PyExc_OSError, align 8, !tbaa !12
  %i.av = call ptr @PyErr_SetFromErrno(ptr noundef %i.au) #6
  br label %fcntl_lockf_impl.exit

.critedge37.i:                                    ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %fcntl_lockf_impl.exit

fcntl_lockf_impl.exit:                            ; preds = %.critedge37.i, %bb.x, %.critedge.i, %.critedge.thread.i, %bb.k, %bb.j, %bb.e, %bb.c, %bb.b
  %.023 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.b ], [ null, %bb.j ], [ null, %.critedge37.i ], [ null, %bb.k ], [ @_Py_NoneStruct, %.critedge.i ], [ %i.av, %bb.x ], [ null, %.critedge.thread.i ]
  ret ptr %.023
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @PyObject_AsFileDescriptor(ptr noundef) local_unnamed_addr #1

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @PySys_Audit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @PyIndex_Check(ptr noundef) local_unnamed_addr #1

declare i32 @PyArg_Parse(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyEval_SaveThread() local_unnamed_addr #1

declare i32 @fcntl64(i32 noundef, i32 noundef, ...) local_unnamed_addr #1

declare void @PyEval_RestoreThread(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare i32 @PyErr_CheckSignals() local_unnamed_addr #1

declare ptr @PyErr_SetFromErrno(ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #1

declare i32 @PyObject_CheckBuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #1

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #1

declare void @PyBytesWriter_Discard(ptr noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_Finish(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsNativeBytes(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #4

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #1

declare void @PyErr_Clear() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @fcntl_flock_impl(i32 noundef range(i32 0, -2147483648) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %0, i32 noundef %1) #6
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %i.c = tail call ptr @PyEval_SaveThread() #6
  %i.d = tail call i32 @flock(i32 noundef %0, i32 noundef %1) #6 ; 2 uses
  tail call void @PyEval_RestoreThread(ptr noundef %i.c) #6
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.preheader
  %i.f = tail call ptr @__errno_location() #7
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9
  %i.h = icmp eq i32 %i.g, 4
  br i1 %i.h, label %bb.c, label %.thread5

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @PyErr_CheckSignals() #6
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.preheader, label %.loopexit, !llvm.loop !45

.critedge:                                        ; preds = %.preheader
  %i.j = icmp slt i32 %i.d, 0
  br i1 %i.j, label %.thread5, label %.loopexit

.thread5:                                         ; preds = %bb.b, %.critedge
  %i.k = load ptr, ptr @PyExc_OSError, align 8, !tbaa !12
  %i.l = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.k) #6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.critedge, %.thread5, %bb.a
  %.0 = phi ptr [ @_Py_NoneStruct, %.critedge ], [ null, %bb.a ], [ %i.l, %.thread5 ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare i32 @flock(i32 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @fcntl_exec(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.28, i64 noundef 1) #6
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %all_ins.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef 2) #6
  %.not70.i = icmp eq i32 %i.b, 0
  br i1 %.not70.i, label %bb.c, label %all_ins.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.30, i64 noundef 4) #6
  %.not71.i = icmp eq i32 %i.c, 0
  br i1 %.not71.i, label %bb.d, label %all_ins.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.31, i64 noundef 8) #6
  %.not72.i = icmp eq i32 %i.d, 0
  br i1 %.not72.i, label %bb.e, label %all_ins.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef 32) #6
  %.not73.i = icmp eq i32 %i.e, 0
  br i1 %.not73.i, label %bb.f, label %all_ins.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.33, i64 noundef 64) #6
  %.not74.i = icmp eq i32 %i.f, 0
  br i1 %.not74.i, label %bb.g, label %all_ins.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.34, i64 noundef 128) #6
  %.not75.i = icmp eq i32 %i.g, 0
  br i1 %.not75.i, label %bb.h, label %all_ins.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.35, i64 noundef 192) #6
  %.not76.i = icmp eq i32 %i.h, 0
  br i1 %.not76.i, label %bb.i, label %all_ins.exit.thread
end_hunk_0
