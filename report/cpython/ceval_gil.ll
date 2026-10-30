Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/ceval_gil?download=true
inline.NumInlined: 120
inline.NumDeleted: 49
begin_hunk_0_@_PyEval_AddPendingCall:bb.a
  %i.ab = getelementptr i8, ptr %i.aa, i64 80     ; 2 uses
  %i.ac = tail call i32 @pthread_mutex_lock(ptr noundef %i.ab) #13
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.signal_active_thread, ptr noundef nonnull @.str.11) #14
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %i.aa, i64 16
  %i.ae = load atomic i32, ptr %i.ad monotonic, align 4
  %.not8.i = icmp eq i32 %i.ae, 0
  br i1 %.not8.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr i8, ptr %i.aa, i64 8
  %i.ag = load atomic ptr, ptr %i.af monotonic, align 8 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !104
  %i.aj = icmp eq ptr %i.ai, %0
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %i.ag, i64 24
  %i.al = atomicrmw or ptr %i.ak, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.am = tail call i32 @pthread_mutex_unlock(ptr noundef %i.ab) #13
  %.not9.i = icmp eq i32 %i.am, 0
  br i1 %.not9.i, label %signal_active_thread.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.signal_active_thread, ptr noundef nonnull @.str.13) #14
  unreachable

signal_active_thread.exit:                        ; preds = %bb.k, %bb.e
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i32 -1, 1) i32 @Py_AddPendingCall(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @_PyInterpreterState_Main() #13 ; 0 uses
  %i.b = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2920), i8 0, i8 1 seq_cst seq_cst, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %_PyMutex_Lock.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2920)) #13
  br label %_PyMutex_Lock.exit.i

_PyMutex_Lock.exit.i:                             ; preds = %bb.b, %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2924), align 4, !tbaa !195
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2928), align 8, !tbaa !196
  %i.f = icmp eq i32 %i.d, %i.e                   ; 2 uses
  br i1 %i.f, label %_push_pending_call.exit.i, label %bb.c

bb.c:                                             ; preds = %_PyMutex_Lock.exit.i
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10140), align 4, !tbaa !197 ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2936), i64 %i.h ; 3 uses
  store ptr %0, ptr %i.i, align 8, !tbaa !199
  %i.j = getelementptr i8, ptr %i.i, i64 8
  store ptr %1, ptr %i.j, align 8, !tbaa !200
  %i.k = getelementptr i8, ptr %i.i, i64 16
  store i32 1, ptr %i.k, align 8, !tbaa !201
  %i.l = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2924), i32 1 seq_cst, align 4 ; 0 uses
  %i.m = add i32 %i.g, 1
  %i.n = srem i32 %i.m, 300
  store i32 %i.n, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10140), align 4, !tbaa !197
  br label %_push_pending_call.exit.i

_push_pending_call.exit.i:                        ; preds = %bb.c, %_PyMutex_Lock.exit.i
  %i.o = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2920), i8 1, i8 0 seq_cst seq_cst, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_PyEval_AddPendingCall.exit, label %bb.d

bb.d:                                             ; preds = %_push_pending_call.exit.i
  tail call void @PyMutex_Unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2920)) #13
  br label %_PyEval_AddPendingCall.exit

_PyEval_AddPendingCall.exit:                      ; preds = %_push_pending_call.exit.i, %bb.d
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 904), align 8, !tbaa !194
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %i.s = atomicrmw or ptr %i.r, i64 4 seq_cst, align 8 ; 0 uses
  %. = sext i1 %i.f to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_set_eval_breaker_bit_all(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 7376       ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202
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
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !202
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
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !209
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_unset_eval_breaker_bit_all(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 7376       ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202
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
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !202
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
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !210
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_FinishPendingCalls(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.c = tail call i32 @_Py_IsMainThread() #13
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 44
  br label %.split.preheader

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.f = tail call ptr @_PyInterpreterState_Main() #13
  %i.g = icmp eq ptr %i.e, %i.f
  %i.h = freeze i1 %i.g                           ; 2 uses
  %i.i = getelementptr i8, ptr %i.b, i64 44       ; 2 uses
  %1 = select i1 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2924), ptr inttoptr (i64 12 to ptr)
  br i1 %i.h, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %.thread, %bb.b
  %i.j = phi ptr [ %i.d, %.thread ], [ %i.i, %bb.b ]
  br label %.split

.split.us:                                        ; preds = %bb.b, %bb.d
  %i.k = tail call fastcc i32 @make_pending_calls(ptr noundef %0)
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.split.us
  %i.m = tail call ptr @_PyErr_GetRaisedException(ptr noundef %0) #13
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str, i32 noundef 1017) #13
  tail call void @_PyErr_ChainExceptions1(ptr noundef %i.m) #13
  tail call void @_PyErr_Print(ptr noundef %0) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.us
  %i.n = load atomic i32, ptr %i.i monotonic, align 4
  %i.o = load atomic i32, ptr %1 monotonic, align 4
  %i.p = add i32 %i.o, %i.n
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.split.us, label %.split11.us, !llvm.loop !211

.split:                                           ; preds = %.split.preheader, %bb.f
  %i.r = tail call fastcc i32 @make_pending_calls(ptr noundef %0)
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split
  %i.t = tail call ptr @_PyErr_GetRaisedException(ptr noundef %0) #13
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str, i32 noundef 1017) #13
  tail call void @_PyErr_ChainExceptions1(ptr noundef %i.t) #13
  tail call void @_PyErr_Print(ptr noundef %0) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.split
  %i.u = load atomic i32, ptr %i.j monotonic, align 4
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.split, label %.split11.us, !llvm.loop !211

