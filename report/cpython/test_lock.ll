inline.NumInlined: 41
inline.NumDeleted: 18
begin_hunk_0_@test_lock_recursive:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @PyMutex_Lock(ptr noundef) local_unnamed_addr #1

declare void @PyMutex_Unlock(ptr noundef) local_unnamed_addr #1

declare i64 @PyThread_start_new_thread(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @lock_thread(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  store atomic i32 1, ptr %i.a seq_cst, align 4
  %i.b = cmpxchg ptr %0, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef nonnull %0) #6
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  %i.d = load i8, ptr %0, align 1, !tbaa !10
  switch i8 %i.d, label %bb.c [
    i8 1, label %bb.d
    i8 3, label %bb.d
  ]

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.11, i32 noundef 63, ptr noundef nonnull @__PRETTY_FUNCTION__.lock_thread) #7
  unreachable

bb.d:                                             ; preds = %_PyMutex_Lock.exit, %_PyMutex_Lock.exit
  %i.e = cmpxchg ptr %0, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.f = extractvalue { i8, i1 } %i.e, 1
  br i1 %i.f, label %_PyMutex_Unlock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @PyMutex_Unlock(ptr noundef nonnull %0) #6
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %bb.d, %bb.e
  %i.g = load i8, ptr %0, align 1, !tbaa !10
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_PyMutex_Unlock.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.11, i32 noundef 66, ptr noundef nonnull @__PRETTY_FUNCTION__.lock_thread) #7
  unreachable

bb.g:                                             ; preds = %_PyMutex_Unlock.exit
  %i.i = getelementptr i8, ptr %0, i64 1
  tail call void @_PyEvent_Notify(ptr noundef %i.i) #6
  ret void
}

declare void @PyEvent_Wait(ptr noundef) local_unnamed_addr #1

declare void @_PyEvent_Notify(ptr noundef) local_unnamed_addr #1

declare i32 @usleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @counter_thread(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_PyMutex_Unlock.exit
  %i.c = getelementptr i8, ptr %0, i64 8
  tail call void @_PyEvent_Notify(ptr noundef %i.c) #6
  ret void

bb.c:                                             ; preds = %bb.a, %_PyMutex_Unlock.exit
  %.07 = phi i64 [ 0, %bb.a ], [ %i.j, %_PyMutex_Unlock.exit ]
  %i.d = cmpxchg ptr %i.a, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %_PyMutex_Lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @PyMutex_Lock(ptr noundef %i.a) #6
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.c, %bb.d
  %i.f = load i64, ptr %i.b, align 8, !tbaa !21
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.b, align 8, !tbaa !21
  %i.h = cmpxchg ptr %i.a, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.i = extractvalue { i8, i1 } %i.h, 1
  br i1 %i.i, label %_PyMutex_Unlock.exit, label %bb.e

bb.e:                                             ; preds = %_PyMutex_Lock.exit
  tail call void @PyMutex_Unlock(ptr noundef nonnull %i.a) #6
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %_PyMutex_Lock.exit, %bb.e
  %i.j = add nuw nsw i64 %.07, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, 10000
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !35
}

