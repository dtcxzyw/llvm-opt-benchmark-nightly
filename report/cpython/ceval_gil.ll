inline.NumInlined: 120
inline.NumDeleted: 49
begin_hunk_0
%struct.type_cache_entry = type { i32, ptr, ptr }
%struct.anon.3 = type { i64, [202 x %struct.managed_static_type_state] }
%struct.managed_static_type_state = type { ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.anon.4 = type { i64, i64, [10 x %struct.managed_static_type_state] }
%struct.callable_cache = type { ptr, ptr, ptr, ptr }
%struct._PyOptimizationConfig = type { i16, i16, i16, i16, i8, i8 }
%struct._rare_events = type { i8, i8, i8, i8, i8 }
%struct._Py_GlobalMonitors = type { [16 x i8] }
%struct._PyOnceFlag = type { i8 }
%struct._Py_interp_cached_objects = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._Py_interp_static_objects = type { %struct.anon.5 }
%struct.anon.5 = type { i32, %struct.PyGC_Head, %struct.PyHamtObject, %struct.PyBaseExceptionObject }
%struct.PyHamtObject = type { %struct._object, ptr, ptr, i64 }
%struct.PyBaseExceptionObject = type { %struct._object, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct._PyThreadStateImpl = type { %struct._ts, %struct._PyInterpreterFrame, i64, i64, i64, i64, i64, i64, ptr, ptr, i32, %struct.llist_node, ptr, %struct.llist_node }
%struct._ts = type { ptr, ptr, ptr, i64, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i64, i64, ptr, i64, i32, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, %struct._err_stackitem, ptr, ptr, i64, ptr, ptr, %struct._PyRemoteDebuggerSupport }
%struct.anon = type { i32 }
%struct._err_stackitem = type { ptr, ptr }
%struct._PyRemoteDebuggerSupport = type { i32, [512 x i8] }
%struct._PyInterpreterFrame = type { %union._PyStackRef, ptr, %union._PyStackRef, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8, i8, [1 x %union._PyStackRef] }
%union._PyStackRef = type { i64 }
%struct.timespec = type { i64, i64 }
%struct.PyStatus = type { i32, ptr, ptr, i32 }

@__func__.PyEval_AcquireLock = private unnamed_addr constant [19 x i8] c"PyEval_AcquireLock\00", align 1
@__func__._PyEval_AcquireLock = private unnamed_addr constant [20 x i8] c"_PyEval_AcquireLock\00", align 1
@__func__.PyEval_AcquireThread = private unnamed_addr constant [21 x i8] c"PyEval_AcquireThread\00", align 1
@__func__.PyEval_RestoreThread = private unnamed_addr constant [21 x i8] c"PyEval_RestoreThread\00", align 1
@_PyRuntime = external global %struct.pyruntimestate, align 8
@.str = private unnamed_addr constant [22 x i8] c"../Python/ceval_gil.c\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Can't decode debugger script\00", align 1
@_Py_tss_interp = external thread_local local_unnamed_addr global ptr, align 8
@__func__.create_gil = private unnamed_addr constant [11 x i8] c"create_gil\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"PyMUTEX_INIT(gil->mutex) failed\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"PyMUTEX_INIT(gil->switch_mutex) failed\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"PyCOND_INIT(gil->cond) failed\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"PyCOND_INIT(gil->switch_cond) failed\00", align 1
@__func__.destroy_gil = private unnamed_addr constant [12 x i8] c"destroy_gil\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"PyCOND_FINI(gil->cond) failed\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"PyMUTEX_FINI(gil->mutex) failed\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"PyCOND_FINI(gil->switch_cond) failed\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"PyMUTEX_FINI(gil->switch_mutex) failed\00", align 1
@_Py_tss_tstate = external thread_local local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [173 x i8] c"the function must be called with the GIL held, after Python initialization and before Python finalization, but the GIL is released (the current Python thread state is NULL)\00", align 1
@__func__.take_gil = private unnamed_addr constant [9 x i8] c"take_gil\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"PyMUTEX_LOCK(gil->mutex) failed\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"PyCOND_WAIT(gil->cond) failed\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"PyMUTEX_UNLOCK(gil->mutex) failed\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"PyMUTEX_LOCK(gil->switch_mutex) failed\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"PyCOND_SIGNAL(gil->switch_cond) failed\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"PyMUTEX_UNLOCK(gil->switch_mutex) failed\00", align 1
@__func__.drop_gil = private unnamed_addr constant [9 x i8] c"drop_gil\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"drop_gil: GIL is not locked\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"PyCOND_WAIT(gil->switch_cond) failed\00", align 1
@__func__.drop_gil_impl = private unnamed_addr constant [14 x i8] c"drop_gil_impl\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"PyCOND_SIGNAL(gil->cond) failed\00", align 1
@__func__.signal_active_thread = private unnamed_addr constant [21 x i8] c"signal_active_thread\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"cpython.remote_debugger_script\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"Audit hook failed for remote debugger script %U\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"Can't open debugger script %U\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"Error reading debugger script %U\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"Error closing debugger script %U\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"Error executing debugger script %U\00", align 1

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_PyEval_SetSwitchInterval(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  store atomic i64 %0, ptr %i.d monotonic, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @_PyEval_GetSwitchInterval() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = load atomic i64, ptr %i.d monotonic, align 8
  ret i64 %i.e
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_PyEval_ThreadsInitialized() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @_PyInterpreterState_Main() #13 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %gil_created.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %gil_created.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %i.g = load atomic i32, ptr %i.f acquire, align 4
  %i.h = icmp sgt i32 %i.g, -1
  %i.i = zext i1 %i.h to i32
  br label %gil_created.exit

gil_created.exit:                                 ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.i, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare ptr @_PyInterpreterState_Main() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @PyEval_ThreadsInitialized() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @_PyInterpreterState_Main() #13 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_PyEval_ThreadsInitialized.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_PyEval_ThreadsInitialized.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %i.g = load atomic i32, ptr %i.f acquire, align 4
  %i.h = icmp sgt i32 %i.g, -1
  %i.i = zext i1 %i.h to i32
  br label %_PyEval_ThreadsInitialized.exit

_PyEval_ThreadsInitialized.exit:                  ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.i, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden void @_PyEval_InitGIL(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @_PyInterpreterState_Main() #13
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @PyThread_init_thread() #13
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !104  ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 7832     ; 2 uses
  tail call fastcc void @create_gil(ptr noundef %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink10 = phi ptr [ %i.g, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.sink8 = phi ptr [ %i.h, %bb.c ], [ %i.c, %bb.b ]
  %.sink = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.i = getelementptr i8, ptr %.sink10, i64 16
  store ptr %.sink8, ptr %i.i, align 8, !tbaa !14
  %i.j = getelementptr i8, ptr %.sink10, i64 24
  store i32 %.sink, ptr %i.j, align 8, !tbaa !105
  tail call void @_PyThreadState_Attach(ptr noundef nonnull %0) #13
  ret void
}

declare void @PyThread_init_thread() local_unnamed_addr #3

declare void @_PyThreadState_Attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_PyEval_FiniGIL(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !105
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.sink.split, label %gil_created.exit

gil_created.exit:                                 ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.g = load atomic i32, ptr %i.f acquire, align 4
  %1 = icmp slt i32 %i.g, 0
  br i1 %1, label %bb.k, label %bb.c

bb.c:                                             ; preds = %gil_created.exit
  %i.h = getelementptr i8, ptr %i.b, i64 32
  %i.i = tail call i32 @pthread_cond_destroy(ptr noundef %i.h) #13
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.destroy_gil, ptr noundef nonnull @.str.6) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.b, i64 80
  %i.k = tail call i32 @pthread_mutex_destroy(ptr noundef %i.j) #13
  %.not5.i = icmp eq i32 %i.k, 0
  br i1 %.not5.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.destroy_gil, ptr noundef nonnull @.str.7) #14
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.b, i64 120
  %i.m = tail call i32 @pthread_cond_destroy(ptr noundef %i.l) #13
  %.not6.i = icmp eq i32 %i.m, 0
  br i1 %.not6.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.destroy_gil, ptr noundef nonnull @.str.8) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %i.b, i64 168
  %i.o = tail call i32 @pthread_mutex_destroy(ptr noundef %i.n) #13
  %.not7.i = icmp eq i32 %i.o, 0
  br i1 %.not7.i, label %destroy_gil.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.destroy_gil, ptr noundef nonnull @.str.9) #14
  unreachable

destroy_gil.exit:                                 ; preds = %bb.i
  store atomic i32 -1, ptr %i.f release, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %destroy_gil.exit
  store ptr null, ptr %i.a, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %gil_created.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @PyEval_InitThreads() local_unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_PyEval_Fini() local_unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PyEval_AcquireLock() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_Py_EnsureFuncTstateNotNULL.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.PyEval_AcquireLock, ptr noundef nonnull @.str.10) #14
  unreachable

_Py_EnsureFuncTstateNotNULL.exit:                 ; preds = %bb.a
  tail call fastcc void @take_gil(ptr noundef nonnull %i.b)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @take_gil(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 4 uses
  %i.a = tail call ptr @__errno_location() #15    ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7
  %i.c = tail call i32 @_PyThreadState_MustExit(ptr noundef %0) #13
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_PyThreadState_HangThread(ptr noundef %0) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104  ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 10 uses
  %i.h = getelementptr i8, ptr %i.g, i64 80       ; 5 uses
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef %i.h) #13
  %.not48 = icmp eq i32 %i.i, 0
  br i1 %.not48, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.take_gil, ptr noundef nonnull @.str.11) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 40         ; 2 uses
  store i32 1, ptr %i.j, align 8, !tbaa !107
  %i.k = getelementptr i8, ptr %i.g, i64 16       ; 4 uses
  %i.l = load atomic i32, ptr %i.k monotonic, align 4
  %.not4966 = icmp eq i32 %i.l, 0
  br i1 %.not4966, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.g, i64 24       ; 2 uses
  %i.n = getelementptr i8, ptr %i.g, i64 32
  %i.o = getelementptr i8, ptr %i.g, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.q
  %.067 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.q ]  ; 4 uses
  %i.p = load i64, ptr %i.m, align 8, !tbaa !108
  %i.q = load atomic i64, ptr %i.g monotonic, align 8
  %spec.store.select = call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @_PyThread_cond_after(i64 noundef %spec.store.select, ptr noundef nonnull %1) #13
  %i.r = call i32 @pthread_cond_timedwait(ptr noundef %i.n, ptr noundef %i.h, ptr noundef nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  switch i32 %i.r, label %bb.g [
    i32 0, label %bb.q
    i32 110, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.take_gil, ptr noundef nonnull @.str.12) #14
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = load atomic i32, ptr %i.k monotonic, align 8
  %.not59 = icmp eq i32 %i.s, 0
  br i1 %.not59, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr %i.m, align 8, !tbaa !108
  %i.u = icmp eq i64 %i.t, %i.p
  br i1 %i.u, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.v = load atomic ptr, ptr %i.o monotonic, align 8 ; 2 uses
  %i.w = call i32 @_PyThreadState_MustExit(ptr noundef %0) #13
  %.not60 = icmp eq i32 %i.w, 0
  br i1 %.not60, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = call i32 @pthread_mutex_unlock(ptr noundef %i.h) #13
  %.not61 = icmp eq i32 %i.x, 0
  br i1 %.not61, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.take_gil, ptr noundef nonnull @.str.13) #14
  unreachable

