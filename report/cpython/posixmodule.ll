inline.NumInlined: 800
inline.NumDeleted: 249
begin_hunk_0_@os_sched_setscheduler:bb.a
  %or.cond = icmp eq i64 %2, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.61, i64 noundef %2, i64 noundef 3, i64 noundef 3) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !108
  %i.c = tail call i32 @PyLong_AsInt(ptr noundef %i.b) #19 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PyErr_Occurred() #19
  %.not15 = icmp eq ptr %i.e, null
  br i1 %.not15, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = tail call i32 @PyLong_AsInt(ptr noundef %i.g) #19 ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @PyErr_Occurred() #19
  %.not16 = icmp eq ptr %i.j, null
  br i1 %.not16, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %bb.e
  %.sink = phi i32 [ %i.h, %bb.e ], [ -1, %bb.f ]
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !108
  %i.m = getelementptr i8, ptr %0, i64 24
  %.val17 = load ptr, ptr %i.m, align 8, !tbaa !132
  %i.n = getelementptr i8, ptr %.val17, i64 24
  %.val17.val = load ptr, ptr %i.n, align 8, !tbaa !138
  %i.o = tail call fastcc ptr @os_sched_setscheduler_impl(ptr %.val17.val, i32 noundef %i.c, i32 noundef %.sink, ptr noundef %i.l)
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.b ], [ %i.o, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_sched_yield(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyEval_SaveThread() #19
  %i.b = tail call i32 @sched_yield() #19
  tail call void @PyEval_RestoreThread(ptr noundef %i.a) #19
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %os_sched_yield_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.e = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.d) #19
  br label %os_sched_yield_impl.exit

os_sched_yield_impl.exit:                         ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.e, %bb.b ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @os_sched_setaffinity(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.63, i64 noundef %2, i64 noundef 2, i64 noundef 2) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !108
  %i.c = tail call i32 @PyLong_AsInt(ptr noundef %i.b) #19 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PyErr_Occurred() #19
  %.not12 = icmp eq ptr %i.e, null
  br i1 %.not12, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink = phi i32 [ %i.c, %bb.c ], [ -1, %bb.d ]
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = tail call fastcc ptr @os_sched_setaffinity_impl(i32 noundef %.sink, ptr noundef %i.g)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.b ], [ %i.h, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_sched_getaffinity(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #19 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #19
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ %i.a, %bb.a ], [ -1, %bb.b ]
  %i.d = tail call fastcc ptr @os_sched_getaffinity_impl(i32 noundef %.sink)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.d, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_posix_openpt(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #19 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.e, label %.split

.split:                                           ; preds = %bb.a
  %i.c = or i32 %i.a, 524288
  %i.d = tail call i32 @posix_openpt(i32 noundef %i.c) #19 ; 4 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split
  %i.f = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.g = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.f) #19 ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %.split
  %i.h = tail call i32 @_Py_set_inheritable(i32 noundef %i.d, i32 noundef 0, ptr noundef null) #19
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %os_posix_openpt_impl.exit

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @close(i32 noundef %i.d) #19 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.k = tail call ptr @PyErr_Occurred() #19
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.split6, label %bb.j

.split6:                                          ; preds = %bb.e
  %i.l = tail call i32 @posix_openpt(i32 noundef -1) #19 ; 4 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split6
  %i.n = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.o = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.n) #19 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %.split6
  %i.p = tail call i32 @_Py_set_inheritable(i32 noundef %i.l, i32 noundef 0, ptr noundef null) #19
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %os_posix_openpt_impl.exit

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 @close(i32 noundef %i.l) #19 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.h
  %i.s = tail call ptr @PyErr_Occurred() #19
  %.not8 = icmp eq ptr %i.s, null
  br i1 %.not8, label %os_posix_openpt_impl.exit, label %bb.j

os_posix_openpt_impl.exit:                        ; preds = %bb.c, %bb.g, %bb.i
  %phi.call12 = phi i32 [ -1, %bb.i ], [ %i.d, %bb.c ], [ %i.l, %bb.g ]
  %i.t = sext i32 %phi.call12 to i64
  %i.u = tail call ptr @PyLong_FromLong(i64 noundef %i.t) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e, %os_posix_openpt_impl.exit
  %.0 = phi ptr [ null, %bb.e ], [ null, %bb.i ], [ %i.u, %os_posix_openpt_impl.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_grantpt(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyObject_AsFileDescriptor(ptr noundef %1) #19 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %os_grantpt_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyOS_setsig(i32 noundef 17, ptr noundef null) #19 ; 2 uses
  %i.d = tail call i32 @grantpt(i32 noundef range(i32 0, -2147483648) %i.a) #19
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #21    ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
  %i.h = tail call ptr @PyOS_setsig(i32 noundef 17, ptr noundef %i.c) #19 ; 0 uses
  store i32 %i.g, ptr %i.f, align 4, !tbaa !7
  %i.i = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.j = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.i) #19
  br label %os_grantpt_impl.exit

.critedge.i:                                      ; preds = %bb.b
  %2 = tail call ptr @PyOS_setsig(i32 noundef 17, ptr noundef %i.c) #19 ; 0 uses
  br label %os_grantpt_impl.exit

os_grantpt_impl.exit:                             ; preds = %.critedge.i, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.j, %bb.c ], [ @_Py_NoneStruct, %.critedge.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_unlockpt(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyObject_AsFileDescriptor(ptr noundef %1) #19 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %os_unlockpt_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @unlockpt(i32 noundef range(i32 0, -2147483648) %i.a) #19
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %os_unlockpt_impl.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.f = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.e) #19
  br label %os_unlockpt_impl.exit

os_unlockpt_impl.exit:                            ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ @_Py_NoneStruct, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_ptsname(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [4097 x i8], align 16             ; 4 uses
  %i.b = tail call i32 @PyObject_AsFileDescriptor(ptr noundef %1) #19 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.d = call i32 @ptsname_r(i32 noundef range(i32 0, -2147483648) %i.b, ptr noundef nonnull %i.a, i64 noundef 4097) #19 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #21
  store i32 %i.d, ptr %i.e, align 4, !tbaa !7
  %i.f = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.g = call ptr @PyErr_SetFromErrno(ptr noundef %i.f) #19
  br label %os_ptsname_impl.exit

bb.d:                                             ; preds = %bb.b
  %i.h = call ptr @PyUnicode_DecodeFSDefault(ptr noundef nonnull %i.a) #19
  br label %os_ptsname_impl.exit

os_ptsname_impl.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %os_ptsname_impl.exit
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i, %os_ptsname_impl.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_openpty(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 -1, ptr %i.b, align 4, !tbaa !7
  %i.c = call i32 @openpty(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, ptr noundef null) #19
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !7
  %i.e = call i32 @_Py_set_inheritable(i32 noundef %i.d, i32 noundef 0, ptr noundef null) #19
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.b, align 4, !tbaa !7
  %i.h = call i32 @_Py_set_inheritable(i32 noundef %i.g, i32 noundef 0, ptr noundef null) #19
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.a, align 4, !tbaa !7
  %i.k = load i32, ptr %i.b, align 4, !tbaa !7
  %i.l = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.323, i32 noundef %i.j, i32 noundef %i.k) #19
  br label %os_openpty_impl.exit

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.n = call ptr @PyErr_SetFromErrno(ptr noundef %i.m) #19 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b
  %i.o = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %.not3.i = icmp eq i32 %i.o, -1
  br i1 %.not3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @close(i32 noundef %i.o) #19    ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = load i32, ptr %i.b, align 4, !tbaa !7    ; 2 uses
  %.not4.i = icmp eq i32 %i.q, -1
  br i1 %.not4.i, label %os_openpty_impl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = call i32 @close(i32 noundef %i.q) #19    ; 0 uses
  br label %os_openpty_impl.exit

os_openpty_impl.exit:                             ; preds = %bb.d, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.l, %bb.d ], [ null, %bb.i ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @os_login_tty(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyObject_AsFileDescriptor(ptr noundef %1) #19 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %os_login_tty_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @login_tty(i32 noundef range(i32 0, -2147483648) %i.a) #19
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %os_login_tty_impl.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.f = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.e) #19
  br label %os_login_tty_impl.exit

os_login_tty_impl.exit:                           ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ @_Py_NoneStruct, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_forkpty(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 -1, ptr %i.a, align 4, !tbaa !7
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 7384
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_PythonFinalizationError, align 8, !tbaa !108
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.306) #19
  br label %os_forkpty_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @_PyInterpreterState_Main() #19
  %.not1.i = icmp eq ptr %i.c, %i.g
  br i1 %.not1.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !108
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.324) #19
  br label %os_forkpty_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.i = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.325, ptr noundef null) #19
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %os_forkpty_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 10744
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  tail call fastcc void @run_at_forkers(ptr noundef %i.m, i32 noundef 1)
  tail call void @_PyImport_AcquireLock(ptr noundef %i.k) #19
  tail call void @_PyEval_StopTheWorldAll(ptr noundef nonnull @_PyRuntime) #19
  %i.n = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 864), i8 0, i8 1 seq_cst seq_cst, align 1
  %i.o = extractvalue { i8, i1 } %i.n, 1
  br i1 %i.o, label %PyOS_BeforeFork.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i32 @_PyMutex_LockTimed(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 864), i64 noundef -1, i32 noundef 0) #19 ; 0 uses
  br label %PyOS_BeforeFork.exit.i

PyOS_BeforeFork.exit.i:                           ; preds = %bb.g, %bb.f
  %i.q = call i32 @forkpty(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null) #19 ; 3 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %PyOS_BeforeFork.exit.i
  call void @PyOS_AfterFork_Child()
  br label %bb.n