; Function Attrs: nounwind uwtable
define internal void @slow_counter_thread(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_PyMutex_Unlock.exit
  %i.c = getelementptr i8, ptr %0, i64 8
  tail call void @_PyEvent_Notify(ptr noundef %i.c) #6
  ret void

bb.c:                                             ; preds = %bb.a, %_PyMutex_Unlock.exit
  %.08 = phi i64 [ 0, %bb.a ], [ %i.m, %_PyMutex_Unlock.exit ] ; 2 uses
  %i.d = cmpxchg ptr %i.a, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %_PyMutex_Lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @PyMutex_Lock(ptr noundef %i.a) #6
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.c, %bb.d
  %.lhs.trunc = trunc nuw i64 %.08 to i8
  %i.f = urem i8 %.lhs.trunc, 7
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_PyMutex_Lock.exit
  %i.h = tail call i32 @usleep(i32 noundef 2000) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_PyMutex_Lock.exit
  %i.i = load i64, ptr %i.b, align 8, !tbaa !21
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.b, align 8, !tbaa !21
  %i.k = cmpxchg ptr %i.a, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.l = extractvalue { i8, i1 } %i.k, 1
  br i1 %i.l, label %_PyMutex_Unlock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @PyMutex_Unlock(ptr noundef nonnull %i.a) #6
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %bb.f, %bb.g
  %i.m = add nuw nsw i64 %.08, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, 100
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !36
}

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_testinternalcapi_benchmark_locks_impl(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef range(i32 0, -2147483648) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.bench_config, align 8       ; 13 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  store i32 0, ptr %8, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %1, ptr %i.c, align 4, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %2, ptr %i.d, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %4, ptr %i.e, align 4, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %7, ptr %i.f, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %5, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %6, ptr %i.i, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  %i.k = tail call ptr @PyMem_Calloc(i64 noundef %6, i64 noundef 216) #6 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !46
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %9, label %bb.b

9:                                                ; preds = %bb.a
  %10 = tail call ptr @PyErr_NoMemory() #6        ; 0 uses
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @PyMem_Calloc(i64 noundef %0, i64 noundef 40) #6 ; 10 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %11, label %bb.c

11:                                               ; preds = %bb.b
  %12 = tail call ptr @PyErr_NoMemory() #6        ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @PyList_New(i64 noundef %0) #6 ; 10 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = call i32 @PyTime_PerfCounter(ptr noundef nonnull %i.a) #6
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.loopexit, label %.preheader5

.preheader5:                                      ; preds = %bb.d
  %i.s = icmp sgt i64 %0, 0                       ; 2 uses
  br i1 %i.s, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader5
  %i.t = icmp eq i64 %5, 0
  br i1 %i.t, label %bb.e, label %bb.f

.lr.ph:                                           ; preds = %.preheader5, %.lr.ph
  %.0619 = phi i64 [ %i.z, %.lr.ph ], [ 0, %.preheader5 ] ; 3 uses
  %i.u = getelementptr [40 x i8], ptr %i.m, i64 %.0619 ; 4 uses
  store ptr %8, ptr %i.u, align 8, !tbaa !47
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.w = srem i64 %.0619, %6
  %i.x = getelementptr [216 x i8], ptr %i.v, i64 %i.w
  %i.y = getelementptr i8, ptr %i.u, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !50
  %i.z = add nuw nsw i64 %.0619, 1                ; 3 uses
  %i.aa = getelementptr i8, ptr %i.u, i64 16
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !51
  %i.ab = call i64 @PyThread_start_new_thread(ptr noundef nonnull @thread_benchmark_locks, ptr noundef nonnull %i.u) #6 ; 0 uses
  %exitcond.not = icmp eq i64 %i.z, %0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

bb.e:                                             ; preds = %._crit_edge
  %i.ac = mul i32 %3, 1000
  %i.ad = call i32 @usleep(i32 noundef %i.ac) #6  ; 0 uses
  store atomic i32 1, ptr %8 seq_cst, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  br i1 %i.s, label %.lr.ph12, label %._crit_edge13.thread

._crit_edge13:                                    ; preds = %.lr.ph12
  %i.ae = call i32 @PyTime_PerfCounter(ptr noundef nonnull %i.b) #6
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %.loopexit, label %.lr.ph16

._crit_edge13.thread:                             ; preds = %bb.f
  %i.ag = call i32 @PyTime_PerfCounter(ptr noundef nonnull %i.b) #6
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %.loopexit, label %._crit_edge17

.lr.ph16:                                         ; preds = %._crit_edge13
  %i.ai = getelementptr i8, ptr %i.o, i64 8
  %i.aj = getelementptr i8, ptr %i.o, i64 32
  %i.ak = getelementptr i8, ptr %i.o, i64 24
  br label %bb.g

.lr.ph12:                                         ; preds = %bb.f, %.lr.ph12
  %.06010 = phi i64 [ %i.an, %.lr.ph12 ], [ 0, %bb.f ] ; 2 uses
  %i.al = getelementptr [40 x i8], ptr %i.m, i64 %.06010
  %i.am = getelementptr i8, ptr %i.al, i64 32
  call void @PyEvent_Wait(ptr noundef %i.am) #6
  %i.an = add nuw nsw i64 %.06010, 1              ; 2 uses
  %exitcond18.not = icmp eq i64 %i.an, %0
  br i1 %exitcond18.not, label %._crit_edge13, label %.lr.ph12, !llvm.loop !53

bb.g:                                             ; preds = %.lr.ph16, %bb.l
  %.05715 = phi i64 [ 0, %.lr.ph16 ], [ %i.ba, %bb.l ] ; 4 uses
  %.05814 = phi i64 [ 0, %.lr.ph16 ], [ %i.az, %bb.l ]
  %i.ao = getelementptr [40 x i8], ptr %i.m, i64 %.05715
  %i.ap = getelementptr i8, ptr %i.ao, i64 24     ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !54
  %i.ar = call ptr @PyLong_FromSsize_t(i64 noundef %i.aq) #6 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val.i = load ptr, ptr %i.ai, align 8, !tbaa !55
  %i.as = getelementptr i8, ptr %.val.i, i64 168
  %.val7.i = load i64, ptr %i.as, align 8, !tbaa !58
  %i.at = and i64 %.val7.i, 33554432
  %.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 44, ptr noundef nonnull @__PRETTY_FUNCTION__.PyList_SET_ITEM) #7
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.au = load i64, ptr %i.aj, align 8, !tbaa !66
  %i.av = icmp slt i64 %.05715, %i.au
  br i1 %i.av, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef 46, ptr noundef nonnull @__PRETTY_FUNCTION__.PyList_SET_ITEM) #7
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %i.ak, align 8, !tbaa !70
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %.05715
  store ptr %i.ar, ptr %i.ax, align 8, !tbaa !24
  %i.ay = load i64, ptr %i.ap, align 8, !tbaa !54
  %i.az = add i64 %i.ay, %.05814                  ; 2 uses
  %i.ba = add nuw nsw i64 %.05715, 1              ; 2 uses
  %exitcond19.not = icmp eq i64 %i.ba, %0
  br i1 %exitcond19.not, label %._crit_edge17.loopexit, label %bb.g, !llvm.loop !71