.split11.us:                                      ; preds = %bb.d, %bb.f
  ret void
}

declare i32 @_Py_IsMainThread() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @make_pending_calls(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104  ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 32       ; 6 uses
  %i.e = getelementptr i8, ptr %i.c, i64 40       ; 6 uses
  %i.f = cmpxchg ptr %i.e, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.g = extractvalue { i8, i1 } %i.f, 1
  br i1 %i.g, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef %i.e) #13
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !212  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = atomicrmw or ptr %i.i, i64 4 seq_cst, align 8 ; 0 uses
  %i.k = getelementptr i8, ptr %0, i64 24
  %i.l = atomicrmw and ptr %i.k, i64 -5 seq_cst, align 8 ; 0 uses
  %i.m = cmpxchg ptr %i.e, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.n = extractvalue { i8, i1 } %i.m, 1
  br i1 %i.n, label %_PyMutex_Unlock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @PyMutex_Unlock(ptr noundef %i.e) #13
  br label %_PyMutex_Unlock.exit

bb.e:                                             ; preds = %_PyMutex_Lock.exit
  store ptr %0, ptr %i.d, align 8, !tbaa !212
  %i.o = cmpxchg ptr %i.e, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_PyMutex_Unlock.exit31, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @PyMutex_Unlock(ptr noundef %i.e) #13
  br label %_PyMutex_Unlock.exit31

_PyMutex_Unlock.exit31:                           ; preds = %bb.e, %bb.f
  %i.q = getelementptr i8, ptr %0, i64 24         ; 5 uses
  %i.r = atomicrmw and ptr %i.q, i64 -5 seq_cst, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.s = call fastcc i32 @_make_pending_calls(ptr noundef nonnull %i.d, ptr noundef %i.a)
  %.not27 = icmp eq i32 %i.s, 0
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_PyMutex_Unlock.exit31
  store ptr null, ptr %i.d, align 8, !tbaa !212
  %i.t = atomicrmw or ptr %i.q, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.q

bb.h:                                             ; preds = %_PyMutex_Unlock.exit31
  %i.u = load i32, ptr %i.a, align 4, !tbaa !10
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = atomicrmw or ptr %i.q, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = tail call i32 @_Py_IsMainThread() #13
  %.not28 = icmp eq i32 %i.x, 0
  br i1 %.not28, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = tail call ptr @_PyInterpreterState_Main() #13
  %.not32 = icmp eq ptr %i.c, %i.y
  br i1 %.not32, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.z = call fastcc i32 @_make_pending_calls(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 2912), ptr noundef %i.a)
  %.not30 = icmp eq i32 %i.z, 0
  br i1 %.not30, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.d, align 8, !tbaa !212
  %i.aa = atomicrmw or ptr %i.q, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !10
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = atomicrmw or ptr %i.q, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.k, %bb.j
  store ptr null, ptr %i.d, align 8, !tbaa !212
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m, %bb.g
  %.0 = phi i32 [ -1, %bb.g ], [ -1, %bb.m ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %bb.d, %bb.c, %bb.q
  %.1 = phi i32 [ %.0, %bb.q ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.1
}

declare ptr @_PyErr_GetRaisedException(ptr noundef) local_unnamed_addr #3

declare void @_PyErr_BadInternalCall(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_PyErr_ChainExceptions1(ptr noundef) local_unnamed_addr #3

declare void @_PyErr_Print(ptr noundef) local_unnamed_addr #3

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
end_hunk_0
