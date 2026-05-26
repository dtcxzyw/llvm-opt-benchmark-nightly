inline.NumInlined: 120
inline.NumDeleted: 58
begin_hunk_0_@signal_sigpending:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_OSError, align 8, !tbaa !188
  %i.c = call ptr @PyErr_SetFromErrno(ptr noundef %i.b) #14
  br label %signal_sigpending_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.d = call fastcc ptr @sigset_to_set(ptr noundef nonnull byval(%struct.__sigset_t) align 8 %2)
  br label %signal_sigpending_impl.exit

signal_sigpending_impl.exit:                      ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @signal_sigwait(ptr readnone captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.__sigset_t, align 8         ; 4 uses
  %3 = alloca %struct.__sigset_t, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.b = call i32 @_Py_Sigset_Converter(ptr noundef %1, ptr noundef nonnull %3) #14
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.c = call ptr @PyEval_SaveThread() #14
  %i.d = call i32 @sigwait(ptr noundef nonnull align 8 %2, ptr noundef nonnull %i.a) #14 ; 2 uses
  call void @PyEval_RestoreThread(ptr noundef %i.c) #14
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #15
  store i32 %i.d, ptr %i.e, align 4, !tbaa !7
  %i.f = load ptr, ptr @PyExc_OSError, align 8, !tbaa !188
  %i.g = call ptr @PyErr_SetFromErrno(ptr noundef %i.f) #14
  br label %signal_sigwait_impl.exit

bb.d:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.a, align 4, !tbaa !7
  %i.i = sext i32 %i.h to i64
  %i.j = call ptr @PyLong_FromLong(i64 noundef %i.i) #14
  br label %signal_sigwait_impl.exit

signal_sigwait_impl.exit:                         ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.c ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %signal_sigwait_impl.exit
  %.0 = phi ptr [ %.0.i, %signal_sigwait_impl.exit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @signal_sigwaitinfo(ptr noundef readonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %2 = alloca %struct.siginfo_t, align 8          ; 4 uses
  %3 = alloca %struct.__sigset_t, align 8         ; 4 uses
  %4 = alloca %struct.__sigset_t, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.a = call i32 @_Py_Sigset_Converter(ptr noundef %1, ptr noundef nonnull %4) #14
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) %4, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.b = call ptr @PyEval_SaveThread() #14
  %i.c = call i32 @sigwaitinfo(ptr noundef nonnull align 8 %3, ptr noundef nonnull %2) #14
  call void @PyEval_RestoreThread(ptr noundef %i.b) #14
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %.critedge8.i

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @__errno_location() #15
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = call i32 @PyErr_CheckSignals()
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %signal_sigwaitinfo_impl.exit, !llvm.loop !218

bb.f:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @PyExc_OSError, align 8, !tbaa !188
  %i.j = call ptr @PyErr_SetFromErrno(ptr noundef %i.i) #14
  br label %signal_sigwaitinfo_impl.exit

.critedge8.i:                                     ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !208
  %i.l = getelementptr i8, ptr %.val.i, i64 24
  %.val9.i = load ptr, ptr %i.l, align 8, !tbaa !212
  %i.m = call fastcc ptr @fill_siginfo(ptr %.val9.i, ptr noundef %2)
  br label %signal_sigwaitinfo_impl.exit

signal_sigwaitinfo_impl.exit:                     ; preds = %bb.e, %bb.f, %.critedge8.i
  %.0.i = phi ptr [ %i.m, %.critedge8.i ], [ %i.j, %bb.f ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %signal_sigwaitinfo_impl.exit
  %.0 = phi ptr [ %.0.i, %signal_sigwaitinfo_impl.exit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @signal_sigtimedwait(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %struct.siginfo_t, align 8          ; 4 uses
  %4 = alloca %struct.timespec, align 8           ; 8 uses
  %5 = alloca %struct.__sigset_t, align 8         ; 4 uses
  %6 = alloca %struct.__sigset_t, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.21, i64 noundef %2, i64 noundef 2, i64 noundef 2) #14
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !188
  %i.d = call i32 @_Py_Sigset_Converter(ptr noundef %i.c, ptr noundef nonnull %6) #14
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(128) %6, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.g = call i32 @_PyTime_FromSecondsObject(ptr noundef nonnull %i.a, ptr noundef %i.f, i32 noundef 1) #14
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %signal_sigtimedwait_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %i.a, align 8, !tbaa !214  ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !188
  call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.38) #14
  br label %signal_sigtimedwait_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.l = call i64 @_PyDeadline_Init(i64 noundef %i.i) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.m = load i64, ptr %i.a, align 8, !tbaa !214
  %i.n = call i32 @_PyTime_AsTimespec(i64 noundef %i.m, ptr noundef nonnull %4) #14
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.l
  %i.p = call ptr @PyEval_SaveThread() #14
  %i.q = call i32 @sigtimedwait(ptr noundef nonnull align 8 %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  call void @PyEval_RestoreThread(ptr noundef %i.p) #14
  %.not.i = icmp eq i32 %i.q, -1
  br i1 %.not.i, label %bb.h, label %select.unfold.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.r = tail call ptr @__errno_location() #15
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  switch i32 %i.s, label %bb.i [
    i32 4, label %bb.j
    i32 11, label %.thread.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr @PyExc_OSError, align 8, !tbaa !188
  %i.u = call ptr @PyErr_SetFromErrno(ptr noundef %i.t) #14
  br label %.thread.i

bb.j:                                             ; preds = %bb.h
  %i.v = call i32 @PyErr_CheckSignals()
  %.not12.i = icmp eq i32 %i.v, 0
  br i1 %.not12.i, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.w = call i64 @_PyDeadline_Get(i64 noundef %i.l) #14 ; 3 uses
  store i64 %i.w, ptr %i.a, align 8, !tbaa !214
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %select.unfold.i, label %bb.l

.thread.i:                                        ; preds = %bb.l, %bb.j, %bb.h, %bb.i, %bb.g
  %.2.ph.i = phi ptr [ %i.u, %bb.i ], [ null, %bb.g ], [ null, %bb.l ], [ @_Py_NoneStruct, %bb.h ], [ null, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.y = call i32 @_PyTime_AsTimespec(i64 noundef %i.w, ptr noundef nonnull %4) #14
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %.thread.i, label %.lr.ph.i

select.unfold.i:                                  ; preds = %bb.k, %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.aa = getelementptr i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.aa, align 8, !tbaa !208
  %i.ab = getelementptr i8, ptr %.val.i, i64 24
  %.val13.i = load ptr, ptr %i.ab, align 8, !tbaa !212
  %i.ac = call fastcc ptr @fill_siginfo(ptr %.val13.i, ptr noundef %3)
  br label %bb.m

bb.m:                                             ; preds = %select.unfold.i, %.thread.i
  %.3.i = phi ptr [ %.2.ph.i, %.thread.i ], [ %i.ac, %select.unfold.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %signal_sigtimedwait_impl.exit

signal_sigtimedwait_impl.exit:                    ; preds = %bb.d, %bb.f, %bb.m
  %.4.i = phi ptr [ %.3.i, %bb.m ], [ null, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.b, %signal_sigtimedwait_impl.exit
  %.0 = phi ptr [ %.4.i, %signal_sigtimedwait_impl.exit ], [ null, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @signal_valid_signals(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #2 {
bb.a:
  %2 = alloca %struct.__sigset_t, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = call i32 @sigemptyset(ptr noundef nonnull %2) #14
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @sigfillset(ptr noundef nonnull %2) #14
  %.not1.i = icmp eq i32 %i.b, 0
  br i1 %.not1.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr @PyExc_OSError, align 8, !tbaa !188
  %i.d = call ptr @PyErr_SetFromErrno(ptr noundef %i.c) #14
  br label %signal_valid_signals_impl.exit

bb.d:                                             ; preds = %bb.b
  %i.e = call fastcc ptr @sigset_to_set(ptr noundef nonnull byval(%struct.__sigset_t) align 8 %2)
  br label %signal_valid_signals_impl.exit

signal_valid_signals_impl.exit:                   ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.d, %bb.c ], [ %i.e, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret ptr %.0.i
}

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #3

declare ptr @PyErr_Occurred() local_unnamed_addr #3

declare void @PyErr_SetNone(ptr noundef) local_unnamed_addr #3

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @alarm(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i32 @setitimer(i32 noundef, ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @PyErr_SetFromErrno(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @itimer_retval(ptr noundef nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @PyTuple_New(i64 noundef 2) #14 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit16, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val19 = load i64, ptr %i.c, align 8, !tbaa !219
  %i.d = getelementptr i8, ptr %0, i64 24
  %.val20 = load i64, ptr %i.d, align 8, !tbaa !221
  %i.e = sitofp i64 %.val19 to double
  %i.f = sitofp i64 %.val20 to double
  %i.g = fdiv double %i.f, 1.000000e+06
  %i.h = fadd double %i.g, %i.e
  %i.i = tail call ptr @PyFloat_FromDouble(double noundef %i.h) #14 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.a, align 8, !tbaa !192  ; 2 uses
  %.not.i15 = icmp sgt i32 %i.j, -1
  br i1 %.not.i15, label %bb.d, label %Py_DECREF.exit16

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.a, align 8, !tbaa !192
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %Py_DECREF.exit16

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #14
  br label %Py_DECREF.exit16

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.a, i64 32
  store ptr %i.i, ptr %i.m, align 8, !tbaa !188
  %.val = load i64, ptr %0, align 8, !tbaa !219
  %i.n = getelementptr i8, ptr %0, i64 8
  %.val18 = load i64, ptr %i.n, align 8, !tbaa !221
  %i.o = sitofp i64 %.val to double
  %i.p = sitofp i64 %.val18 to double
  %i.q = fdiv double %i.p, 1.000000e+06
  %i.r = fadd double %i.q, %i.o
  %i.s = tail call ptr @PyFloat_FromDouble(double noundef %i.r) #14 ; 2 uses
  %.not14 = icmp eq ptr %i.s, null
  br i1 %.not14, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.a, align 8, !tbaa !192  ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit16

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.a, align 8, !tbaa !192
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.i, label %Py_DECREF.exit16

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #14
  br label %Py_DECREF.exit16

bb.j:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.a, i64 40
  store ptr %i.s, ptr %i.w, align 8, !tbaa !188
  br label %Py_DECREF.exit16

Py_DECREF.exit16:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.a, %bb.j
  %.0 = phi ptr [ null, %bb.a ], [ %i.a, %bb.j ], [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.i ]
  ret ptr %.0
}

declare i32 @_PyTime_FromSecondsObject(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @_PyTime_AsTimeval(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #3

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @getitimer(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc ptr @signal_signal_impl(ptr readonly captures(none) %.24.val, i32 noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195  ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !196
  %i.e = tail call i32 @_Py_IsMainThread() #14
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_Py_ThreadCanHandleSignals.exit.thread, label %_Py_ThreadCanHandleSignals.exit

_Py_ThreadCanHandleSignals.exit:                  ; preds = %bb.a
  %i.f = tail call ptr @_PyInterpreterState_Main() #14
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.b, label %_Py_ThreadCanHandleSignals.exit.thread

_Py_ThreadCanHandleSignals.exit.thread:           ; preds = %bb.a, %_Py_ThreadCanHandleSignals.exit
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !188
  tail call void @_PyErr_SetString(ptr noundef nonnull %i.b, ptr noundef %i.g, ptr noundef nonnull @.str.24) #14
  br label %bb.m

bb.b:                                             ; preds = %_Py_ThreadCanHandleSignals.exit
  %i.h = add i32 %0, -65
  %or.cond = icmp ult i32 %i.h, -64
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !188
  tail call void @_PyErr_SetString(ptr noundef nonnull %i.b, ptr noundef %i.i, ptr noundef nonnull @.str.25) #14
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.j = tail call i32 @PyCallable_Check(ptr noundef %1) #14
  %.not24 = icmp eq i32 %i.j, 0
  br i1 %.not24, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %.24.val, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !222  ; 2 uses
end_hunk_0