._crit_edge17.loopexit:                           ; preds = %bb.l
  %i.bb = sitofp i64 %i.az to double
  %i.bc = fmul nnan double %i.bb, 1.000000e+09
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge13.thread, %._crit_edge17.loopexit
  %.058.lcssa = phi double [ 0.000000e+00, %._crit_edge13.thread ], [ %i.bc, %._crit_edge17.loopexit ]
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !72  ; 2 uses
  %i.be = load i64, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %.not71 = icmp eq i64 %i.bd, %i.be
  br i1 %.not71, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge17
  call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.11, i32 noundef 374, ptr noundef nonnull @__PRETTY_FUNCTION__._testinternalcapi_benchmark_locks_impl) #7
  unreachable

bb.n:                                             ; preds = %._crit_edge17
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = sitofp i64 %i.bf to double
  %i.bh = fdiv double %.058.lcssa, %i.bg
  %i.bi = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.22, double noundef %i.bh, ptr noundef nonnull %i.o, i64 noundef %i.bf) #6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %._crit_edge13.thread, %._crit_edge13, %bb.d, %bb.c, %bb.n, %11, %9
  %.062 = phi ptr [ null, %9 ], [ null, %11 ], [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %i.m, %._crit_edge13 ], [ %i.m, %bb.n ], [ %i.m, %._crit_edge13.thread ], [ %i.m, %bb.g ]
  %.055 = phi ptr [ null, %9 ], [ null, %11 ], [ null, %bb.c ], [ null, %bb.d ], [ null, %._crit_edge13 ], [ %i.bi, %bb.n ], [ null, %._crit_edge13.thread ], [ null, %bb.g ]
  %.054 = phi ptr [ null, %9 ], [ null, %11 ], [ null, %bb.c ], [ %i.o, %bb.d ], [ %i.o, %._crit_edge13 ], [ %i.o, %bb.n ], [ %i.o, %._crit_edge13.thread ], [ %i.o, %bb.g ] ; 4 uses
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !46
  call void @PyMem_Free(ptr noundef %i.bj) #6
  call void @PyMem_Free(ptr noundef %.062) #6
  %.not.i72 = icmp eq ptr %.054, null
  br i1 %.not.i72, label %Py_XDECREF.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.bk = load i32, ptr %.054, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bk, -1
  br i1 %.not.i.i, label %bb.p, label %Py_XDECREF.exit