end_hunk_0
begin_hunk_1_@os_readinto:bb.a
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.348, ptr noundef nonnull @.str.349, ptr noundef %i.j) #19
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %.val = load ptr, ptr %3, align 8, !tbaa !183
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val15 = load i64, ptr %i.k, align 8, !tbaa !186
  %i.l = call i64 @_Py_read(i32 noundef %i.c, ptr noundef %.val, i64 noundef %.val15) #19 ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = call ptr @PyErr_Occurred() #19
  %.not13 = icmp eq ptr %i.n, null
  br i1 %.not13, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = call ptr @PyLong_FromSsize_t(i64 noundef %i.l) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.d, %bb.b, %bb.i, %bb.f
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.h ], [ %i.o, %bb.i ], [ null, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !187
  %.not14 = icmp eq ptr %i.q, null
  br i1 %.not14, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @PyBuffer_Release(ptr noundef nonnull %3) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_readv(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.115, i64 noundef %2, i64 noundef 2, i64 noundef 2) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !108
  %i.c = tail call i32 @PyLong_AsInt(ptr noundef %i.b) #19 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %.split

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PyErr_Occurred() #19
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %.split, label %bb.g

.split:                                           ; preds = %bb.d, %bb.c
  %.sink = phi i32 [ %i.c, %bb.c ], [ -1, %bb.d ]
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = tail call fastcc i64 @os_readv_impl(i32 noundef %.sink, ptr noundef %i.g) ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split
  %i.j = tail call ptr @PyErr_Occurred() #19
  %.not15 = icmp eq ptr %i.j, null
  br i1 %.not15, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %.split
  %i.k = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.h) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.f
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ %i.k, %bb.f ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_pread(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.116, i64 noundef %2, i64 noundef 3, i64 noundef 3) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %os_pread_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !108
  %i.c = tail call i32 @PyLong_AsInt(ptr noundef %i.b) #19 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PyErr_Occurred() #19
  %.not23 = icmp eq ptr %i.e, null
  br i1 %.not23, label %bb.e, label %os_pread_impl.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = tail call ptr @_PyNumber_Index(ptr noundef %i.g) #19 ; 5 uses
  %.not24 = icmp eq ptr %i.h, null
  br i1 %.not24, label %Py_DECREF.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.h) #19 ; 2 uses
  %i.j = load i32, ptr %i.h, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.h, align 8, !tbaa !118
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #19
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %bb.f
  %i.m = icmp eq i64 %i.i, -1
  br i1 %i.m, label %Py_DECREF.exit.thread, label %bb.i

Py_DECREF.exit.thread:                            ; preds = %bb.e, %Py_DECREF.exit
  %i.n = tail call ptr @PyErr_Occurred() #19
  %.not25 = icmp eq ptr %i.n, null
  br i1 %.not25, label %bb.i, label %os_pread_impl.exit

bb.i:                                             ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit
  %.01931.ph = phi i64 [ %i.i, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ] ; 3 uses
  %i.o = getelementptr i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.q = tail call i64 @PyLong_AsLong(ptr noundef %i.p) #19
  %i.r = tail call ptr @PyErr_Occurred() #19
  %.not.i28.not = icmp eq ptr %i.r, null
  br i1 %.not.i28.not, label %bb.j, label %os_pread_impl.exit

bb.j:                                             ; preds = %bb.i
  %i.s = icmp slt i64 %.01931.ph, 0
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @__errno_location() #21
  store i32 22, ptr %i.t, align 4, !tbaa !7
  %i.u = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.v = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.u) #19
  br label %os_pread_impl.exit

bb.l:                                             ; preds = %bb.j
  %i.w = tail call ptr @PyBytesWriter_Create(i64 noundef %.01931.ph) #19 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %os_pread_impl.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l, %bb.n
  %i.y = tail call ptr @PyEval_SaveThread() #19
  %i.z = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.w) #19
  %i.aa = tail call i64 @pread64(i32 noundef %i.c, ptr noundef %i.z, i64 noundef %.01931.ph, i64 noundef %i.q) #19 ; 2 uses
  tail call void @PyEval_RestoreThread(ptr noundef %i.y) #19
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %.preheader.i
  %i.ac = tail call ptr @__errno_location() #21
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ae = icmp eq i32 %i.ad, 4
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.af = tail call i32 @PyErr_CheckSignals() #19
  %.not.i29 = icmp eq i32 %i.af, 0
  br i1 %.not.i29, label %.preheader.i, label %.loopexit.i, !llvm.loop !188

bb.o:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.ah = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.ag) #19 ; 0 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.n, %bb.o
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.w) #19
  br label %os_pread_impl.exit

.critedge.i:                                      ; preds = %.preheader.i
  %i.ai = tail call ptr @PyBytesWriter_FinishWithSize(ptr noundef nonnull %i.w, i64 noundef %i.aa) #19
  br label %os_pread_impl.exit

os_pread_impl.exit:                               ; preds = %.critedge.i, %.loopexit.i, %bb.l, %bb.k, %Py_DECREF.exit.thread, %bb.b, %bb.d, %bb.i
  %.021 = phi ptr [ null, %bb.d ], [ null, %Py_DECREF.exit.thread ], [ null, %bb.i ], [ null, %bb.b ], [ %i.v, %bb.k ], [ %i.ai, %.critedge.i ], [ null, %.loopexit.i ], [ null, %bb.l ]
  ret ptr %.021
}

; Function Attrs: nounwind uwtable
define internal ptr @os_preadv(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = add i64 %2, -3
  %or.cond = icmp ult i64 %i.c, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.117, i64 noundef %2, i64 noundef 3, i64 noundef 4) #19
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !108
  %i.f = tail call i32 @PyLong_AsInt(ptr noundef %i.e) #19 ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @PyErr_Occurred() #19
  %.not19 = icmp eq ptr %i.h, null
  br i1 %.not19, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !108  ; 3 uses
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !108
  %i.m = tail call i64 @PyLong_AsLong(ptr noundef %i.l) #19
  %i.n = tail call ptr @PyErr_Occurred() #19
  %.not.i.not = icmp eq ptr %i.n, null
  br i1 %.not.i.not, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.o = icmp slt i64 %2, 4
  br i1 %i.o, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !108
  %i.r = tail call i32 @PyLong_AsInt(ptr noundef %i.q) #19 ; 2 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = tail call ptr @PyErr_Occurred() #19
  %.not21 = icmp eq ptr %i.t, null
  br i1 %.not21, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.017 = phi i32 [ 0, %bb.f ], [ -1, %bb.h ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.u = tail call i32 @PySequence_Check(ptr noundef %i.j) #19
  %.not.i23 = icmp eq i32 %i.u, 0
  br i1 %.not.i23, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !108
  tail call void @PyErr_SetString(ptr noundef %i.v, ptr noundef nonnull @.str.351) #19
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.w = tail call i64 @PySequence_Size(ptr noundef %i.j) #19 ; 5 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = call fastcc i32 @iov_setup(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.j, i64 noundef %i.w, i32 noundef 1)
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.q, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  %i.aa = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ab = trunc i64 %i.w to i32                   ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.preheader.i
  %i.ac = tail call ptr @PyEval_SaveThread() #19
  %i.ad = tail call i64 @preadv64v2(i32 noundef %i.f, ptr noundef %i.aa, i32 noundef %i.ab, i64 noundef %i.m, i32 noundef %.017) #19 ; 2 uses
  tail call void @PyEval_RestoreThread(ptr noundef %i.ac) #19
  %3 = icmp slt i64 %i.ad, 0
  br i1 %3, label %bb.n, label %.critedge22.i

bb.n:                                             ; preds = %bb.m
  %4 = tail call ptr @__errno_location() #21      ; 3 uses
  %i.ae = load i32, ptr %4, align 4, !tbaa !7     ; 2 uses
  %i.af = icmp eq i32 %i.ae, 4                    ; 2 uses
  br i1 %i.af, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %i.ag = tail call i32 @PyErr_CheckSignals() #19
  %.not20.i = icmp eq i32 %i.ag, 0
  br i1 %.not20.i, label %bb.m, label %..critedge_crit_edge.i, !llvm.loop !189

..critedge_crit_edge.i:                           ; preds = %bb.o
  %.pre.i = load i32, ptr %4, align 4, !tbaa !7
  br label %.critedge.i, !llvm.loop !189

.critedge.i:                                      ; preds = %bb.n, %..critedge_crit_edge.i
  %5 = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.ae, %bb.n ]
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !190 ; 2 uses
  tail call void @PyMem_Free(ptr noundef %i.aa) #19
  %i.ai = icmp sgt i32 %i.ab, 0
  br i1 %i.ai, label %.lr.ph.preheader.i.i, label %iov_cleanup.exit.i

.lr.ph.preheader.i.i:                             ; preds = %.critedge.i
  %wide.trip.count.i.i = and i64 %i.w, 2147483647
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.aj = getelementptr [80 x i8], ptr %i.ah, i64 %indvars.iv.i.i
  tail call void @PyBuffer_Release(ptr noundef %i.aj) #19
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %iov_cleanup.exit.i, label %.lr.ph.i.i, !llvm.loop !191

iov_cleanup.exit.i:                               ; preds = %.lr.ph.i.i, %.critedge.i
  tail call void @PyMem_Free(ptr noundef %i.ah) #19
  br i1 %i.af, label %bb.q, label %bb.p

bb.p:                                             ; preds = %iov_cleanup.exit.i
  store i32 %5, ptr %4, align 4, !tbaa !7
  %i.ak = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.al = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.ak) #19 ; 0 uses
  br label %bb.q

.critedge22.i:                                    ; preds = %bb.m
  %6 = load ptr, ptr %i.b, align 8, !tbaa !190    ; 2 uses
  tail call void @PyMem_Free(ptr noundef %i.aa) #19
  %7 = icmp sgt i32 %i.ab, 0
  br i1 %7, label %.lr.ph.preheader.i23.i, label %os_preadv_impl.exit