bb.m:                                             ; preds = %bb.k
  %.not62 = icmp eq i32 %.067, 0
  br i1 %.not62, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr i8, ptr %i.v, i64 24
  %i.z = atomicrmw and ptr %i.y, i64 -2 seq_cst, align 8 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @_PyThreadState_HangThread(ptr noundef %0) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %i.aa = getelementptr i8, ptr %i.v, i64 24
  %i.ab = atomicrmw or ptr %i.aa, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.f, %bb.p, %bb.i, %bb.h
  %.1 = phi i32 [ 1, %bb.p ], [ %.067, %bb.i ], [ %.067, %bb.h ], [ %.067, %bb.f ]
  %i.ac = load atomic i32, ptr %i.k monotonic, align 8
  %.not49 = icmp eq i32 %i.ac, 0
  br i1 %.not49, label %._crit_edge, label %bb.f, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.q, %bb.e
  %i.ad = getelementptr i8, ptr %i.g, i64 168     ; 2 uses
  %i.ae = call i32 @pthread_mutex_lock(ptr noundef %i.ad) #13
  %.not50 = icmp eq i32 %i.ae, 0
  br i1 %.not50, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.take_gil, ptr noundef nonnull @.str.14) #14
  unreachable

bb.s:                                             ; preds = %._crit_edge
  store atomic i32 1, ptr %i.k monotonic, align 4
  %i.af = getelementptr i8, ptr %i.g, i64 8       ; 2 uses
  %i.ag = load atomic ptr, ptr %i.af monotonic, align 8
  %.not51 = icmp eq ptr %0, %i.ag
  br i1 %.not51, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store atomic ptr %0, ptr %i.af monotonic, align 8
  %i.ah = getelementptr i8, ptr %i.g, i64 24      ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !108
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !108
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ak = getelementptr i8, ptr %i.g, i64 120
  %i.al = call i32 @pthread_cond_signal(ptr noundef %i.ak) #13
  %.not52 = icmp eq i32 %i.al, 0
  br i1 %.not52, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.take_gil, ptr noundef nonnull @.str.15) #14
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.am = call i32 @pthread_mutex_unlock(ptr noundef %i.ad) #13
  %.not53 = icmp eq i32 %i.am, 0
  br i1 %.not53, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.take_gil, ptr noundef nonnull @.str.16) #14
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.an = call i32 @_PyThreadState_MustExit(ptr noundef %0) #13
  %.not54 = icmp eq i32 %i.an, 0
  br i1 %.not54, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ao = call i32 @pthread_mutex_unlock(ptr noundef %i.h) #13
  %.not55 = icmp eq i32 %i.ao, 0
  br i1 %.not55, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.take_gil, ptr noundef nonnull @.str.13) #14
  unreachable