bb.p:                                             ; preds = %bb.o
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %.054, align 8, !tbaa !26
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.q, label %Py_XDECREF.exit

bb.q:                                             ; preds = %bb.p
  call void @_Py_Dealloc(ptr noundef nonnull %.054) #6
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.q, %bb.p, %bb.o, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  ret ptr %.055
}

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

declare i32 @PyTime_PerfCounter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @thread_benchmark_locks(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 14 uses
  %i.b = getelementptr i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !40
  %.fr134 = freeze i32 %i.c                       ; 4 uses
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41
  %.fr135 = freeze i32 %i.e                       ; 4 uses
  %i.f = getelementptr i8, ptr %i.a, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !42
  %.fr = freeze i32 %i.g                          ; 4 uses
  %i.h = getelementptr i8, ptr %i.a, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44   ; 6 uses
  %i.j = icmp sgt i64 %i.i, 0                     ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 8
  %i.l = getelementptr i8, ptr %i.a, i64 16       ; 5 uses
  %i.m = getelementptr i8, ptr %i.a, i64 32
  %i.n = getelementptr i8, ptr %i.a, i64 40
  %i.o = icmp sgt i32 %.fr, 0
  %i.p = icmp sgt i32 %.fr134, 0
  %i.q = icmp sgt i32 %.fr135, 0                  ; 2 uses
  %i.r = sext i32 %.fr to i64                     ; 9 uses
  br i1 %i.o, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.s = getelementptr i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !51
  %xtraiter = and i32 %.fr134, 7                  ; 3 uses
  %i.u = icmp ult i32 %.fr134, 8
  %unroll_iter = and i32 %.fr134, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod228 = icmp ne i32 %xtraiter, 0
  %xtraiter229 = and i32 %.fr135, 7               ; 3 uses
  %i.v = icmp ult i32 %.fr135, 8
  %unroll_iter234 = and i32 %.fr135, 2147483640
  %lcmp.mod231.not = icmp eq i32 %xtraiter229, 0
  %lcmp.mod233 = icmp ne i32 %xtraiter229, 0
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %._crit_edge.us67
  %.049.us = phi i64 [ %.150.us, %._crit_edge.us67 ], [ %i.t, %.split.us.preheader ] ; 2 uses
  %.044.us = phi i64 [ %i.as, %._crit_edge.us67 ], [ 0, %.split.us.preheader ] ; 4 uses
  %.041.us = phi double [ %.3.lcssa.us, %._crit_edge.us67 ], [ 1.000000e+00, %.split.us.preheader ] ; 2 uses
  %.040.us = phi double [ %.1.lcssa.us, %._crit_edge.us67 ], [ 0.000000e+00, %.split.us.preheader ] ; 3 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.w = load atomic i32, ptr %i.a monotonic, align 4
  %.not.us = icmp eq i32 %i.w, 0
  br i1 %.not.us, label %bb.d, label %.split70.us

bb.c:                                             ; preds = %.split.us
  %.not47.us = icmp slt i64 %.044.us, %i.i
  br i1 %.not47.us, label %bb.d, label %.split70.us

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.y = load i32, ptr %i.l, align 8, !tbaa !43
  %.not48.us = icmp eq i32 %i.y, 0
  br i1 %.not48.us, label %.lr.ph56.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = add i64 %.049.us, -7046029254386353131   ; 3 uses
  %i.aa = lshr i64 %i.z, 30
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -4658895280553007687     ; 2 uses
  %i.ad = lshr i64 %i.ac, 27
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, -7723592293110705685     ; 2 uses
  %i.ag = lshr i64 %i.af, 31
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !45
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = mul nuw i64 %i.ak, %i.ai
  %i.am = lshr i64 %i.al, 32
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.ao = getelementptr [216 x i8], ptr %i.an, i64 %i.am
  br label %.lr.ph56.us

.lr.ph56.us:                                      ; preds = %bb.e, %bb.d
  %.150.us = phi i64 [ %.049.us, %bb.d ], [ %i.z, %bb.e ]
  %.043.us = phi ptr [ %i.x, %bb.d ], [ %i.ao, %bb.e ] ; 2 uses
  %i.ap = getelementptr i8, ptr %.043.us, i64 200 ; 8 uses
  %i.aq = getelementptr i8, ptr %.043.us, i64 208 ; 2 uses
  br i1 %i.p, label %.lr.ph56.split.us.us, label %.lr.ph56.split.us66

._crit_edge.us67.loopexit.unr-lcssa:              ; preds = %.lr.ph.us
  br i1 %lcmp.mod231.not, label %._crit_edge.us67, label %.lr.ph.us.epil.preheader

.lr.ph.us.epil.preheader:                         ; preds = %._crit_edge.us67.loopexit.unr-lcssa, %.lr.ph.us.preheader
  %.159.us.epil.init = phi double [ %.040.us, %.lr.ph.us.preheader ], [ %i.ba, %._crit_edge.us67.loopexit.unr-lcssa ]
  %.358.us.epil.init = phi double [ %.us-phi.us, %.lr.ph.us.preheader ], [ %i.ba, %._crit_edge.us67.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod233)
  br label %.lr.ph.us.epil

.lr.ph.us.epil:                                   ; preds = %.lr.ph.us.epil, %.lr.ph.us.epil.preheader
  %.159.us.epil = phi double [ %i.ar, %.lr.ph.us.epil ], [ %.159.us.epil.init, %.lr.ph.us.epil.preheader ]
  %.358.us.epil = phi double [ %i.ar, %.lr.ph.us.epil ], [ %.358.us.epil.init, %.lr.ph.us.epil.preheader ]
  %epil.iter230 = phi i32 [ %epil.iter230.next, %.lr.ph.us.epil ], [ 0, %.lr.ph.us.epil.preheader ]
  %i.ar = fadd double %.358.us.epil, %.159.us.epil ; 4 uses
  %epil.iter230.next = add i32 %epil.iter230, 1   ; 2 uses
  %epil.iter230.cmp.not = icmp eq i32 %epil.iter230.next, %xtraiter229
  br i1 %epil.iter230.cmp.not, label %._crit_edge.us67, label %.lr.ph.us.epil, !llvm.loop !73

._crit_edge.us67:                                 ; preds = %._crit_edge.us67.loopexit.unr-lcssa, %.lr.ph.us.epil, %..preheader_crit_edge.us
  %.3.lcssa.us = phi double [ %.us-phi.us, %..preheader_crit_edge.us ], [ %i.ba, %._crit_edge.us67.loopexit.unr-lcssa ], [ %i.ar, %.lr.ph.us.epil ]
  %.1.lcssa.us = phi double [ %.040.us, %..preheader_crit_edge.us ], [ %i.ba, %._crit_edge.us67.loopexit.unr-lcssa ], [ %i.ar, %.lr.ph.us.epil ]
  %i.as = add i64 %.044.us, %i.r
  br label %.split.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.159.us = phi double [ %i.ba, %.lr.ph.us ], [ %.040.us, %.lr.ph.us.preheader ]
  %.358.us = phi double [ %i.ba, %.lr.ph.us ], [ %.us-phi.us, %.lr.ph.us.preheader ]
  %niter235 = phi i32 [ %niter235.next.7, %.lr.ph.us ], [ 0, %.lr.ph.us.preheader ]
  %i.at = fadd double %.358.us, %.159.us          ; 2 uses
  %i.au = fadd double %i.at, %i.at                ; 2 uses
  %i.av = fadd double %i.au, %i.au                ; 2 uses
  %i.aw = fadd double %i.av, %i.av                ; 2 uses
  %i.ax = fadd double %i.aw, %i.aw                ; 2 uses
  %i.ay = fadd double %i.ax, %i.ax                ; 2 uses
  %i.az = fadd double %i.ay, %i.ay                ; 2 uses
  %i.ba = fadd double %i.az, %i.az                ; 6 uses
  %niter235.next.7 = add i32 %niter235, 8         ; 2 uses
  %niter235.ncmp.7 = icmp eq i32 %niter235.next.7, %unroll_iter234
  br i1 %niter235.ncmp.7, label %._crit_edge.us67.loopexit.unr-lcssa, label %.lr.ph.us, !llvm.loop !75

.lr.ph56.split.us66:                              ; preds = %.lr.ph56.us, %_PyMutex_Unlock.exit.us64
  %.03954.us62 = phi i32 [ %i.bf, %_PyMutex_Unlock.exit.us64 ], [ 0, %.lr.ph56.us ]
  %i.bb = cmpxchg ptr %i.ap, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.bc = extractvalue { i8, i1 } %i.bb, 1
  br i1 %i.bc, label %_PyMutex_Lock.exit.us63, label %bb.f

bb.f:                                             ; preds = %.lr.ph56.split.us66
  tail call void @PyMutex_Lock(ptr noundef %i.ap) #6
  br label %_PyMutex_Lock.exit.us63

_PyMutex_Lock.exit.us63:                          ; preds = %bb.f, %.lr.ph56.split.us66
  %i.bd = cmpxchg ptr %i.ap, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.be = extractvalue { i8, i1 } %i.bd, 1
  br i1 %i.be, label %_PyMutex_Unlock.exit.us64, label %bb.g

bb.g:                                             ; preds = %_PyMutex_Lock.exit.us63
  tail call void @PyMutex_Unlock(ptr noundef %i.ap) #6
  br label %_PyMutex_Unlock.exit.us64

_PyMutex_Unlock.exit.us64:                        ; preds = %bb.g, %_PyMutex_Lock.exit.us63
  %i.bf = add nuw nsw i32 %.03954.us62, 1         ; 2 uses
  %exitcond161.not = icmp eq i32 %i.bf, %.fr
  br i1 %exitcond161.not, label %..preheader_crit_edge.us, label %.lr.ph56.split.us66, !llvm.loop !76

..preheader_crit_edge.us:                         ; preds = %_PyMutex_Unlock.exit.us64, %_PyMutex_Unlock.exit.us.us
  %.us-phi.us = phi double [ %.lcssa, %_PyMutex_Unlock.exit.us.us ], [ %.041.us, %_PyMutex_Unlock.exit.us64 ] ; 3 uses
  br i1 %i.q, label %.lr.ph.us.preheader, label %._crit_edge.us67

.lr.ph.us.preheader:                              ; preds = %..preheader_crit_edge.us
  br i1 %i.v, label %.lr.ph.us.epil.preheader, label %.lr.ph.us

.lr.ph56.split.us.us:                             ; preds = %.lr.ph56.us, %_PyMutex_Unlock.exit.us.us
  %.03954.us.us = phi i32 [ %i.bi, %_PyMutex_Unlock.exit.us.us ], [ 0, %.lr.ph56.us ]
  %.14253.us.us = phi double [ %.lcssa, %_PyMutex_Unlock.exit.us.us ], [ %.041.us, %.lr.ph56.us ] ; 2 uses
  %i.bg = cmpxchg ptr %i.ap, i8 0, i8 1 seq_cst seq_cst, align 1
end_hunk_0