.lr.ph.preheader.i23.i:                           ; preds = %.critedge22.i
  %wide.trip.count.i24.i = and i64 %i.w, 2147483647
  br label %os_preadv_impl.exit.thread

os_preadv_impl.exit.thread:                       ; preds = %os_preadv_impl.exit.thread, %.lr.ph.preheader.i23.i
  %indvars.iv.i26.i = phi i64 [ 0, %.lr.ph.preheader.i23.i ], [ %indvars.iv.next.i27.i, %os_preadv_impl.exit.thread ] ; 2 uses
  %8 = getelementptr [80 x i8], ptr %6, i64 %indvars.iv.i26.i
  tail call void @PyBuffer_Release(ptr noundef %8) #19
  %indvars.iv.next.i27.i = add nuw nsw i64 %indvars.iv.i26.i, 1 ; 2 uses
  %exitcond.not.i28.i = icmp eq i64 %indvars.iv.next.i27.i, %wide.trip.count.i24.i
  br i1 %exitcond.not.i28.i, label %os_preadv_impl.exit, label %os_preadv_impl.exit.thread, !llvm.loop !191

os_preadv_impl.exit:                              ; preds = %os_preadv_impl.exit.thread, %.critedge22.i
  tail call void @PyMem_Free(ptr noundef %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.r

bb.q:                                             ; preds = %bb.j, %bb.k, %bb.l, %iov_cleanup.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.am = tail call ptr @PyErr_Occurred() #19
  %.not22 = icmp eq ptr %i.am, null
  br i1 %.not22, label %bb.r, label %bb.s

bb.r:                                             ; preds = %os_preadv_impl.exit, %bb.q
  %.1.i25 = phi i64 [ -1, %bb.q ], [ %i.ad, %os_preadv_impl.exit ]
  %i.an = tail call ptr @PyLong_FromSsize_t(i64 noundef %.1.i25) #19
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.h, %bb.e, %bb.d, %bb.b, %bb.r
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.q ], [ %i.an, %bb.r ], [ null, %bb.h ], [ null, %bb.e ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_write(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.118, i64 noundef %2, i64 noundef 2, i64 noundef 2) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !108
  %i.c = tail call i32 @PyLong_AsInt(ptr noundef %i.b) #19 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PyErr_Occurred() #19
  %.not11 = icmp eq ptr %i.e, null
  br i1 %.not11, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = call i32 @PyObject_GetBuffer(ptr noundef %i.g, ptr noundef nonnull %3, i32 noundef 0) #19
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.val = load ptr, ptr %3, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val15 = load i64, ptr %i.i, align 8, !tbaa !186
  %i.j = call i64 @_Py_write(i32 noundef %i.c, ptr noundef %.val, i64 noundef %.val15) #19 ; 2 uses
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = call ptr @PyErr_Occurred() #19
  %.not13 = icmp eq ptr %i.l, null
  br i1 %.not13, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = call ptr @PyLong_FromSsize_t(i64 noundef %i.j) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.d, %bb.b, %bb.h
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.g ], [ %i.m, %bb.h ], [ null, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !187
  %.not14 = icmp eq ptr %i.o, null
  br i1 %.not14, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @PyBuffer_Release(ptr noundef nonnull %3) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_writev(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.119, i64 noundef %2, i64 noundef 2, i64 noundef 2) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !108
  %i.c = tail call i32 @PyLong_AsInt(ptr noundef %i.b) #19 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %.split

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PyErr_Occurred() #19
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %.split, label %bb.g

.split:                                           ; preds = %bb.d, %bb.c
  %.sink = phi i32 [ %i.c, %bb.c ], [ -1, %bb.d ]
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = tail call fastcc i64 @os_writev_impl(i32 noundef %.sink, ptr noundef %i.g) ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split
  %i.j = tail call ptr @PyErr_Occurred() #19
  %.not15 = icmp eq ptr %i.j, null
  br i1 %.not15, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %.split
  %i.k = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.h) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.f
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ %i.k, %bb.f ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_pwrite(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  %or.cond = icmp eq i64 %2, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.120, i64 noundef %2, i64 noundef 3, i64 noundef 3) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !108
  %i.c = tail call i32 @PyLong_AsInt(ptr noundef %i.b) #19 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PyErr_Occurred() #19
  %.not12 = icmp eq ptr %i.e, null
  br i1 %.not12, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = call i32 @PyObject_GetBuffer(ptr noundef %i.g, ptr noundef nonnull %3, i32 noundef 0) #19
  %.not13 = icmp eq i32 %i.h, 0
  br i1 %.not13, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !108
  %i.k = call i64 @PyLong_AsLong(ptr noundef %i.j) #19
  %i.l = call ptr @PyErr_Occurred() #19
  %.not.i.not = icmp eq ptr %i.l, null
  br i1 %.not.i.not, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.n = call ptr @PyEval_SaveThread() #19
  %i.o = load ptr, ptr %3, align 8, !tbaa !183
  %i.p = load i64, ptr %i.m, align 8, !tbaa !186
  %i.q = call i64 @pwrite64(i32 noundef %i.c, ptr noundef %i.o, i64 noundef %i.p, i64 noundef %i.k) #19 ; 3 uses
  call void @PyEval_RestoreThread(ptr noundef %i.n) #19
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.i, label %os_pwrite_impl.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.s = tail call ptr @__errno_location() #21
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7
  %i.u = icmp eq i32 %i.t, 4
  br i1 %i.u, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.v = call i32 @PyErr_CheckSignals() #19
  %.not.i17 = icmp eq i32 %i.v, 0
  br i1 %.not.i17, label %bb.h, label %os_pwrite_impl.exit, !llvm.loop !192

.critedge.i:                                      ; preds = %bb.i
  %i.w = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.x = call ptr @PyErr_SetFromErrno(ptr noundef %i.w) #19 ; 0 uses
  br label %os_pwrite_impl.exit

os_pwrite_impl.exit:                              ; preds = %bb.j, %.critedge.i
  %i.y = icmp eq i64 %i.q, -1
  br i1 %i.y, label %bb.k, label %os_pwrite_impl.exit.thread

bb.k:                                             ; preds = %os_pwrite_impl.exit
  %i.z = call ptr @PyErr_Occurred() #19
  %.not15 = icmp eq ptr %i.z, null
  br i1 %.not15, label %os_pwrite_impl.exit.thread, label %bb.l

os_pwrite_impl.exit.thread:                       ; preds = %bb.h, %bb.k, %os_pwrite_impl.exit
  %i.aa = call ptr @PyLong_FromSsize_t(i64 noundef %i.q) #19
  br label %bb.l

end_hunk_1
begin_hunk_2_@utimensat