bb.ab:                                            ; preds = %bb.z
  call fastcc void @drop_gil(ptr noundef %i.e, ptr noundef null, i32 noundef 1)
  call void @_PyThreadState_HangThread(ptr noundef %0) #13
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  store i32 0, ptr %i.j, align 8, !tbaa !107
  %i.ap = getelementptr i8, ptr %0, i64 36
  store i32 1, ptr %i.ap, align 4, !tbaa !111
  %i.aq = getelementptr i8, ptr %0, i64 24        ; 5 uses
  %i.ar = atomicrmw and ptr %i.aq, i64 -2 seq_cst, align 8 ; 0 uses
  %i.as = getelementptr i8, ptr %i.e, i64 44
  %i.at = load atomic i32, ptr %i.as monotonic, align 4
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %bb.ad, label %.sink.split.i

bb.ad:                                            ; preds = %bb.ac
  %i.au = call i32 @_Py_IsMainThread() #13
  %.not6.i = icmp eq i32 %i.au, 0
  br i1 %.not6.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.av = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2924) monotonic, align 4
  %.not7.i = icmp eq i32 %i.av, 0
  br i1 %.not7.i, label %bb.af, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ae, %bb.ac
  %i.aw = atomicrmw or ptr %i.aq, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %.sink.split.i, %bb.ae, %bb.ad
  %i.ax = load atomic i64, ptr %i.e monotonic, align 8
  %i.ay = and i64 %i.ax, -256                     ; 3 uses
  %i.az = load atomic i64, ptr %i.aq monotonic, align 8 ; 3 uses
  %i.ba = and i64 %i.az, -256
  %i.bb = icmp eq i64 %i.ay, %i.ba
  br i1 %i.bb, label %update_eval_breaker_for_thread.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.af
  %i.bc = and i64 %i.az, 255
  %i.bd = or disjoint i64 %i.bc, %i.ay
  %i.be = cmpxchg ptr %i.aq, i64 %i.az, i64 %i.bd seq_cst seq_cst, align 8 ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  br i1 %i.bf, label %update_eval_breaker_for_thread.exit, label %_Py_atomic_compare_exchange_uintptr.exit.i.i

_Py_atomic_compare_exchange_uintptr.exit.i.i:     ; preds = %.preheader.i.i, %_Py_atomic_compare_exchange_uintptr.exit.i.i
  %i.bg = phi { i64, i1 } [ %i.bk, %_Py_atomic_compare_exchange_uintptr.exit.i.i ], [ %i.be, %.preheader.i.i ]
  %i.bh = extractvalue { i64, i1 } %i.bg, 0       ; 2 uses
  %i.bi = and i64 %i.bh, 255
  %i.bj = or disjoint i64 %i.bi, %i.ay
  %i.bk = cmpxchg ptr %i.aq, i64 %i.bh, i64 %i.bj seq_cst seq_cst, align 8 ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bk, 1
  br i1 %i.bl, label %update_eval_breaker_for_thread.exit, label %_Py_atomic_compare_exchange_uintptr.exit.i.i

update_eval_breaker_for_thread.exit:              ; preds = %_Py_atomic_compare_exchange_uintptr.exit.i.i, %bb.af, %.preheader.i.i
  %i.bm = call i32 @pthread_mutex_unlock(ptr noundef %i.h) #13
  %.not56 = icmp eq i32 %i.bm, 0
  br i1 %.not56, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %update_eval_breaker_for_thread.exit
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.take_gil, ptr noundef nonnull @.str.13) #14
  unreachable

bb.ah:                                            ; preds = %update_eval_breaker_for_thread.exit
  store i32 %i.b, ptr %i.a, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PyEval_ReleaseLock() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104
  tail call fastcc void @drop_gil(ptr noundef %i.d, ptr noundef %i.b, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @drop_gil(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 8 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16       ; 3 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil, ptr noundef nonnull @.str.17) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not16 = icmp eq i32 %2, 0
  br i1 %.not16, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  store atomic ptr %1, ptr %i.e monotonic, align 8
  %i.f = getelementptr i8, ptr %i.b, i64 80       ; 2 uses
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef %i.f) #13
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil_impl, ptr noundef nonnull @.str.11) #14
  unreachable

bb.f:                                             ; preds = %bb.d
  store atomic i32 0, ptr %i.c monotonic, align 8
  %.not7.i = icmp eq ptr %1, null
  br i1 %.not7.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr i8, ptr %1, i64 36
  store i32 0, ptr %i.h, align 4, !tbaa !111
  %i.i = getelementptr i8, ptr %1, i64 40
  store i32 0, ptr %i.i, align 8, !tbaa !107
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = getelementptr i8, ptr %i.b, i64 32
  %i.k = tail call i32 @pthread_cond_signal(ptr noundef %i.j) #13
  %.not8.i = icmp eq i32 %i.k, 0
  br i1 %.not8.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil_impl, ptr noundef nonnull @.str.19) #14
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef %i.f) #13
  %.not9.i = icmp eq i32 %i.l, 0
  br i1 %.not9.i, label %drop_gil_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil_impl, ptr noundef nonnull @.str.13) #14
  unreachable

drop_gil_impl.exit:                               ; preds = %bb.j
  %i.m = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.n = load atomic i64, ptr %i.m monotonic, align 8
  %3 = and i64 %i.n, 1
  %.not17 = icmp eq i64 %3, 0
  br i1 %.not17, label %drop_gil_impl.exit25, label %bb.l

bb.l:                                             ; preds = %drop_gil_impl.exit
  %i.o = getelementptr i8, ptr %i.b, i64 168      ; 3 uses
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef %i.o) #13
  %.not18 = icmp eq i32 %i.p, 0
  br i1 %.not18, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil, ptr noundef nonnull @.str.14) #14
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.q = load atomic ptr, ptr %i.e monotonic, align 8
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.s = atomicrmw and ptr %i.m, i64 -2 seq_cst, align 8 ; 0 uses
  %i.t = getelementptr i8, ptr %i.b, i64 120
  %i.u = tail call i32 @pthread_cond_wait(ptr noundef %i.t, ptr noundef %i.o) #13
  %.not19 = icmp eq i32 %i.u, 0
  br i1 %.not19, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil, ptr noundef nonnull @.str.18) #14
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef %i.o) #13
  %.not20 = icmp eq i32 %i.v, 0
  br i1 %.not20, label %drop_gil_impl.exit25, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil, ptr noundef nonnull @.str.16) #14
  unreachable

.critedge:                                        ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.b, i64 80       ; 2 uses
  %i.x = tail call i32 @pthread_mutex_lock(ptr noundef %i.w) #13
  %.not.i21 = icmp eq i32 %i.x, 0
  br i1 %.not.i21, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil_impl, ptr noundef nonnull @.str.11) #14
  unreachable

