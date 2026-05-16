inline.NumInlined: 120
inline.NumDeleted: 49
begin_hunk_0_@PyEval_ThreadsInitialized:bb.a
; Function Attrs: nounwind uwtable
define hidden void @_PyEval_InitGIL(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @_PyInterpreterState_Main() #12
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @PyThread_init_thread() #12
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
  tail call void @_PyThreadState_Attach(ptr noundef nonnull %0) #12
  ret void
}

declare void @PyThread_init_thread() local_unnamed_addr #3

declare void @_PyThreadState_Attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_PyEval_FiniGIL(ptr noundef captures(none) %0) local_unnamed_addr #2 {
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
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.k, label %bb.c

bb.c:                                             ; preds = %gil_created.exit
  %i.i = getelementptr i8, ptr %i.b, i64 32
  %i.j = tail call i32 @pthread_cond_destroy(ptr noundef %i.i) #12
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.destroy_gil, ptr noundef nonnull @.str.6) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.b, i64 80
  %i.l = tail call i32 @pthread_mutex_destroy(ptr noundef %i.k) #12
  %.not5.i = icmp eq i32 %i.l, 0
  br i1 %.not5.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.destroy_gil, ptr noundef nonnull @.str.7) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.b, i64 120
  %i.n = tail call i32 @pthread_cond_destroy(ptr noundef %i.m) #12
  %.not6.i = icmp eq i32 %i.n, 0
  br i1 %.not6.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.destroy_gil, ptr noundef nonnull @.str.8) #13
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %i.b, i64 168
  %i.p = tail call i32 @pthread_mutex_destroy(ptr noundef %i.o) #12
  %.not7.i = icmp eq i32 %i.p, 0
  br i1 %.not7.i, label %destroy_gil.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.destroy_gil, ptr noundef nonnull @.str.9) #13
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
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.PyEval_AcquireLock, ptr noundef nonnull @.str.10) #13
  unreachable

_Py_EnsureFuncTstateNotNULL.exit:                 ; preds = %bb.a
  tail call fastcc void @take_gil(ptr noundef nonnull %i.b)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @take_gil(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 4 uses
  %i.a = tail call ptr @__errno_location() #14    ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7
  %i.c = tail call i32 @_PyThreadState_MustExit(ptr noundef %0) #12
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_PyThreadState_HangThread(ptr noundef %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104  ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 10 uses
  %i.h = getelementptr i8, ptr %i.g, i64 80       ; 5 uses
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef %i.h) #12
  %.not48 = icmp eq i32 %i.i, 0
  br i1 %.not48, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.take_gil, ptr noundef nonnull @.str.11) #13
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
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @_PyThread_cond_after(i64 noundef %spec.store.select, ptr noundef nonnull %1) #12
  %i.r = call i32 @pthread_cond_timedwait(ptr noundef %i.n, ptr noundef %i.h, ptr noundef nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  switch i32 %i.r, label %bb.g [
    i32 0, label %bb.q
    i32 110, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.take_gil, ptr noundef nonnull @.str.12) #13
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = load atomic i32, ptr %i.k monotonic, align 4
  %.not59 = icmp eq i32 %i.s, 0
  br i1 %.not59, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr %i.m, align 8, !tbaa !108
  %i.u = icmp eq i64 %i.t, %i.p
  br i1 %i.u, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.v = load atomic ptr, ptr %i.o monotonic, align 8 ; 2 uses
  %i.w = call i32 @_PyThreadState_MustExit(ptr noundef %0) #12
  %.not60 = icmp eq i32 %i.w, 0
  br i1 %.not60, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = call i32 @pthread_mutex_unlock(ptr noundef %i.h) #12
  %.not61 = icmp eq i32 %i.x, 0
  br i1 %.not61, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.take_gil, ptr noundef nonnull @.str.13) #13
  unreachable