; Function Attrs: nounwind
declare i32 @futimens(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @times(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #3

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @_PyInterpreterState_HasFeature(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @execv(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @fexecve(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @execve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -2147483648, 2147483648) i64 @get_number_of_os_threads() unnamed_addr #0 {
bb.a:
  %i.a = alloca [160 x i8], align 16              ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = tail call noalias ptr @fopen64(ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.310) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.d = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 159, ptr noundef nonnull %i.c)
  %i.e = getelementptr i8, ptr %i.a, i64 %i.d
  store i8 0, ptr %i.e, align 1, !tbaa !118
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr null, ptr %i.b, align 8, !tbaa !126
  %i.g = call ptr @strtok_r(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.311, ptr noundef nonnull %i.b) #19
  %.not17 = icmp eq ptr %i.g, null
  br i1 %.not17, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.014 = phi i32 [ %i.i, %.lr.ph ], [ 19, %bb.b ]
  %i.h = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.311, ptr noundef nonnull %i.b) #19 ; 2 uses
  %i.i = add nsw i32 %.014, -1                    ; 3 uses
  %i.j = icmp ne i32 %i.i, 0
  %i.k = icmp ne ptr %i.h, null                   ; 2 uses
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !261

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = icmp eq i32 %i.i, 0
  %i.n = select i1 %i.m, i1 %i.k, i1 false
  br i1 %i.n, label %bb.c, label %._crit_edge.thread

bb.c:                                             ; preds = %._crit_edge
  %i.o = call i64 @__isoc23_strtol(ptr noundef nonnull %i.h, ptr noundef null, i32 noundef 10) #19, !inline_history !262
  %sext = shl i64 %i.o, 32
  %i.p = ashr exact i64 %sext, 32
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %bb.c, %._crit_edge
  %.012 = phi i64 [ %i.p, %bb.c ], [ 0, %._crit_edge ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread, %bb.a
  %.1 = phi i64 [ %.012, %._crit_edge.thread ], [ 0, %bb.a ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @warn_about_fork_with_threads(ptr noundef %0, i64 noundef range(i64 -2147483648, 2147483648) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %bb.b, label %Py_DECREF.exit39

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyImport_GetModule(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 102312)) #19 ; 12 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @PyErr_Clear() #19
  br label %Py_DECREF.exit39.thread

bb.d:                                             ; preds = %bb.b
  %i.c = tail call ptr @PyObject_GetAttr(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71584)) #19 ; 8 uses
  %.not28 = icmp eq ptr %i.c, null
  br i1 %.not28, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  tail call void @PyErr_Clear() #19
  %i.d = load i32, ptr %i.b, align 8, !tbaa !118  ; 2 uses
  %.not.i38 = icmp sgt i32 %i.d, -1
  br i1 %.not.i38, label %bb.f, label %Py_DECREF.exit39.thread

bb.f:                                             ; preds = %bb.e
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.b, align 8, !tbaa !118
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.g, label %Py_DECREF.exit39.thread

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #19
  br label %Py_DECREF.exit39.thread

bb.h:                                             ; preds = %bb.d
  %i.g = tail call ptr @PyObject_GetAttr(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 73008)) #19 ; 5 uses
  %.not29.not = icmp eq ptr %i.g, null
  br i1 %.not29.not, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  tail call void @PyErr_Clear() #19
  %i.h = load i32, ptr %i.b, align 8, !tbaa !118  ; 2 uses
  %.not.i36 = icmp sgt i32 %i.h, -1
  br i1 %.not.i36, label %bb.j, label %Py_DECREF.exit37

bb.j:                                             ; preds = %bb.i
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.b, align 8, !tbaa !118
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.k, label %Py_DECREF.exit37

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #19
  br label %Py_DECREF.exit37

Py_DECREF.exit37:                                 ; preds = %bb.i, %bb.j, %bb.k
  %i.k = load i32, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %.not.i34 = icmp sgt i32 %i.k, -1
  br i1 %.not.i34, label %bb.l, label %Py_DECREF.exit39.thread

bb.l:                                             ; preds = %Py_DECREF.exit37
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.c, align 8, !tbaa !118
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.m, label %Py_DECREF.exit39.thread

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #19
  br label %Py_DECREF.exit39.thread

bb.n:                                             ; preds = %bb.h
  %i.n = load i32, ptr %i.b, align 8, !tbaa !118  ; 2 uses
  %.not.i32 = icmp sgt i32 %i.n, -1
  br i1 %.not.i32, label %bb.o, label %Py_DECREF.exit33

bb.o:                                             ; preds = %bb.n
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.b, align 8, !tbaa !118
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.p, label %Py_DECREF.exit33

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #19
  br label %Py_DECREF.exit33

Py_DECREF.exit33:                                 ; preds = %bb.n, %bb.o, %bb.p
  %i.q = tail call i64 @PyMapping_Size(ptr noundef nonnull %i.c) #19
  %i.r = tail call i64 @PyMapping_Size(ptr noundef nonnull %i.g) #19
  %i.s = add i64 %i.r, %i.q                       ; 3 uses
  tail call void @PyErr_Clear() #19
  %i.t = load i32, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %.not.i30 = icmp sgt i32 %i.t, -1
  br i1 %.not.i30, label %bb.q, label %Py_DECREF.exit31

bb.q:                                             ; preds = %Py_DECREF.exit33
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.c, align 8, !tbaa !118
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.r, label %Py_DECREF.exit31

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #19
  br label %Py_DECREF.exit31

Py_DECREF.exit31:                                 ; preds = %Py_DECREF.exit33, %bb.q, %bb.r
  %i.w = load i32, ptr %i.g, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i, label %bb.s, label %Py_DECREF.exit39

bb.s:                                             ; preds = %Py_DECREF.exit31
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.g, align 8, !tbaa !118
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.t, label %Py_DECREF.exit39

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #19
  br label %Py_DECREF.exit39

Py_DECREF.exit39:                                 ; preds = %Py_DECREF.exit31, %bb.s, %bb.t, %bb.a
  %.321 = phi i64 [ %1, %bb.a ], [ %i.s, %bb.t ], [ %i.s, %bb.s ], [ %i.s, %Py_DECREF.exit31 ]
  %i.z = icmp sgt i64 %.321, 1
  br i1 %i.z, label %bb.u, label %Py_DECREF.exit39.thread

bb.u:                                             ; preds = %Py_DECREF.exit39
  %i.aa = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !108
  %i.ab = tail call i32 @getpid() #19
  %i.ac = tail call i32 (ptr, i64, ptr, ...) @PyErr_WarnFormat(ptr noundef %i.aa, i64 noundef 1, ptr noundef nonnull @.str.312, i32 noundef %i.ab, ptr noundef %0) #19
  br label %Py_DECREF.exit39.thread

Py_DECREF.exit39.thread:                          ; preds = %Py_DECREF.exit37, %bb.l, %bb.m, %bb.g, %bb.f, %bb.e, %bb.c, %Py_DECREF.exit39, %bb.u
  %.3 = phi i32 [ %i.ac, %bb.u ], [ 0, %Py_DECREF.exit39 ], [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %Py_DECREF.exit37 ]
  ret i32 %.3
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok_r(ptr noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @PyImport_GetModule(ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_GetAttr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #4

declare i32 @PyCallable_Check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sched_get_priority_max(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @sched_get_priority_min(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @os_sched_getparam_impl(ptr noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.sched_param, align 4        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = call i32 @sched_getparam(i32 noundef %1, ptr noundef nonnull %2) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.c = call ptr @PyErr_SetFromErrno(ptr noundef %i.b) #19
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.d, align 8, !tbaa !132
  %i.e = getelementptr i8, ptr %.val, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.g = call ptr @PyStructSequence_New(ptr noundef %i.f) #19 ; 6 uses
  %.not11 = icmp eq ptr %i.g, null
  br i1 %.not11, label %Py_DECREF.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %2, align 4, !tbaa !253
  %i.i = sext i32 %i.h to i64
  %i.j = call ptr @PyLong_FromLong(i64 noundef %i.i) #19 ; 2 uses
  %.not12 = icmp eq ptr %i.j, null
  br i1 %.not12, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.g, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.g, align 8, !tbaa !118
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.g) #19
  br label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.d
  call void @PyStructSequence_SetItem(ptr noundef nonnull %i.g, i64 noundef 0, ptr noundef nonnull %i.j) #19
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %bb.h, %bb.c, %bb.b
  %.1 = phi ptr [ %i.c, %bb.b ], [ %i.g, %bb.h ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.1
}

; Function Attrs: nounwind
declare i32 @sched_getparam(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @sched_getscheduler(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @sched_rr_get_interval(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @os_sched_setparam_impl(ptr readnone captures(address) %.24.val.24.val, i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.sched_param, align 4        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val11.i = load ptr, ptr %i.a, align 8, !tbaa !110
  %.not.i = icmp eq ptr %.val11.i, %.24.val.24.val
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !108
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.271) #19
  br label %convert_sched_param.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyStructSequence_GetItem(ptr noundef nonnull %1, i64 noundef 0) #19
  %i.d = tail call i64 @PyLong_AsLong(ptr noundef %i.c) #19 ; 3 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @PyErr_Occurred() #19
  %.not10.i = icmp eq ptr %i.f, null
  br i1 %.not10.i, label %bb.g, label %convert_sched_param.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.g = add i64 %i.d, -2147483648
  %or.cond.i = icmp ult i64 %i.g, -4294967296
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !108
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.272) #19
  br label %convert_sched_param.exit.thread

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.i = trunc nsw i64 %i.d to i32
  store i32 %i.i, ptr %2, align 4, !tbaa !253
  %i.j = call i32 @sched_setparam(i32 noundef %0, ptr noundef nonnull %2) #19
  %.not3 = icmp eq i32 %i.j, 0
  br i1 %.not3, label %convert_sched_param.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.l = call ptr @PyErr_SetFromErrno(ptr noundef %i.k) #19
  br label %convert_sched_param.exit.thread

convert_sched_param.exit.thread:                  ; preds = %bb.d, %bb.f, %bb.b, %bb.g, %bb.h
  %.0 = phi ptr [ %i.l, %bb.h ], [ @_Py_NoneStruct, %bb.g ], [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.0
}

; Function Attrs: nounwind
declare i32 @sched_setparam(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @os_sched_setscheduler_impl(ptr readnone captures(address) %.24.val.24.val, i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.sched_param, align 4        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val11.i = load ptr, ptr %i.a, align 8, !tbaa !110
  %.not.i = icmp eq ptr %.val11.i, %.24.val.24.val
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !108
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.271) #19
  br label %convert_sched_param.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyStructSequence_GetItem(ptr noundef nonnull %2, i64 noundef 0) #19
  %i.d = tail call i64 @PyLong_AsLong(ptr noundef %i.c) #19 ; 3 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @PyErr_Occurred() #19
  %.not10.i = icmp eq ptr %i.f, null
  br i1 %.not10.i, label %bb.g, label %convert_sched_param.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.g = add i64 %i.d, -2147483648
  %or.cond.i = icmp ult i64 %i.g, -4294967296
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !108
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.272) #19
  br label %convert_sched_param.exit.thread

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.i = trunc nsw i64 %i.d to i32
  store i32 %i.i, ptr %3, align 4, !tbaa !253
  %i.j = call i32 @sched_setscheduler(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %3) #19
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.h, label %convert_sched_param.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.l = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.m = call ptr @PyErr_SetFromErrno(ptr noundef %i.l) #19
end_hunk_2
begin_hunk_3_@os_waitid_impl:bb.a
bb.n:                                             ; preds = %_PyLong_FromUid.exit
  %i.ac = load i32, ptr %i.p, align 8, !tbaa !118 ; 2 uses
  %.not.i72 = icmp sgt i32 %i.ac, -1
  br i1 %.not.i72, label %bb.o, label %Py_DECREF.exit75.thread

bb.o:                                             ; preds = %bb.n
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.p, align 8, !tbaa !118
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.p, label %Py_DECREF.exit75.thread

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.p) #19
  br label %Py_DECREF.exit75.thread

bb.q:                                             ; preds = %_PyLong_FromUid.exit
  call void @PyStructSequence_SetItem(ptr noundef nonnull %i.p, i64 noundef 1, ptr noundef nonnull %.0.i) #19
  %i.af = load i32, ptr %4, align 8, !tbaa !274
  %i.ag = sext i32 %i.af to i64
  %i.ah = call ptr @PyLong_FromLong(i64 noundef %i.ag) #19 ; 2 uses
  %.not64 = icmp eq ptr %i.ah, null
  br i1 %.not64, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ai = load i32, ptr %i.p, align 8, !tbaa !118 ; 2 uses
  %.not.i70 = icmp sgt i32 %i.ai, -1
  br i1 %.not.i70, label %bb.s, label %Py_DECREF.exit75.thread

bb.s:                                             ; preds = %bb.r
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.p, align 8, !tbaa !118
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.t, label %Py_DECREF.exit75.thread

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.p) #19
  br label %Py_DECREF.exit75.thread

bb.u:                                             ; preds = %bb.q
  call void @PyStructSequence_SetItem(ptr noundef nonnull %i.p, i64 noundef 2, ptr noundef nonnull %i.ah) #19
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !118
  %i.an = sext i32 %i.am to i64
  %i.ao = call ptr @PyLong_FromLong(i64 noundef %i.an) #19 ; 2 uses
  %.not65 = icmp eq ptr %i.ao, null
  br i1 %.not65, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ap = load i32, ptr %i.p, align 8, !tbaa !118 ; 2 uses
  %.not.i68 = icmp sgt i32 %i.ap, -1
  br i1 %.not.i68, label %bb.w, label %Py_DECREF.exit75.thread

bb.w:                                             ; preds = %bb.v
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.p, align 8, !tbaa !118
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.x, label %Py_DECREF.exit75.thread

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.p) #19
  br label %Py_DECREF.exit75.thread

bb.y:                                             ; preds = %bb.u
  call void @PyStructSequence_SetItem(ptr noundef nonnull %i.p, i64 noundef 3, ptr noundef nonnull %i.ao) #19
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !276
  %i.au = sext i32 %i.at to i64
  %i.av = call ptr @PyLong_FromLong(i64 noundef %i.au) #19 ; 2 uses
  %.not66 = icmp eq ptr %i.av, null
  br i1 %.not66, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.aw = load i32, ptr %i.p, align 8, !tbaa !118 ; 2 uses
  %.not.i = icmp sgt i32 %i.aw, -1
  br i1 %.not.i, label %bb.aa, label %Py_DECREF.exit75.thread

bb.aa:                                            ; preds = %bb.z
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.p, align 8, !tbaa !118
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.ab, label %Py_DECREF.exit75.thread

bb.ab:                                            ; preds = %bb.aa
  call void @_Py_Dealloc(ptr noundef nonnull %i.p) #19
  br label %Py_DECREF.exit75.thread

bb.ac:                                            ; preds = %bb.y
  call void @PyStructSequence_SetItem(ptr noundef nonnull %i.p, i64 noundef 4, ptr noundef nonnull %i.av) #19
  br label %Py_DECREF.exit75.thread

Py_DECREF.exit75.thread:                          ; preds = %bb.d, %bb.ac, %bb.z, %bb.aa, %bb.ab, %bb.v, %bb.w, %bb.x, %bb.r, %bb.s, %bb.t, %bb.n, %bb.o, %bb.p, %bb.h, %bb.i, %bb.j, %bb.f, %.critedge.a, %bb.e
  %.7 = phi ptr [ @_Py_NoneStruct, %.critedge.a ], [ null, %bb.h ], [ %i.j, %bb.e ], [ null, %bb.f ], [ %i.p, %bb.ac ], [ null, %bb.v ], [ null, %bb.r ], [ null, %bb.n ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.p ], [ null, %bb.o ], [ null, %bb.t ], [ null, %bb.s ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.ab ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret ptr %.7
}

declare i32 @waitid(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @os_waitpid_impl(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.b = call ptr @PyEval_SaveThread() #19
  %i.c = call i32 @waitpid(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef %1) #19 ; 2 uses
  call void @PyEval_RestoreThread(ptr noundef %i.b) #19
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.critedge.a

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #21
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @PyErr_CheckSignals() #19
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %.loopexit, !llvm.loop !277

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.j = call ptr @PyErr_SetFromErrno(ptr noundef %i.i) #19
  br label %.loopexit

.critedge.a:                                      ; preds = %bb.b
  %i.k = zext nneg i32 %i.c to i64
  %i.l = call ptr @PyLong_FromLong(i64 noundef %i.k) #19
  %i.m = load i32, ptr %i.a, align 4, !tbaa !7
  %i.n = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.339, ptr noundef %i.l, i32 noundef %i.m) #19
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.e, %.critedge.a
  %.0 = phi ptr [ %i.n, %.critedge.a ], [ %i.j, %bb.e ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0
}

declare i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getsid(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @setsid() local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @setpgid(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @tcgetpgrp(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @tcsetpgrp(i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @openat64(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #12

declare void @_Py_closerange(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_Py_device_encoding(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dup3(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @lockf64(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #2

declare i64 @_Py_read(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #2

declare void @PyBytesWriter_Discard(ptr noundef) local_unnamed_addr #2

declare ptr @PyBytesWriter_FinishWithSize(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -1, -9223372036854775808) i64 @os_readv_impl(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = tail call i32 @PySequence_Check(ptr noundef %1) #19
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !108
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.350) #19
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @PySequence_Size(ptr noundef %1) #19 ; 5 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call fastcc i32 @iov_setup(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %1, i64 noundef %i.e, i32 noundef 1)
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.i = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.j = trunc i64 %i.e to i32                    ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.g
  %i.k = tail call ptr @PyEval_SaveThread() #19
  %i.l = tail call i64 @readv(i32 noundef %0, ptr noundef %i.i, i32 noundef %i.j) #19 ; 2 uses
  tail call void @PyEval_RestoreThread(ptr noundef %i.k) #19
  %2 = icmp slt i64 %i.l, 0
  br i1 %2, label %bb.f, label %.critedge20

bb.f:                                             ; preds = %bb.e
  %3 = tail call ptr @__errno_location() #21      ; 3 uses
  %i.m = load i32, ptr %3, align 4, !tbaa !7      ; 2 uses
  %i.n = icmp eq i32 %i.m, 4                      ; 2 uses
  br i1 %i.n, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.o = tail call i32 @PyErr_CheckSignals() #19
  %.not18 = icmp eq i32 %i.o, 0
  br i1 %.not18, label %bb.e, label %..critedge_crit_edge, !llvm.loop !278

..critedge_crit_edge:                             ; preds = %bb.g
  %.pre = load i32, ptr %3, align 4, !tbaa !7
  br label %.critedge, !llvm.loop !278

.critedge:                                        ; preds = %bb.f, %..critedge_crit_edge
  %4 = phi i32 [ %.pre, %..critedge_crit_edge ], [ %i.m, %bb.f ]
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !190  ; 2 uses
  tail call void @PyMem_Free(ptr noundef %i.i) #19
  %i.q = icmp sgt i32 %i.j, 0
  br i1 %i.q, label %.lr.ph.preheader.i, label %iov_cleanup.exit

.lr.ph.preheader.i:                               ; preds = %.critedge
  %wide.trip.count.i = and i64 %i.e, 2147483647
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.r = getelementptr [80 x i8], ptr %i.p, i64 %indvars.iv.i
  tail call void @PyBuffer_Release(ptr noundef %i.r) #19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %iov_cleanup.exit, label %.lr.ph.i, !llvm.loop !191

iov_cleanup.exit:                                 ; preds = %.lr.ph.i, %.critedge
  tail call void @PyMem_Free(ptr noundef %i.p) #19
  br i1 %i.n, label %bb.i, label %bb.h

bb.h:                                             ; preds = %iov_cleanup.exit
  store i32 %4, ptr %3, align 4, !tbaa !7
  %i.s = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.t = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.s) #19 ; 0 uses
  br label %bb.i

.critedge20:                                      ; preds = %bb.e
  %5 = load ptr, ptr %i.b, align 8, !tbaa !190    ; 2 uses
  tail call void @PyMem_Free(ptr noundef %i.i) #19
  %6 = icmp sgt i32 %i.j, 0
  br i1 %6, label %.lr.ph.preheader.i21, label %iov_cleanup.exit27

.lr.ph.preheader.i21:                             ; preds = %.critedge20
  %wide.trip.count.i22 = and i64 %i.e, 2147483647
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23, %.lr.ph.preheader.i21
  %indvars.iv.i24 = phi i64 [ 0, %.lr.ph.preheader.i21 ], [ %indvars.iv.next.i25, %.lr.ph.i23 ] ; 2 uses
  %7 = getelementptr [80 x i8], ptr %5, i64 %indvars.iv.i24
  tail call void @PyBuffer_Release(ptr noundef %7) #19
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i24, 1 ; 2 uses
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next.i25, %wide.trip.count.i22
  br i1 %exitcond.not.i26, label %iov_cleanup.exit27, label %.lr.ph.i23, !llvm.loop !191

iov_cleanup.exit27:                               ; preds = %.lr.ph.i23, %.critedge20
  tail call void @PyMem_Free(ptr noundef %5) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %iov_cleanup.exit, %iov_cleanup.exit27, %bb.d, %bb.c, %bb.b
  %.1 = phi i64 [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %iov_cleanup.exit ], [ -1, %bb.h ], [ %i.l, %iov_cleanup.exit27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @iov_setup(ptr noundef nonnull captures(none) initializes((0, 8)) %0, ptr noundef nonnull captures(none) %1, ptr noundef %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 576460752303423487
  br i1 %i.a, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !279
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i64 %3, 4
  %i.c = tail call ptr @PyMem_Malloc(i64 noundef %i.b) #19 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !279
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread, %bb.b
  %i.e = tail call ptr @PyErr_NoMemory() #19      ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i64 %3, 115292150460684697
  br i1 %i.f, label %.thread46, label %bb.e

.thread46:                                        ; preds = %bb.d
  store ptr null, ptr %1, align 8, !tbaa !190
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = mul nuw nsw i64 %3, 80
  %i.h = tail call ptr @PyMem_Malloc(i64 noundef %i.g) #19 ; 2 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !190
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %.thread46, %bb.e
  %i.j = load ptr, ptr %0, align 8, !tbaa !279
  tail call void @PyMem_Free(ptr noundef %i.j) #19
  %i.k = tail call ptr @PyErr_NoMemory() #19      ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.n
  %.03953 = phi i64 [ %i.ag, %bb.n ], [ 0, %.preheader ] ; 8 uses
  %i.l = tail call ptr @PySequence_GetItem(ptr noundef %2, i64 noundef %.03953) #19 ; 7 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit48, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %1, align 8, !tbaa !190
  %i.o = getelementptr [80 x i8], ptr %i.n, i64 %.03953
  %i.p = tail call i32 @PyObject_GetBuffer(ptr noundef nonnull %i.l, ptr noundef %i.o, i32 noundef %4) #19
  %i.q = icmp eq i32 %i.p, -1
  %i.r = load i32, ptr %i.l, align 8, !tbaa !118  ; 3 uses
  %.not.i43 = icmp sgt i32 %i.r, -1               ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i43, label %bb.i, label %.loopexit48

bb.i:                                             ; preds = %bb.h
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.l, align 8, !tbaa !118
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.j, label %.loopexit48

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #19
  br label %.loopexit48

bb.k:                                             ; preds = %bb.g
  br i1 %.not.i43, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.u = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.u, ptr %i.l, align 8, !tbaa !118
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %i.w = load ptr, ptr %1, align 8, !tbaa !190
  %i.x = getelementptr [80 x i8], ptr %i.w, i64 %.03953
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !183
  %i.z = load ptr, ptr %0, align 8, !tbaa !279
  %i.aa = getelementptr [16 x i8], ptr %i.z, i64 %.03953 ; 2 uses
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !281
  %i.ab = load ptr, ptr %1, align 8, !tbaa !190
  %i.ac = getelementptr [80 x i8], ptr %i.ab, i64 %.03953
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !186
  %i.af = getelementptr i8, ptr %i.aa, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !283
  %i.ag = add nuw nsw i64 %.03953, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !284

.loopexit48:                                      ; preds = %.lr.ph, %bb.h, %bb.i, %bb.j
  %i.ah = load ptr, ptr %0, align 8, !tbaa !279
  tail call void @PyMem_Free(ptr noundef %i.ah) #19
  %.not56 = icmp eq i64 %.03953, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph55

.lr.ph55:                                         ; preds = %.loopexit48, %.lr.ph55
  %.03854 = phi i64 [ %i.ak, %.lr.ph55 ], [ 0, %.loopexit48 ] ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !190
  %i.aj = getelementptr [80 x i8], ptr %i.ai, i64 %.03854
  tail call void @PyBuffer_Release(ptr noundef %i.aj) #19
  %i.ak = add nuw i64 %.03854, 1                  ; 2 uses
  %exitcond62.not = icmp eq i64 %i.ak, %.03953
  br i1 %exitcond62.not, label %._crit_edge, label %.lr.ph55, !llvm.loop !285

._crit_edge:                                      ; preds = %.lr.ph55, %.loopexit48
  %i.al = load ptr, ptr %1, align 8, !tbaa !190
  tail call void @PyMem_Free(ptr noundef %i.al) #19
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.preheader, %._crit_edge, %bb.f, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.f ], [ -1, %._crit_edge ], [ 0, %.preheader ], [ 0, %bb.n ]
  ret i32 %.0
}

declare i64 @readv(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @pread64(i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @preadv64v2(i32 noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @_Py_write(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @os_writev_impl(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = tail call i32 @PySequence_Check(ptr noundef %1) #19
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !108
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.352) #19
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @PySequence_Size(ptr noundef %1) #19 ; 4 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call fastcc i32 @iov_setup(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %1, i64 noundef %i.e, i32 noundef 0)
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.j = trunc i64 %i.e to i32                    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.g
  %i.k = tail call ptr @PyEval_SaveThread() #19
  %i.l = tail call i64 @writev(i32 noundef %0, ptr noundef %i.i, i32 noundef %i.j) #19 ; 2 uses
  tail call void @PyEval_RestoreThread(ptr noundef %i.k) #19
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @__errno_location() #21
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = icmp eq i32 %i.o, 4
  br i1 %i.p, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i32 @PyErr_CheckSignals() #19
  %.not16 = icmp eq i32 %i.q, 0
  br i1 %.not16, label %bb.e, label %.critedge.thread, !llvm.loop !286

.critedge:                                        ; preds = %bb.f
  %i.r = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.s = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.r) #19 ; 0 uses
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.g, %bb.e, %.critedge
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !190  ; 2 uses
  tail call void @PyMem_Free(ptr noundef %i.i) #19
  %i.u = icmp sgt i32 %i.j, 0
end_hunk_3
begin_hunk_4_@os_DirEntry_stat_impl:bb.a
  %i.ac = icmp ugt i32 %i.ab, -1073741825
  br i1 %i.ac, label %DirEntry_get_lstat.exit, label %bb.l

bb.l:                                             ; preds = %.thread27
  %i.ad = add nuw i32 %i.ab, 1
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !118
  br label %DirEntry_get_lstat.exit

DirEntry_get_lstat.exit:                          ; preds = %bb.l, %.thread27, %bb.k, %.thread32, %os_DirEntry_is_symlink_impl.exit, %bb.d, %.thread.i, %bb.c
  %.1 = phi ptr [ null, %os_DirEntry_is_symlink_impl.exit ], [ %i.e, %bb.d ], [ null, %bb.c ], [ %i.e, %.thread.i ], [ null, %bb.k ], [ %i.aa, %.thread27 ], [ %i.aa, %bb.l ], [ null, %.thread32 ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @DirEntry_fetch_stat(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !358
  %i.d = call i32 @PyUnicode_FSConverter(ptr noundef %i.c, ptr noundef nonnull %i.a) #19
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.f = getelementptr i8, ptr %i.e, i64 32       ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !355
  %.not16 = icmp eq i32 %i.h, -100
  %i.i = call ptr @PyEval_SaveThread() #19
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.g, align 8, !tbaa !355
  %.not18 = icmp eq i32 %2, 0
  %i.k = select i1 %.not18, i32 256, i32 0
  %i.l = call i32 @fstatat64(i32 noundef %i.j, ptr noundef %i.f, ptr noundef nonnull %3, i32 noundef %i.k) #19
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %.not17 = icmp eq i32 %2, 0
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call i32 @stat64(ptr noundef %i.f, ptr noundef nonnull %3) #19
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = call i32 @lstat64(ptr noundef %i.f, ptr noundef nonnull %3) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.115 = phi i32 [ %i.l, %bb.c ], [ %i.m, %bb.e ], [ %i.n, %bb.f ]
  call void @PyEval_RestoreThread(ptr noundef %i.i) #19
  %i.o = tail call ptr @__errno_location() #21    ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !118
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.q) #19
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.h, %bb.i
  %.not19 = icmp eq i32 %.115, 0
  br i1 %.not19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit
  store i32 %i.p, ptr %i.o, align 4, !tbaa !7
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !358
  %i.v = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.w = call ptr @PyErr_SetFromErrnoWithFilenameObject(ptr noundef %i.v, ptr noundef %i.u) #19 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %Py_DECREF.exit
  %i.x = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.x, align 8, !tbaa !132
  %i.y = call fastcc ptr @_pystat_fromstructstat(ptr %.val, ptr noundef %3)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.j ], [ %i.y, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_faccessat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_fchmodat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_fchownat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_fdopendir() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_fstatat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_futimens() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_linkat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_mkdirat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_mkfifoat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_mknodat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_openat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_readlinkat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_renameat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_symlinkat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_unlinkat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_utimensat() #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @probe_ptsname_r() #18 {
bb.a:
  ret i32 1
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS3_is", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!15, !29, i64 10744}
!15 = !{!"_is", !16, i64 0, !12, i64 7264, !17, i64 7272, !17, i64 7280, !8, i64 7288, !17, i64 7296, !8, i64 7304, !8, i64 7308, !8, i64 7312, !17, i64 7320, !22, i64 7328, !24, i64 7376, !20, i64 7384, !17, i64 7392, !25, i64 7400, !29, i64 7680, !29, i64 7688, !30, i64 7696, !34, i64 7832, !17, i64 8040, !35, i64 8048, !36, i64 8080, !17, i64 8536, !29, i64 8544, !29, i64 8552, !29, i64 8560, !13, i64 8568, !9, i64 8576, !9, i64 8640, !17, i64 8648, !9, i64 8656, !41, i64 10696, !29, i64 10744, !29, i64 10752, !29, i64 10760, !46, i64 10768, !47, i64 10832, !49, i64 10848, !52, i64 10872, !55, i64 10928, !21, i64 10944, !57, i64 10952, !29, i64 10960, !9, i64 10968, !9, i64 11032, !9, i64 11096, !9, i64 11160, !9, i64 11161, !58, i64 11168, !61, i64 11832, !66, i64 11888, !67, i64 11896, !69, i64 14336, !70, i64 79880, !72, i64 79896, !73, i64 79968, !74, i64 80000, !75, i64 80024, !76, i64 82008, !80, i64 223296, !9, i64 223328, !50, i64 223384, !50, i64 223385, !81, i64 223386, !83, i64 223400, !83, i64 223408, !83, i64 223416, !83, i64 223424, !17, i64 223432, !84, i64 223440, !13, i64 223448, !85, i64 223456, !51, i64 223472, !51, i64 223473, !17, i64 223480, !17, i64 223488, !9, i64 223496, !9, i64 224712, !9, i64 224776, !86, i64 224840, !88, i64 224928, !17, i64 225064, !93, i64 225072}
!16 = !{!"_ceval_state", !17, i64 0, !8, i64 8, !18, i64 16, !8, i64 24, !19, i64 32}
!17 = !{!"long", !9, i64 0}
!18 = !{!"p1 _ZTS18_gil_runtime_state", !13, i64 0}
!19 = !{!"_pending_calls", !20, i64 0, !21, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24, !8, i64 7224, !8, i64 7228}
!20 = !{!"p1 _ZTS3_ts", !13, i64 0}
!21 = !{!"PyMutex", !9, i64 0}
!22 = !{!"pythreads", !17, i64 0, !20, i64 8, !23, i64 16, !20, i64 24, !17, i64 32, !17, i64 40}
!23 = !{!"p1 _ZTS18_PyThreadStateImpl", !13, i64 0}
!24 = !{!"p1 _ZTS14pyruntimestate", !13, i64 0}
!25 = !{!"_gc_runtime_state", !8, i64 0, !8, i64 4, !26, i64 8, !9, i64 32, !26, i64 80, !9, i64 104, !8, i64 224, !28, i64 232, !29, i64 240, !29, i64 248, !17, i64 256, !17, i64 264, !8, i64 272, !8, i64 276}
!26 = !{!"gc_generation", !27, i64 0, !8, i64 16, !8, i64 20}
!27 = !{!"", !17, i64 0, !17, i64 8}
!28 = !{!"p1 _ZTS19_PyInterpreterFrame", !13, i64 0}
!29 = !{!"p1 _ZTS7_object", !13, i64 0}
!30 = !{!"_import_state", !29, i64 0, !29, i64 8, !29, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !29, i64 40, !29, i64 48, !8, i64 56, !29, i64 64, !29, i64 72, !29, i64 80, !31, i64 88, !33, i64 112}
!31 = !{!"", !21, i64 0, !32, i64 8, !17, i64 16}
!32 = !{!"long long", !9, i64 0}
!33 = !{!"", !8, i64 0, !17, i64 8, !8, i64 16}
!34 = !{!"_gil_runtime_state", !17, i64 0, !20, i64 8, !8, i64 16, !17, i64 24, !9, i64 32, !9, i64 80, !9, i64 120, !9, i64 168}
!35 = !{!"codecs_state", !29, i64 0, !29, i64 8, !29, i64 16, !8, i64 24}
!36 = !{!"PyConfig", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !17, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !37, i64 64, !8, i64 72, !8, i64 76, !37, i64 80, !37, i64 88, !37, i64 96, !8, i64 104, !38, i64 112, !38, i64 128, !38, i64 144, !38, i64 160, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !37, i64 288, !37, i64 296, !37, i64 304, !37, i64 312, !8, i64 320, !38, i64 328, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !8, i64 400, !37, i64 408, !37, i64 416, !37, i64 424, !37, i64 432, !8, i64 440, !8, i64 444, !8, i64 448}
!37 = !{!"p1 int", !13, i64 0}
!38 = !{!"", !17, i64 0, !39, i64 8}
!39 = !{!"p2 int", !40, i64 0}
!40 = !{!"any p2 pointer", !13, i64 0}
!41 = !{!"", !42, i64 0, !45, i64 24}
!42 = !{!"_xid_lookup_state", !43, i64 0}
!43 = !{!"", !8, i64 0, !8, i64 4, !21, i64 8, !44, i64 16}
!44 = !{!"p1 _ZTS12_xid_regitem", !13, i64 0}
!45 = !{!"xi_exceptions", !29, i64 0, !29, i64 8, !29, i64 16}
!46 = !{!"_warnings_runtime_state", !29, i64 0, !29, i64 8, !29, i64 16, !31, i64 24, !17, i64 48, !29, i64 56}
!47 = !{!"atexit_state", !48, i64 0, !29, i64 8}
!48 = !{!"p1 _ZTS15atexit_callback", !13, i64 0}
!49 = !{!"_stoptheworld_state", !21, i64 0, !50, i64 1, !50, i64 2, !50, i64 3, !51, i64 4, !17, i64 8, !20, i64 16}
!50 = !{!"_Bool", !9, i64 0}
!51 = !{!"", !9, i64 0}
!52 = !{!"_qsbr_shared", !17, i64 0, !17, i64 8, !53, i64 16, !13, i64 24, !17, i64 32, !21, i64 40, !54, i64 48}
!53 = !{!"p1 _ZTS9_qsbr_pad", !13, i64 0}
!54 = !{!"p1 _ZTS18_qsbr_thread_state", !13, i64 0}
!55 = !{!"llist_node", !56, i64 0, !56, i64 8}
!56 = !{!"p1 _ZTS10llist_node", !13, i64 0}
!57 = !{!"p1 _ZTS15_obmalloc_state", !13, i64 0}
!58 = !{!"_py_object_state", !59, i64 0, !8, i64 656}
!59 = !{!"_Py_freelists", !60, i64 0, !60, i64 16, !60, i64 32, !9, i64 48, !60, i64 368, !60, i64 384, !60, i64 400, !60, i64 416, !60, i64 432, !60, i64 448, !60, i64 464, !60, i64 480, !60, i64 496, !60, i64 512, !60, i64 528, !60, i64 544, !60, i64 560, !60, i64 576, !60, i64 592, !60, i64 608, !60, i64 624, !60, i64 640}
!60 = !{!"_Py_freelist", !13, i64 0, !17, i64 8}
!61 = !{!"_Py_unicode_state", !62, i64 0, !13, i64 32, !64, i64 40}
!62 = !{!"_Py_unicode_fs_codec", !63, i64 0, !8, i64 8, !63, i64 16, !8, i64 24}
!63 = !{!"p1 omnipotent char", !13, i64 0}
!64 = !{!"_Py_unicode_ids", !17, i64 0, !65, i64 8}
!65 = !{!"p2 _ZTS7_object", !40, i64 0}
!66 = !{!"_Py_long_state", !8, i64 0}
!67 = !{!"_dtoa_state", !9, i64 0, !9, i64 64, !9, i64 128, !68, i64 2432}
!68 = !{!"p1 double", !13, i64 0}
!69 = !{!"_py_func_state", !8, i64 0, !9, i64 8}
!70 = !{!"_py_code_state", !21, i64 0, !71, i64 8}
!71 = !{!"p1 _ZTS15_Py_hashtable_t", !13, i64 0}
!72 = !{!"_Py_dict_state", !8, i64 0, !9, i64 8}
!73 = !{!"_Py_exc_state", !29, i64 0, !13, i64 8, !8, i64 16, !29, i64 24}
!74 = !{!"_Py_mem_interp_free_queue", !8, i64 0, !21, i64 4, !55, i64 8}
!75 = !{!"ast_state", !51, i64 0, !8, i64 4, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !29, i64 56, !29, i64 64, !29, i64 72, !29, i64 80, !29, i64 88, !29, i64 96, !29, i64 104, !29, i64 112, !29, i64 120, !29, i64 128, !29, i64 136, !29, i64 144, !29, i64 152, !29, i64 160, !29, i64 168, !29, i64 176, !29, i64 184, !29, i64 192, !29, i64 200, !29, i64 208, !29, i64 216, !29, i64 224, !29, i64 232, !29, i64 240, !29, i64 248, !29, i64 256, !29, i64 264, !29, i64 272, !29, i64 280, !29, i64 288, !29, i64 296, !29, i64 304, !29, i64 312, !29, i64 320, !29, i64 328, !29, i64 336, !29, i64 344, !29, i64 352, !29, i64 360, !29, i64 368, !29, i64 376, !29, i64 384, !29, i64 392, !29, i64 400, !29, i64 408, !29, i64 416, !29, i64 424, !29, i64 432, !29, i64 440, !29, i64 448, !29, i64 456, !29, i64 464, !29, i64 472, !29, i64 480, !29, i64 488, !29, i64 496, !29, i64 504, !29, i64 512, !29, i64 520, !29, i64 528, !29, i64 536, !29, i64 544, !29, i64 552, !29, i64 560, !29, i64 568, !29, i64 576, !29, i64 584, !29, i64 592, !29, i64 600, !29, i64 608, !29, i64 616, !29, i64 624, !29, i64 632, !29, i64 640, !29, i64 648, !29, i64 656, !29, i64 664, !29, i64 672, !29, i64 680, !29, i64 688, !29, i64 696, !29, i64 704, !29, i64 712, !29, i64 720, !29, i64 728, !29, i64 736, !29, i64 744, !29, i64 752, !29, i64 760, !29, i64 768, !29, i64 776, !29, i64 784, !29, i64 792, !29, i64 800, !29, i64 808, !29, i64 816, !29, i64 824, !29, i64 832, !29, i64 840, !29, i64 848, !29, i64 856, !29, i64 864, !29, i64 872, !29, i64 880, !29, i64 888, !29, i64 896, !29, i64 904, !29, i64 912, !29, i64 920, !29, i64 928, !29, i64 936, !29, i64 944, !29, i64 952, !29, i64 960, !29, i64 968, !29, i64 976, !29, i64 984, !29, i64 992, !29, i64 1000, !29, i64 1008, !29, i64 1016, !29, i64 1024, !29, i64 1032, !29, i64 1040, !29, i64 1048, !29, i64 1056, !29, i64 1064, !29, i64 1072, !29, i64 1080, !29, i64 1088, !29, i64 1096, !29, i64 1104, !29, i64 1112, !29, i64 1120, !29, i64 1128, !29, i64 1136, !29, i64 1144, !29, i64 1152, !29, i64 1160, !29, i64 1168, !29, i64 1176, !29, i64 1184, !29, i64 1192, !29, i64 1200, !29, i64 1208, !29, i64 1216, !29, i64 1224, !29, i64 1232, !29, i64 1240, !29, i64 1248, !29, i64 1256, !29, i64 1264, !29, i64 1272, !29, i64 1280, !29, i64 1288, !29, i64 1296, !29, i64 1304, !29, i64 1312, !29, i64 1320, !29, i64 1328, !29, i64 1336, !29, i64 1344, !29, i64 1352, !29, i64 1360, !29, i64 1368, !29, i64 1376, !29, i64 1384, !29, i64 1392, !29, i64 1400, !29, i64 1408, !29, i64 1416, !29, i64 1424, !29, i64 1432, !29, i64 1440, !29, i64 1448, !29, i64 1456, !29, i64 1464, !29, i64 1472, !29, i64 1480, !29, i64 1488, !29, i64 1496, !29, i64 1504, !29, i64 1512, !29, i64 1520, !29, i64 1528, !29, i64 1536, !29, i64 1544, !29, i64 1552, !29, i64 1560, !29, i64 1568, !29, i64 1576, !29, i64 1584, !29, i64 1592, !29, i64 1600, !29, i64 1608, !29, i64 1616, !29, i64 1624, !29, i64 1632, !29, i64 1640, !29, i64 1648, !29, i64 1656, !29, i64 1664, !29, i64 1672, !29, i64 1680, !29, i64 1688, !29, i64 1696, !29, i64 1704, !29, i64 1712, !29, i64 1720, !29, i64 1728, !29, i64 1736, !29, i64 1744, !29, i64 1752, !29, i64 1760, !29, i64 1768, !29, i64 1776, !29, i64 1784, !29, i64 1792, !29, i64 1800, !29, i64 1808, !29, i64 1816, !29, i64 1824, !29, i64 1832, !29, i64 1840, !29, i64 1848, !29, i64 1856, !29, i64 1864, !29, i64 1872, !29, i64 1880, !29, i64 1888, !29, i64 1896, !29, i64 1904, !29, i64 1912, !29, i64 1920, !29, i64 1928, !29, i64 1936, !29, i64 1944, !29, i64 1952, !29, i64 1960, !29, i64 1968, !29, i64 1976}
!76 = !{!"types_state", !8, i64 0, !77, i64 8, !78, i64 98312, !79, i64 108016, !21, i64 108512, !9, i64 108520}
!77 = !{!"type_cache", !9, i64 0}
!78 = !{!"", !17, i64 0, !9, i64 8}
!79 = !{!"", !17, i64 0, !17, i64 8, !9, i64 16}
!80 = !{!"callable_cache", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24}
!81 = !{!"_PyOptimizationConfig", !82, i64 0, !82, i64 2, !82, i64 4, !82, i64 6, !50, i64 8, !50, i64 9}
!82 = !{!"short", !9, i64 0}
!83 = !{!"p1 _ZTS17_PyExecutorObject", !13, i64 0}
!84 = !{!"_rare_events", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4}
!85 = !{!"_Py_GlobalMonitors", !9, i64 0}
!86 = !{!"_Py_interp_cached_objects", !29, i64 0, !29, i64 8, !87, i64 16, !87, i64 24, !87, i64 32, !87, i64 40, !87, i64 48, !87, i64 56, !87, i64 64, !29, i64 72, !29, i64 80}
!87 = !{!"p1 _ZTS11_typeobject", !13, i64 0}
!88 = !{!"_Py_interp_static_objects", !89, i64 0}
!89 = !{!"", !8, i64 0, !27, i64 8, !90, i64 24, !92, i64 64}
!90 = !{!"", !91, i64 0, !13, i64 16, !29, i64 24, !17, i64 32}
!91 = !{!"_object", !9, i64 0, !87, i64 8}
!92 = !{!"", !91, i64 0, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !29, i64 56, !9, i64 64}
!93 = !{!"_PyThreadStateImpl", !94, i64 0, !101, i64 848, !17, i64 936, !17, i64 944, !17, i64 952, !17, i64 960, !17, i64 968, !17, i64 976, !29, i64 984, !29, i64 992, !8, i64 1000, !55, i64 1008, !54, i64 1024, !55, i64 1032}
!94 = !{!"_ts", !20, i64 0, !20, i64 8, !12, i64 16, !17, i64 24, !95, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !28, i64 72, !28, i64 80, !28, i64 88, !13, i64 96, !13, i64 104, !29, i64 112, !29, i64 120, !29, i64 128, !96, i64 136, !29, i64 144, !8, i64 152, !29, i64 160, !17, i64 168, !17, i64 176, !29, i64 184, !17, i64 192, !8, i64 200, !29, i64 208, !29, i64 216, !29, i64 224, !17, i64 232, !17, i64 240, !97, i64 248, !65, i64 256, !65, i64 264, !98, i64 272, !29, i64 288, !99, i64 296, !17, i64 304, !29, i64 312, !29, i64 320, !100, i64 328}
!95 = !{!"", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!96 = !{!"p1 _ZTS14_err_stackitem", !13, i64 0}
!97 = !{!"p1 _ZTS12_stack_chunk", !13, i64 0}
!98 = !{!"_err_stackitem", !29, i64 0, !96, i64 8}
!99 = !{!"p1 _ZTS11_PyExitData", !13, i64 0}
!100 = !{!"", !8, i64 0, !9, i64 4}
!101 = !{!"_PyInterpreterFrame", !9, i64 0, !28, i64 8, !9, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !102, i64 48, !13, i64 56, !103, i64 64, !82, i64 72, !9, i64 74, !9, i64 75, !9, i64 80}
!102 = !{!"p1 _ZTS6_frame", !13, i64 0}
!103 = !{!"p1 _ZTS11_PyStackRef", !13, i64 0}
!104 = !{!105, !17, i64 16}
!105 = !{!"PyVarObject", !91, i64 0, !17, i64 16}
!106 = !{!107, !65, i64 24}
!107 = !{!"", !105, i64 0, !65, i64 24, !17, i64 32}
!108 = !{!29, !29, i64 0}
!109 = !{!20, !20, i64 0}
!110 = !{!91, !87, i64 8}
!111 = !{!112, !17, i64 168}
!112 = !{!"_typeobject", !105, i64 0, !63, i64 24, !17, i64 32, !17, i64 40, !13, i64 48, !17, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !17, i64 168, !63, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !17, i64 208, !13, i64 216, !13, i64 224, !113, i64 232, !114, i64 240, !115, i64 248, !87, i64 256, !29, i64 264, !13, i64 272, !13, i64 280, !17, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !29, i64 336, !29, i64 344, !29, i64 352, !13, i64 360, !29, i64 368, !13, i64 376, !8, i64 384, !13, i64 392, !13, i64 400, !9, i64 408, !82, i64 410}
!113 = !{!"p1 _ZTS11PyMethodDef", !13, i64 0}
!114 = !{!"p1 _ZTS11PyMemberDef", !13, i64 0}
!115 = !{!"p1 _ZTS11PyGetSetDef", !13, i64 0}
!116 = !{!112, !17, i64 56}
!117 = distinct !{null, null}
!118 = !{!9, !9, i64 0}
!119 = distinct !{!119, !120}
!120 = !{!"llvm.loop.mustprogress"}
!121 = !{!15, !29, i64 10752}
!122 = !{!123, !8, i64 0}
!123 = !{!"", !8, i64 0, !63, i64 8, !63, i64 16, !8, i64 24}
!124 = !{!94, !17, i64 176}
!125 = !{i64 0, i64 4, !7, i64 8, i64 8, !126, i64 16, i64 8, !126, i64 24, i64 4, !7}
!126 = !{!63, !63, i64 0}
!127 = !{!55, !56, i64 0}
!128 = !{!55, !56, i64 8}
!129 = !{!94, !12, i64 16}
!130 = !{!15, !29, i64 10760}
!131 = distinct !{!131, !120}
!132 = !{!133, !13, i64 24}
!133 = !{!"", !91, i64 0, !29, i64 16, !13, i64 24, !29, i64 32, !29, i64 40, !50, i64 48, !17, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96}
!134 = !{!135, !29, i64 0}
!135 = !{!"", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !13, i64 32, !29, i64 40, !29, i64 48, !29, i64 56, !29, i64 64, !29, i64 72, !29, i64 80, !29, i64 88, !29, i64 96, !29, i64 104, !17, i64 112}
!136 = !{!135, !29, i64 8}
!137 = !{!135, !29, i64 16}
!138 = !{!135, !29, i64 24}
!139 = !{!135, !29, i64 40}
!140 = !{!135, !29, i64 48}
!141 = !{!135, !29, i64 56}
!142 = !{!135, !29, i64 64}
!143 = !{!135, !29, i64 72}
!144 = !{!135, !29, i64 80}
!145 = !{!135, !29, i64 88}
!146 = !{!135, !29, i64 96}
!147 = !{!135, !29, i64 104}
!148 = !{!149, !37, i64 40}
!149 = !{!"", !63, i64 0, !63, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !37, i64 40, !63, i64 48, !8, i64 56, !50, i64 60, !8, i64 64, !17, i64 72, !29, i64 80, !29, i64 88}
!150 = !{!149, !8, i64 56}
!151 = !{!149, !50, i64 60}
!152 = !{i8 0, i8 2}
!153 = !{}
!154 = !{!112, !13, i64 304}
!155 = distinct !{null}
!156 = !{!149, !29, i64 80}
!157 = !{!17, !17, i64 0}
!158 = !{!149, !63, i64 48}
!159 = distinct !{!159, !120}
!160 = distinct !{!160, !120}
!161 = distinct !{!161, !120}
!162 = !{!163, !8, i64 0}
!163 = !{!"", !8, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!164 = !{!163, !17, i64 8}
!165 = !{!163, !17, i64 16}
!166 = !{!163, !17, i64 24}
!167 = !{!163, !17, i64 32}
!168 = !{!135, !17, i64 112}
!169 = !{!170, !17, i64 0}
!170 = !{!"tms", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!171 = !{!170, !17, i64 8}
end_hunk_4