bb.t:                                             ; preds = %.critedge
  store atomic i32 0, ptr %i.c monotonic, align 4
  %.not7.i22 = icmp eq ptr %1, null
  br i1 %.not7.i22, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.y = getelementptr i8, ptr %1, i64 36
  store i32 0, ptr %i.y, align 4, !tbaa !111
  %i.z = getelementptr i8, ptr %1, i64 40
  store i32 0, ptr %i.z, align 8, !tbaa !107
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.aa = getelementptr i8, ptr %i.b, i64 32
  %i.ab = tail call i32 @pthread_cond_signal(ptr noundef %i.aa) #13
  %.not8.i23 = icmp eq i32 %i.ab, 0
  br i1 %.not8.i23, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil_impl, ptr noundef nonnull @.str.19) #14
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef %i.w) #13
  %.not9.i24 = icmp eq i32 %i.ac, 0
  br i1 %.not9.i24, label %drop_gil_impl.exit25, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil_impl, ptr noundef nonnull @.str.13) #14
  unreachable

drop_gil_impl.exit25:                             ; preds = %bb.x, %bb.q, %drop_gil_impl.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_PyEval_AcquireLock(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %_Py_EnsureFuncTstateNotNULL.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._PyEval_AcquireLock, ptr noundef nonnull @.str.10) #14
  unreachable

_Py_EnsureFuncTstateNotNULL.exit:                 ; preds = %bb.a
  tail call fastcc void @take_gil(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_PyEval_ReleaseLock(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @drop_gil(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PyEval_AcquireThread(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %_Py_EnsureFuncTstateNotNULL.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.PyEval_AcquireThread, ptr noundef nonnull @.str.10) #14
  unreachable

_Py_EnsureFuncTstateNotNULL.exit:                 ; preds = %bb.a
  tail call void @_PyThreadState_Attach(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PyEval_ReleaseThread(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @_PyThreadState_Detach(ptr noundef %0) #13
  ret void
}

declare void @_PyThreadState_Detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_PyEval_ReInitThreads(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PyStatus) align 8 captures(none) initializes((0, 32)) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %gil_created.exit.thread, label %gil_created.exit

gil_created.exit:                                 ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %i.g = load atomic i32, ptr %i.f acquire, align 4
  %2 = icmp slt i32 %i.g, 0
  br i1 %2, label %gil_created.exit.thread, label %bb.b

bb.b:                                             ; preds = %gil_created.exit
  tail call fastcc void @create_gil(ptr noundef nonnull %i.d)
  tail call fastcc void @take_gil(ptr noundef nonnull %1)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.i = getelementptr i8, ptr %i.h, i64 40
  store i8 0, ptr %i.i, align 1
  br label %gil_created.exit.thread

gil_created.exit.thread:                          ; preds = %gil_created.exit, %bb.a, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 0, ptr %0, align 8, !tbaa !113
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @PyEval_SaveThread() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  tail call void @_PyThreadState_Detach(ptr noundef %i.b) #13
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local void @PyEval_RestoreThread(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %_Py_EnsureFuncTstateNotNULL.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.PyEval_RestoreThread, ptr noundef nonnull @.str.10) #14
  unreachable

_Py_EnsureFuncTstateNotNULL.exit:                 ; preds = %bb.a
  tail call void @_PyThreadState_Attach(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden void @_PyEval_SignalReceived() local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 904), align 8, !tbaa !115
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = atomicrmw or ptr %i.b, i64 2 seq_cst, align 8 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyEval_AddPendingCall(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %4 = and i32 %3, 1
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  %spec.select = select i1 %.not, ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2912) ; 5 uses
  %i.b = getelementptr i8, ptr %spec.select, i64 8 ; 4 uses
  %i.c = cmpxchg ptr %i.b, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef %i.b) #13
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  %i.e = getelementptr i8, ptr %spec.select, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !200
  %i.g = getelementptr i8, ptr %spec.select, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !201
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %_push_pending_call.exit, label %bb.c

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  %i.j = getelementptr i8, ptr %spec.select, i64 7228 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !202  ; 2 uses
  %i.l = getelementptr i8, ptr %spec.select, i64 24
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr [24 x i8], ptr %i.l, i64 %i.m ; 3 uses
  store ptr %1, ptr %i.n, align 8, !tbaa !203
  %i.o = getelementptr i8, ptr %i.n, i64 8
  store ptr %2, ptr %i.o, align 8, !tbaa !205
  %i.p = getelementptr i8, ptr %i.n, i64 16
  store i32 %3, ptr %i.p, align 8, !tbaa !206
  %i.q = atomicrmw add ptr %i.e, i32 1 seq_cst, align 4 ; 0 uses
  %i.r = add i32 %i.k, 1
  %i.s = srem i32 %i.r, 300
  store i32 %i.s, ptr %i.j, align 4, !tbaa !202
  br label %_push_pending_call.exit

_push_pending_call.exit:                          ; preds = %_PyMutex_Lock.exit, %bb.c
  %.0.i = phi i32 [ 0, %bb.c ], [ -1, %_PyMutex_Lock.exit ]
  %i.t = cmpxchg ptr %i.b, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.u = extractvalue { i8, i1 } %i.t, 1
  br i1 %i.u, label %_PyMutex_Unlock.exit, label %bb.d

bb.d:                                             ; preds = %_push_pending_call.exit
  tail call void @PyMutex_Unlock(ptr noundef %i.b) #13
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %_push_pending_call.exit, %bb.d
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_PyMutex_Unlock.exit
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 904), align 8, !tbaa !115
  %i.w = getelementptr i8, ptr %i.v, i64 24
  %i.x = atomicrmw or ptr %i.w, i64 4 seq_cst, align 8 ; 0 uses
  br label %signal_active_thread.exit

bb.f:                                             ; preds = %_PyMutex_Unlock.exit
  %i.y = getelementptr i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !14   ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 80      ; 2 uses
  %i.ab = tail call i32 @pthread_mutex_lock(ptr noundef %i.aa) #13
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.signal_active_thread, ptr noundef nonnull @.str.11) #14
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %i.z, i64 16
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4
  %.not8.i = icmp eq i32 %i.ad, 0
  br i1 %.not8.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %i.z, i64 8
  %i.af = load atomic ptr, ptr %i.ae monotonic, align 8 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ai = icmp eq ptr %i.ah, %0
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr i8, ptr %i.af, i64 24
  %i.ak = atomicrmw or ptr %i.aj, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef %i.aa) #13
  %.not9.i = icmp eq i32 %i.al, 0
  br i1 %.not9.i, label %signal_active_thread.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.signal_active_thread, ptr noundef nonnull @.str.13) #14
  unreachable

signal_active_thread.exit:                        ; preds = %bb.k, %bb.e
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @Py_AddPendingCall(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @_PyInterpreterState_Main() #13 ; 0 uses
  %i.b = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2920), i8 0, i8 1 seq_cst seq_cst, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %_PyMutex_Lock.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2920)) #13
  br label %_PyMutex_Lock.exit.i