bb.m:                                             ; preds = %bb.k
  %.not62 = icmp eq i32 %.067, 0
  br i1 %.not62, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr i8, ptr %i.v, i64 24
  %i.z = atomicrmw and ptr %i.y, i64 -2 seq_cst, align 8 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @_PyThreadState_HangThread(ptr noundef %0) #12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %i.aa = getelementptr i8, ptr %i.v, i64 24
  %i.ab = atomicrmw or ptr %i.aa, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.f, %bb.p, %bb.i, %bb.h
  %.1 = phi i32 [ 1, %bb.p ], [ %.067, %bb.i ], [ %.067, %bb.h ], [ %.067, %bb.f ]
  %i.ac = load atomic i32, ptr %i.k monotonic, align 4
  %.not49 = icmp eq i32 %i.ac, 0
  br i1 %.not49, label %._crit_edge, label %bb.f, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.q, %bb.e
  %i.ad = getelementptr i8, ptr %i.g, i64 168     ; 2 uses
  %i.ae = call i32 @pthread_mutex_lock(ptr noundef %i.ad) #12
  %.not50 = icmp eq i32 %i.ae, 0
  br i1 %.not50, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.take_gil, ptr noundef nonnull @.str.14) #13
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
  %i.al = call i32 @pthread_cond_signal(ptr noundef %i.ak) #12
  %.not52 = icmp eq i32 %i.al, 0
  br i1 %.not52, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.take_gil, ptr noundef nonnull @.str.15) #13
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.am = call i32 @pthread_mutex_unlock(ptr noundef %i.ad) #12
  %.not53 = icmp eq i32 %i.am, 0
  br i1 %.not53, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.take_gil, ptr noundef nonnull @.str.16) #13
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.an = call i32 @_PyThreadState_MustExit(ptr noundef %0) #12
  %.not54 = icmp eq i32 %i.an, 0
  br i1 %.not54, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ao = call i32 @pthread_mutex_unlock(ptr noundef %i.h) #12
  %.not55 = icmp eq i32 %i.ao, 0
  br i1 %.not55, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.take_gil, ptr noundef nonnull @.str.13) #13
  unreachable

bb.ab:                                            ; preds = %bb.z
  call fastcc void @drop_gil(ptr noundef %i.e, ptr noundef null, i32 noundef 1)
  call void @_PyThreadState_HangThread(ptr noundef %0) #12
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
  %i.au = call i32 @_Py_IsMainThread() #12
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
  %i.bm = call i32 @pthread_mutex_unlock(ptr noundef %i.h) #12
  %.not56 = icmp eq i32 %i.bm, 0
  br i1 %.not56, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %update_eval_breaker_for_thread.exit
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.take_gil, ptr noundef nonnull @.str.13) #13
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
define internal fastcc void @drop_gil(ptr noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 8 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16       ; 3 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil, ptr noundef nonnull @.str.17) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not16 = icmp eq i32 %2, 0
  br i1 %.not16, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  store atomic ptr %1, ptr %i.e monotonic, align 8
  %i.f = getelementptr i8, ptr %i.b, i64 80       ; 2 uses
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef %i.f) #12
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil_impl, ptr noundef nonnull @.str.11) #13
  unreachable

bb.f:                                             ; preds = %bb.d
  store atomic i32 0, ptr %i.c monotonic, align 4
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
  %i.k = tail call i32 @pthread_cond_signal(ptr noundef %i.j) #12
  %.not8.i = icmp eq i32 %i.k, 0
  br i1 %.not8.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil_impl, ptr noundef nonnull @.str.19) #13
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef %i.f) #12
  %.not9.i = icmp eq i32 %i.l, 0
  br i1 %.not9.i, label %drop_gil_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil_impl, ptr noundef nonnull @.str.13) #13
  unreachable

drop_gil_impl.exit:                               ; preds = %bb.j
  %i.m = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.n = load atomic i64, ptr %i.m monotonic, align 8
  %i.o = and i64 %i.n, 1
  %.not17 = icmp eq i64 %i.o, 0
  br i1 %.not17, label %drop_gil_impl.exit25, label %bb.l