_PyMutex_Lock.exit.i:                             ; preds = %bb.b, %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2924), align 4, !tbaa !200
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2928), align 8, !tbaa !201
  %i.f = icmp eq i32 %i.d, %i.e                   ; 2 uses
  br i1 %i.f, label %_push_pending_call.exit.i, label %bb.c

bb.c:                                             ; preds = %_PyMutex_Lock.exit.i
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10140), align 4, !tbaa !202 ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2936), i64 %i.h ; 3 uses
  store ptr %0, ptr %i.i, align 8, !tbaa !203
  %i.j = getelementptr i8, ptr %i.i, i64 8
  store ptr %1, ptr %i.j, align 8, !tbaa !205
  %i.k = getelementptr i8, ptr %i.i, i64 16
  store i32 1, ptr %i.k, align 8, !tbaa !206
  %i.l = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2924), i32 1 seq_cst, align 4 ; 0 uses
  %i.m = add i32 %i.g, 1
  %i.n = srem i32 %i.m, 300
  store i32 %i.n, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10140), align 4, !tbaa !202
  br label %_push_pending_call.exit.i

_push_pending_call.exit.i:                        ; preds = %bb.c, %_PyMutex_Lock.exit.i
  %i.o = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2920), i8 1, i8 0 seq_cst seq_cst, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_PyEval_AddPendingCall.exit, label %bb.d

bb.d:                                             ; preds = %_push_pending_call.exit.i
  tail call void @PyMutex_Unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2920)) #13
  br label %_PyEval_AddPendingCall.exit

_PyEval_AddPendingCall.exit:                      ; preds = %_push_pending_call.exit.i, %bb.d
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 904), align 8, !tbaa !115
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %i.s = atomicrmw or ptr %i.r, i64 4 seq_cst, align 8 ; 0 uses
  %. = sext i1 %i.f to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_set_eval_breaker_bit_all(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 7376       ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !207
  %i.c = getelementptr i8, ptr %i.b, i64 864      ; 2 uses
  %i.d = cmpxchg ptr %i.c, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %PyMutex_LockFlags.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @_PyMutex_LockTimed(ptr noundef %i.c, i64 noundef -1, i32 noundef 0) #13 ; 0 uses
  br label %PyMutex_LockFlags.exit

PyMutex_LockFlags.exit:                           ; preds = %bb.a, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 7336
  %.06 = load ptr, ptr %i.g, align 8, !tbaa !106  ; 2 uses
  %.not7 = icmp eq ptr %.06, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %PyMutex_LockFlags.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !207
  %i.i = getelementptr i8, ptr %i.h, i64 864      ; 2 uses
  %i.j = cmpxchg ptr %i.i, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.k = extractvalue { i8, i1 } %i.j, 1
  br i1 %i.k, label %_PyMutex_Unlock.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void @PyMutex_Unlock(ptr noundef %i.i) #13
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %._crit_edge, %bb.c
  ret void

.lr.ph:                                           ; preds = %PyMutex_LockFlags.exit, %.lr.ph
  %.08 = phi ptr [ %.0, %.lr.ph ], [ %.06, %PyMutex_LockFlags.exit ] ; 2 uses
  %i.l = getelementptr i8, ptr %.08, i64 24
  %i.m = atomicrmw or ptr %i.l, i64 %1 seq_cst, align 8 ; 0 uses
  %i.n = getelementptr i8, ptr %.08, i64 8
  %.0 = load ptr, ptr %i.n, align 8, !tbaa !106   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !208
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_unset_eval_breaker_bit_all(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 7376       ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !207
  %i.c = getelementptr i8, ptr %i.b, i64 864      ; 2 uses
  %i.d = cmpxchg ptr %i.c, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %PyMutex_LockFlags.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @_PyMutex_LockTimed(ptr noundef %i.c, i64 noundef -1, i32 noundef 0) #13 ; 0 uses
  br label %PyMutex_LockFlags.exit

PyMutex_LockFlags.exit:                           ; preds = %bb.a, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 7336
  %.06 = load ptr, ptr %i.g, align 8, !tbaa !106  ; 2 uses
  %.not7 = icmp eq ptr %.06, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %PyMutex_LockFlags.exit
  %i.h = xor i64 %1, -1
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %PyMutex_LockFlags.exit
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !207
  %i.j = getelementptr i8, ptr %i.i, i64 864      ; 2 uses
  %i.k = cmpxchg ptr %i.j, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.l = extractvalue { i8, i1 } %i.k, 1
  br i1 %i.l, label %_PyMutex_Unlock.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void @PyMutex_Unlock(ptr noundef %i.j) #13
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %._crit_edge, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.08 = phi ptr [ %.06, %.lr.ph ], [ %.0, %bb.d ] ; 2 uses
  %i.m = getelementptr i8, ptr %.08, i64 24
  %i.n = atomicrmw and ptr %i.m, i64 %i.h seq_cst, align 8 ; 0 uses
  %i.o = getelementptr i8, ptr %.08, i64 8
  %.0 = load ptr, ptr %i.o, align 8, !tbaa !106   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !209
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_FinishPendingCalls(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.c = tail call i32 @_Py_IsMainThread() #13
  %.not = icmp eq i32 %i.c, 0
end_hunk_0
begin_hunk_1_@_PyErr_Print
; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyEval_MakePendingCalls(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @_Py_IsMainThread() #13
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %handle_signals.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.d = tail call ptr @_PyInterpreterState_Main() #13
  %.not14 = icmp eq ptr %i.c, %i.d
  br i1 %.not14, label %bb.c, label %handle_signals.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.f = atomicrmw and ptr %i.e, i64 -3 seq_cst, align 8 ; 0 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.h = tail call i32 @_Py_IsMainThread() #13
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %handle_signals.exit.thread, label %_Py_ThreadCanHandleSignals.exit.i

_Py_ThreadCanHandleSignals.exit.i:                ; preds = %bb.c
  %i.i = tail call ptr @_PyInterpreterState_Main() #13
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.d, label %handle_signals.exit.thread

bb.d:                                             ; preds = %_Py_ThreadCanHandleSignals.exit.i
  %i.j = tail call i32 @_PyErr_CheckSignalsTstate(ptr noundef nonnull %0) #13
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %handle_signals.exit, label %handle_signals.exit.thread

handle_signals.exit:                              ; preds = %bb.d
  %i.l = atomicrmw or ptr %i.e, i64 2 seq_cst, align 8 ; 0 uses
  br label %bb.e

handle_signals.exit.thread:                       ; preds = %bb.c, %bb.d, %_Py_ThreadCanHandleSignals.exit.i, %bb.b, %bb.a
  %i.m = tail call fastcc i32 @make_pending_calls(ptr noundef %0)
  br label %bb.e

bb.e:                                             ; preds = %handle_signals.exit, %handle_signals.exit.thread
  %.0 = phi i32 [ -1, %handle_signals.exit ], [ %i.m, %handle_signals.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @Py_MakePendingCalls() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 4 uses
  %i.c = tail call i32 @_Py_IsMainThread() #13
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_PyEval_MakePendingCalls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 16       ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.f = tail call ptr @_PyInterpreterState_Main() #13
  %.not3 = icmp eq ptr %i.e, %i.f
  br i1 %.not3, label %bb.c, label %_PyEval_MakePendingCalls.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @_Py_IsMainThread() #13
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %handle_signals.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.i = tail call ptr @_PyInterpreterState_Main() #13
  %.not14.i = icmp eq ptr %i.h, %i.i
  br i1 %.not14.i, label %bb.e, label %handle_signals.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  %i.k = atomicrmw and ptr %i.j, i64 -3 seq_cst, align 8 ; 0 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.m = tail call i32 @_Py_IsMainThread() #13
  %.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i, label %handle_signals.exit.thread.i, label %_Py_ThreadCanHandleSignals.exit.i.i

_Py_ThreadCanHandleSignals.exit.i.i:              ; preds = %bb.e
  %i.n = tail call ptr @_PyInterpreterState_Main() #13
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.f, label %handle_signals.exit.thread.i

bb.f:                                             ; preds = %_Py_ThreadCanHandleSignals.exit.i.i
  %i.o = tail call i32 @_PyErr_CheckSignalsTstate(ptr noundef nonnull %i.b) #13
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %handle_signals.exit.i, label %handle_signals.exit.thread.i

handle_signals.exit.i:                            ; preds = %bb.f
  %i.q = atomicrmw or ptr %i.j, i64 2 seq_cst, align 8 ; 0 uses
  br label %_PyEval_MakePendingCalls.exit

handle_signals.exit.thread.i:                     ; preds = %bb.f, %_Py_ThreadCanHandleSignals.exit.i.i, %bb.e, %bb.d, %bb.c
  %i.r = tail call fastcc i32 @make_pending_calls(ptr noundef nonnull %i.b)
  br label %_PyEval_MakePendingCalls.exit

_PyEval_MakePendingCalls.exit:                    ; preds = %handle_signals.exit.thread.i, %handle_signals.exit.i, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ -1, %handle_signals.exit.i ], [ %i.r, %handle_signals.exit.thread.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_PyEval_InitState(ptr nofree noundef writeonly captures(none) initializes((7832, 7840), (7848, 7852)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 7832
  %i.b = getelementptr i8, ptr %0, i64 7848
  store i32 -1, ptr %i.b, align 8, !tbaa !212
  store i64 5000, ptr %i.a, align 8, !tbaa !213
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @_PyRunRemoteDebugger(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.e = tail call ptr @_PyInterpreterState_GetConfig(ptr noundef %i.d) #13
  %i.f = getelementptr i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !214
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 328        ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !215
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.af

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !215
  %i.l = tail call ptr @PyMem_Malloc(i64 noundef 512) #13 ; 6 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.af, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %0, i64 332
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.l, ptr noundef nonnull align 4 dereferenceable(512) %i.m, i64 511, i1 false)
  %i.n = getelementptr i8, ptr %i.l, i64 511
  store i8 0, ptr %i.n, align 1, !tbaa !216
  %i.o = load i8, ptr %i.l, align 1, !tbaa !216
  %.not15 = icmp eq i8 %i.o, 0
  br i1 %.not15, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call ptr @PyUnicode_DecodeFSDefault(ptr noundef nonnull %i.l) #13 ; 11 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.1) #13
  br label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.e
  %i.r = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.p) #13
  %.not.i16 = icmp eq i32 %i.r, 0
  br i1 %.not.i16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.p) #13
  br label %run_remote_debugger_script.exit

bb.i:                                             ; preds = %bb.g
  %i.s = tail call ptr @PyFile_OpenCodeObject(ptr noundef nonnull %i.p) #13 ; 6 uses
  %.not19.i = icmp eq ptr %i.s, null
  br i1 %.not19.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.23, ptr noundef nonnull %i.p) #13
  br label %run_remote_debugger_script.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.s, ptr %i.b, align 8, !tbaa !217
  %i.t = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 96800), ptr noundef nonnull %i.b, i64 noundef -9223372036854775807, ptr noundef null) #13 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not20.i = icmp eq ptr %i.t, null              ; 2 uses
  br i1 %.not20.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.24, ptr noundef nonnull %i.p) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.s, ptr %i.a, align 8, !tbaa !217
  %i.u = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77864), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #13 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not21.i = icmp eq ptr %i.u, null
  br i1 %.not21.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.25, ptr noundef nonnull %i.p) #13
  br label %Py_DECREF.exit26.i

bb.o:                                             ; preds = %bb.m
  %i.v = load i32, ptr %i.u, align 8, !tbaa !216  ; 2 uses
  %.not.i25.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i25.i, label %bb.p, label %Py_DECREF.exit26.i

bb.p:                                             ; preds = %bb.o
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !216
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.q, label %Py_DECREF.exit26.i

bb.q:                                             ; preds = %bb.p
  call void @_Py_Dealloc(ptr noundef nonnull %i.u) #13
  br label %Py_DECREF.exit26.i

Py_DECREF.exit26.i:                               ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.y = load i32, ptr %i.s, align 8, !tbaa !216  ; 2 uses
  %.not.i23.i = icmp sgt i32 %i.y, -1
  br i1 %.not.i23.i, label %bb.r, label %Py_DECREF.exit24.i

bb.r:                                             ; preds = %Py_DECREF.exit26.i
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.s, align 8, !tbaa !216
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.s, label %Py_DECREF.exit24.i

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.s) #13
  br label %Py_DECREF.exit24.i

Py_DECREF.exit24.i:                               ; preds = %bb.s, %bb.r, %Py_DECREF.exit26.i
  br i1 %.not20.i, label %run_remote_debugger_script.exit, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit24.i
  %i.ab = call ptr @PyBytes_AsString(ptr noundef nonnull %i.t) #13 ; 2 uses
  %.not.i29.i = icmp eq ptr %i.ab, null
  br i1 %.not.i29.i, label %run_remote_debugger_source.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ac = call ptr @PyDict_New() #13              ; 6 uses
  %.not12.i.i = icmp eq ptr %i.ac, null
  br i1 %.not12.i.i, label %run_remote_debugger_source.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ad = call ptr @PyRun_StringFlags(ptr noundef nonnull %i.ab, i32 noundef 257, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ac, ptr noundef null) #13 ; 4 uses
  %i.ae = load i32, ptr %i.ac, align 8, !tbaa !216 ; 2 uses
  %.not.i14.i.i = icmp sgt i32 %i.ae, -1
  br i1 %.not.i14.i.i, label %bb.w, label %Py_DECREF.exit15.i.i

bb.w:                                             ; preds = %bb.v
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.ac, align 8, !tbaa !216
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.x, label %Py_DECREF.exit15.i.i

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.ac) #13
  br label %Py_DECREF.exit15.i.i