bb.l:                                             ; preds = %drop_gil_impl.exit
  %i.p = getelementptr i8, ptr %i.b, i64 168      ; 3 uses
  %i.q = tail call i32 @pthread_mutex_lock(ptr noundef %i.p) #12
  %.not18 = icmp eq i32 %i.q, 0
  br i1 %.not18, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil, ptr noundef nonnull @.str.14) #13
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.r = load atomic ptr, ptr %i.e monotonic, align 8
  %i.s = icmp eq ptr %i.r, %1
  br i1 %i.s, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.t = atomicrmw and ptr %i.m, i64 -2 seq_cst, align 8 ; 0 uses
  %i.u = getelementptr i8, ptr %i.b, i64 120
  %i.v = tail call i32 @pthread_cond_wait(ptr noundef %i.u, ptr noundef %i.p) #12
  %.not19 = icmp eq i32 %i.v, 0
  br i1 %.not19, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil, ptr noundef nonnull @.str.18) #13
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.w = tail call i32 @pthread_mutex_unlock(ptr noundef %i.p) #12
  %.not20 = icmp eq i32 %i.w, 0
  br i1 %.not20, label %drop_gil_impl.exit25, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil, ptr noundef nonnull @.str.16) #13
  unreachable

.critedge:                                        ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.b, i64 80       ; 2 uses
  %i.y = tail call i32 @pthread_mutex_lock(ptr noundef %i.x) #12
  %.not.i21 = icmp eq i32 %i.y, 0
  br i1 %.not.i21, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil_impl, ptr noundef nonnull @.str.11) #13
  unreachable

bb.t:                                             ; preds = %.critedge
  store atomic i32 0, ptr %i.c monotonic, align 4
  %.not7.i22 = icmp eq ptr %1, null
  br i1 %.not7.i22, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.z = getelementptr i8, ptr %1, i64 36
  store i32 0, ptr %i.z, align 4, !tbaa !111
  %i.aa = getelementptr i8, ptr %1, i64 40
  store i32 0, ptr %i.aa, align 8, !tbaa !107
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ab = getelementptr i8, ptr %i.b, i64 32
  %i.ac = tail call i32 @pthread_cond_signal(ptr noundef %i.ab) #12
  %.not8.i23 = icmp eq i32 %i.ac, 0
  br i1 %.not8.i23, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil_impl, ptr noundef nonnull @.str.19) #13
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef %i.x) #12
  %.not9.i24 = icmp eq i32 %i.ad, 0
  br i1 %.not9.i24, label %drop_gil_impl.exit25, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.drop_gil_impl, ptr noundef nonnull @.str.13) #13
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
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._PyEval_AcquireLock, ptr noundef nonnull @.str.10) #13
  unreachable

_Py_EnsureFuncTstateNotNULL.exit:                 ; preds = %bb.a
  tail call fastcc void @take_gil(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_PyEval_ReleaseLock(ptr noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
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
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.PyEval_AcquireThread, ptr noundef nonnull @.str.10) #13
  unreachable

_Py_EnsureFuncTstateNotNULL.exit:                 ; preds = %bb.a
  tail call void @_PyThreadState_Attach(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PyEval_ReleaseThread(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @_PyThreadState_Detach(ptr noundef %0) #12
  ret void
}

declare void @_PyThreadState_Detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_PyEval_ReInitThreads(ptr dead_on_unwind noalias writable writeonly sret(%struct.PyStatus) align 8 captures(none) initializes((0, 32)) %0, ptr noundef %1) local_unnamed_addr #2 {
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
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %gil_created.exit.thread, label %bb.b

bb.b:                                             ; preds = %gil_created.exit
  tail call fastcc void @create_gil(ptr noundef nonnull %i.d)
  tail call fastcc void @take_gil(ptr noundef nonnull %1)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.j = getelementptr i8, ptr %i.i, i64 40
  store i8 0, ptr %i.j, align 1
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
end_hunk_0