Py_DECREF.exit15.i.i:                             ; preds = %bb.x, %bb.w, %bb.v
  %.not13.i.i = icmp eq ptr %i.ad, null
  br i1 %.not13.i.i, label %run_remote_debugger_source.exit.i, label %bb.y

bb.y:                                             ; preds = %Py_DECREF.exit15.i.i
  %i.ah = load i32, ptr %i.ad, align 8, !tbaa !216 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ah, -1
  br i1 %.not.i.i.i, label %bb.z, label %run_remote_debugger_source.exit.thread.i

bb.z:                                             ; preds = %bb.y
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ad, align 8, !tbaa !216
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.aa, label %run_remote_debugger_source.exit.thread.i

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #13
  br label %run_remote_debugger_source.exit.thread.i

run_remote_debugger_source.exit.i:                ; preds = %Py_DECREF.exit15.i.i, %bb.u, %bb.t
  call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.26, ptr noundef nonnull %i.p) #13
  br label %run_remote_debugger_source.exit.thread.i

run_remote_debugger_source.exit.thread.i:         ; preds = %run_remote_debugger_source.exit.i, %bb.aa, %bb.z, %bb.y
  %i.ak = load i32, ptr %i.t, align 8, !tbaa !216 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i.i, label %bb.ab, label %run_remote_debugger_script.exit

bb.ab:                                            ; preds = %run_remote_debugger_source.exit.thread.i
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.t, align 8, !tbaa !216
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.ac, label %run_remote_debugger_script.exit

bb.ac:                                            ; preds = %bb.ab
  call void @_Py_Dealloc(ptr noundef nonnull %i.t) #13
  br label %run_remote_debugger_script.exit

run_remote_debugger_script.exit:                  ; preds = %bb.h, %bb.j, %Py_DECREF.exit24.i, %run_remote_debugger_source.exit.thread.i, %bb.ab, %bb.ac
  %i.an = load i32, ptr %i.p, align 8, !tbaa !216 ; 2 uses
  %.not.i = icmp sgt i32 %i.an, -1
  br i1 %.not.i, label %bb.ad, label %Py_DECREF.exit

bb.ad:                                            ; preds = %run_remote_debugger_script.exit
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.p, align 8, !tbaa !216
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.ae, label %Py_DECREF.exit

bb.ae:                                            ; preds = %bb.ad
  call void @_Py_Dealloc(ptr noundef nonnull %i.p) #13
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.ae, %bb.ad, %run_remote_debugger_script.exit, %bb.f, %bb.d
  call void @PyMem_Free(ptr noundef nonnull %i.l) #13
  br label %bb.af

bb.af:                                            ; preds = %bb.c, %Py_DECREF.exit, %bb.b, %bb.a
  ret i32 0
}

declare ptr @_PyInterpreterState_GetConfig(ptr noundef) local_unnamed_addr #3

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @PyUnicode_DecodeFSDefault(ptr noundef) local_unnamed_addr #3

declare void @PyErr_FormatUnraisable(ptr noundef, ...) local_unnamed_addr #3

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_Py_HandlePending(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 6 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8 ; 6 uses
  %i.c = and i64 %i.b, 32
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw and ptr %i.a, i64 -33 seq_cst, align 8 ; 0 uses
  tail call void @_PyThreadState_Suspend(ptr noundef nonnull %0) #13
  tail call void @_PyThreadState_Attach(ptr noundef nonnull %0) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = and i64 %i.b, 2
  %.not18 = icmp eq i64 %i.e, 0
  br i1 %.not18, label %handle_signals.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = atomicrmw and ptr %i.a, i64 -3 seq_cst, align 8 ; 0 uses
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  %i.i = tail call i32 @_Py_IsMainThread() #13
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %handle_signals.exit.thread, label %_Py_ThreadCanHandleSignals.exit.i

_Py_ThreadCanHandleSignals.exit.i:                ; preds = %bb.d
  %i.j = tail call ptr @_PyInterpreterState_Main() #13
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.e, label %handle_signals.exit.thread

bb.e:                                             ; preds = %_Py_ThreadCanHandleSignals.exit.i
  %i.k = tail call i32 @_PyErr_CheckSignalsTstate(ptr noundef nonnull %0) #13
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %handle_signals.exit, label %handle_signals.exit.thread

handle_signals.exit:                              ; preds = %bb.e
  %i.m = atomicrmw or ptr %i.a, i64 2 seq_cst, align 8 ; 0 uses
  br label %_PyEval_RaiseAsyncExc.exit.thread

handle_signals.exit.thread:                       ; preds = %bb.d, %bb.e, %_Py_ThreadCanHandleSignals.exit.i, %bb.c
  %i.n = and i64 %i.b, 4
  %.not20 = icmp eq i64 %i.n, 0
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %handle_signals.exit.thread
  %i.o = tail call fastcc i32 @make_pending_calls(ptr noundef nonnull %0)
  %.not21 = icmp eq i32 %i.o, 0
  br i1 %.not21, label %bb.g, label %_PyEval_RaiseAsyncExc.exit.thread

bb.g:                                             ; preds = %bb.f, %handle_signals.exit.thread
  %i.p = and i64 %i.b, 16
  %.not22 = icmp eq i64 %i.p, 0
  br i1 %.not22, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = atomicrmw and ptr %i.a, i64 -17 seq_cst, align 8 ; 0 uses
  tail call void @_Py_RunGC(ptr noundef nonnull %0) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %1 = and i64 %i.b, 1
  %.not23 = icmp eq i64 %1, 0
  br i1 %.not23, label %2, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_PyThreadState_Detach(ptr noundef nonnull %0) #13
  tail call void @_PyThreadState_Attach(ptr noundef nonnull %0) #13
  br label %2

2:                                                ; preds = %bb.j, %bb.i
  %3 = and i64 %i.b, 8
  %.not24 = icmp eq i64 %3, 0
  br i1 %.not24, label %_PyEval_RaiseAsyncExc.exit, label %4

4:                                                ; preds = %2
  %5 = atomicrmw and ptr %i.a, i64 -9 seq_cst, align 8 ; 0 uses
  %6 = getelementptr i8, ptr %0, i64 160
  %7 = atomicrmw xchg ptr %6, ptr null seq_cst, align 8 ; 5 uses
  %.not.i25 = icmp eq ptr %7, null
  br i1 %.not.i25, label %_PyEval_RaiseAsyncExc.exit, label %8

8:                                                ; preds = %4
  tail call void @_PyErr_SetNone(ptr noundef nonnull %0, ptr noundef nonnull %7) #13
  %9 = load i32, ptr %7, align 8, !tbaa !216      ; 2 uses
  %.not.i.i26 = icmp sgt i32 %9, -1
  br i1 %.not.i.i26, label %10, label %_PyEval_RaiseAsyncExc.exit.thread

10:                                               ; preds = %8
  %11 = add nsw i32 %9, -1                        ; 2 uses
  store i32 %11, ptr %7, align 8, !tbaa !216
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %_PyEval_RaiseAsyncExc.exit.thread

13:                                               ; preds = %10
  tail call void @_Py_Dealloc(ptr noundef nonnull %7) #13
  br label %_PyEval_RaiseAsyncExc.exit.thread

_PyEval_RaiseAsyncExc.exit:                       ; preds = %4, %2
  %i.r = tail call i32 @_PyRunRemoteDebugger(ptr noundef nonnull %0) ; 0 uses
  br label %_PyEval_RaiseAsyncExc.exit.thread

_PyEval_RaiseAsyncExc.exit.thread:                ; preds = %13, %10, %8, %handle_signals.exit, %bb.f, %_PyEval_RaiseAsyncExc.exit
  %.0 = phi i32 [ 0, %_PyEval_RaiseAsyncExc.exit ], [ -1, %handle_signals.exit ], [ -1, %bb.f ], [ -1, %8 ], [ -1, %10 ], [ -1, %13 ]
  ret i32 %.0
}

declare void @_PyThreadState_Suspend(ptr noundef) local_unnamed_addr #3

declare void @_Py_RunGC(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyEval_RaiseAsyncExc(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = atomicrmw and ptr %i.a, i64 -9 seq_cst, align 8 ; 0 uses
  %i.c = getelementptr i8, ptr %0, i64 160
  %i.d = atomicrmw xchg ptr %i.c, ptr null seq_cst, align 8 ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_SetNone(ptr noundef %0, ptr noundef nonnull %i.d) #13
  %i.e = load i32, ptr %i.d, align 8, !tbaa !216  ; 2 uses
  %.not.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !216
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #13
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.d ]
  ret i32 %.0
}

declare void @_PyErr_SetNone(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

; Function Attrs: nounwind uwtable
define internal fastcc void @create_gil(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = tail call i32 @pthread_mutex_init(ptr noundef %i.a, ptr noundef null) #13
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.create_gil, ptr noundef nonnull @.str.2) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 168
  %i.d = tail call i32 @pthread_mutex_init(ptr noundef %i.c, ptr noundef null) #13
  %.not6 = icmp eq i32 %i.d, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.create_gil, ptr noundef nonnull @.str.3) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = tail call i32 @_PyThread_cond_init(ptr noundef %i.e) #13
  %.not7 = icmp eq i32 %i.f, 0
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.create_gil, ptr noundef nonnull @.str.4) #14
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.g = getelementptr i8, ptr %0, i64 120
  %i.h = tail call i32 @_PyThread_cond_init(ptr noundef %i.g) #13
  %.not8 = icmp eq i32 %i.h, 0
  br i1 %.not8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.create_gil, ptr noundef nonnull @.str.5) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.i = getelementptr i8, ptr %0, i64 8
  store atomic ptr null, ptr %i.i monotonic, align 8
  %i.j = getelementptr i8, ptr %0, i64 16
  store atomic i32 0, ptr %i.j release, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_Py_FatalErrorFunc(ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @_PyThread_cond_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

declare i32 @_PyThreadState_MustExit(ptr noundef) local_unnamed_addr #3

declare void @_PyThreadState_HangThread(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #9

declare void @_PyThread_cond_after(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @pthread_cond_timedwait(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @PyMutex_Lock(ptr noundef) local_unnamed_addr #3

declare void @PyMutex_Unlock(ptr noundef) local_unnamed_addr #3

declare i32 @_PyMutex_LockTimed(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_make_pending_calls(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !218  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !201
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.018 = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = icmp sgt i32 %.018, 0
  br i1 %i.f, label %.lr.ph, label %.thread38

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.h = getelementptr i8, ptr %0, i64 12         ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 7224       ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 24         ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.k
  %i.k = add nuw nsw i32 %.01744, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.k, %.018
  br i1 %exitcond.not, label %.thread38, label %bb.e, !llvm.loop !219

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.01744 = phi i32 [ 0, %.lr.ph ], [ %i.k, %bb.d ]
  %i.l = cmpxchg ptr %i.g, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.m = extractvalue { i8, i1 } %i.l, 1
  br i1 %i.m, label %_PyMutex_Lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @PyMutex_Lock(ptr noundef %i.g) #13
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.e, %bb.f
  %i.n = load i32, ptr %i.h, align 4, !tbaa !200  ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_pop_pending_call.exit, label %_next_pending_call.exit.i

_next_pending_call.exit.i:                        ; preds = %_PyMutex_Lock.exit
  %i.p = load i32, ptr %i.i, align 8, !tbaa !220  ; 4 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [24 x i8], ptr %i.j, i64 %i.q ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !203  ; 2 uses
  %i.t = getelementptr i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !205  ; 2 uses
  %i.v = getelementptr i8, ptr %i.r, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !206  ; 2 uses
  %i.x = icmp sgt i32 %i.p, -1
  br i1 %i.x, label %bb.g, label %_pop_pending_call.exit

bb.g:                                             ; preds = %_next_pending_call.exit.i
  %i.y = zext nneg i32 %i.p to i64
  %i.z = getelementptr [24 x i8], ptr %i.j, i64 %i.y
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.aa = add nuw i32 %i.p, 1
  %i.ab = srem i32 %i.aa, 300
  store i32 %i.ab, ptr %i.i, align 8, !tbaa !220
  %i.ac = atomicrmw add ptr %i.h, i32 -1 seq_cst, align 4 ; 0 uses
  %.pre = load i32, ptr %i.h, align 4, !tbaa !200
  br label %_pop_pending_call.exit

_pop_pending_call.exit:                           ; preds = %_PyMutex_Lock.exit, %_next_pending_call.exit.i, %bb.g
  %i.ad = phi i32 [ 0, %_PyMutex_Lock.exit ], [ %.pre, %bb.g ], [ %i.n, %_next_pending_call.exit.i ] ; 3 uses
  %.034 = phi ptr [ null, %_PyMutex_Lock.exit ], [ %i.s, %bb.g ], [ %i.s, %_next_pending_call.exit.i ] ; 2 uses
  %.033 = phi ptr [ null, %_PyMutex_Lock.exit ], [ %i.u, %bb.g ], [ %i.u, %_next_pending_call.exit.i ] ; 3 uses
  %.032 = phi i32 [ 0, %_PyMutex_Lock.exit ], [ %i.w, %bb.g ], [ %i.w, %_next_pending_call.exit.i ]
  %i.ae = cmpxchg ptr %i.g, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.af = extractvalue { i8, i1 } %i.ae, 1
  br i1 %i.af, label %_PyMutex_Unlock.exit, label %bb.h

bb.h:                                             ; preds = %_pop_pending_call.exit
  tail call void @PyMutex_Unlock(ptr noundef %i.g) #13
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %_pop_pending_call.exit, %bb.h
  %i.ag = icmp eq ptr %.034, null
  br i1 %i.ag, label %.thread38, label %bb.i

bb.i:                                             ; preds = %_PyMutex_Unlock.exit
  %i.ah = tail call i32 %.034(ptr noundef %.033) #13
end_hunk_1
