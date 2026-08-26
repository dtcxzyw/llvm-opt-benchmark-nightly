Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/pystate?download=true
inline.NumInlined: 214
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@init_interpreter:bb.a
bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 8, !tbaa !191
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @__func__.init_interpreter, ptr %i.d, align 8, !tbaa !198
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.158, ptr %i.e, align 8, !tbaa !199
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !200
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.g, align 4
  br label %bb.s

.preheader3:                                      ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 7296
  store i64 0, ptr %i.h, align 8, !tbaa !205
  %i.i = getelementptr i8, ptr %1, i64 7376
  store ptr @_PyRuntime, ptr %i.i, align 8, !tbaa !206
  %i.j = getelementptr i8, ptr %1, i64 7272
  store i64 %2, ptr %i.j, align 8, !tbaa !207
  %i.k = getelementptr i8, ptr %1, i64 7280
  store i64 0, ptr %i.k, align 8, !tbaa !208
  %i.l = getelementptr i8, ptr %1, i64 7264
  store ptr %3, ptr %i.l, align 8, !tbaa !209
  %i.m = getelementptr i8, ptr %1, i64 225072
  %i.n = getelementptr i8, ptr %1, i64 7344
  store ptr %i.m, ptr %i.n, align 8, !tbaa !210
  tail call void @_PyEval_InitState(ptr noundef nonnull %1) #19
  %i.o = getelementptr i8, ptr %1, i64 7400
  tail call void @_PyGC_InitState(ptr noundef %i.o) #19
  %i.p = getelementptr i8, ptr %1, i64 8080
  tail call void @PyConfig_InitPythonConfig(ptr noundef %i.p) #19
  tail call void @_PyType_InitCache(ptr noundef nonnull %1) #19
  %i.q = getelementptr i8, ptr %1, i64 80008      ; 3 uses
  store ptr %i.q, ptr %i.q, align 8, !tbaa !211
  %i.r = getelementptr i8, ptr %1, i64 80016
  store ptr %i.q, ptr %i.r, align 8, !tbaa !212
  %i.s = getelementptr i8, ptr %1, i64 10928      ; 3 uses
  store ptr %i.s, ptr %i.s, align 8, !tbaa !211
  %i.t = getelementptr i8, ptr %1, i64 10936
  store ptr %i.s, ptr %i.t, align 8, !tbaa !212
  %i.u = getelementptr i8, ptr %1, i64 10944
  store i8 0, ptr %i.u, align 8, !tbaa !213
  %i.v = getelementptr i8, ptr %1, i64 223456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false), !tbaa !213
  %i.w = getelementptr i8, ptr %1, i64 223496
  %i.x = getelementptr i8, ptr %1, i64 224776
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1216) %i.w, i8 0, i64 1216, i1 false), !tbaa !214
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.x, i8 0, i64 64, i1 false), !tbaa !215
  %i.y = getelementptr i8, ptr %1, i64 8040
  store i64 0, ptr %i.y, align 8, !tbaa !216
  %i.z = getelementptr i8, ptr %1, i64 223384
  store i8 0, ptr %i.z, align 8, !tbaa !217
  %i.aa = getelementptr i8, ptr %1, i64 223385
  store i8 0, ptr %i.aa, align 1, !tbaa !218
  %i.ab = getelementptr i8, ptr %1, i64 223400
  %i.ac = getelementptr i8, ptr %1, i64 223432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store i64 1000, ptr %i.ac, align 8, !tbaa !219
  %i.ad = tail call ptr @Py_GETENV(ptr noundef nonnull @.str.159) #19 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %is_env_enabled.exit.thread, label %is_env_enabled.exit

is_env_enabled.exit:                              ; preds = %.preheader3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !213 ; 2 uses
  %.not5.i = icmp ne i8 %i.ae, 0
  %i.af = icmp ne i8 %i.ae, 48
  %spec.select.i = and i1 %.not5.i, %i.af
  %cond.fr = freeze i1 %spec.select.i
  %spec.select = select i1 %cond.fr, i16 63, i16 4000
  br label %is_env_enabled.exit.thread

is_env_enabled.exit.thread:                       ; preds = %is_env_enabled.exit, %.preheader3
  %i.ag = phi i16 [ 4000, %.preheader3 ], [ %spec.select, %is_env_enabled.exit ] ; 2 uses
  %i.ah = getelementptr i8, ptr %1, i64 223386    ; 2 uses
  store i16 %i.ag, ptr %i.ah, align 2, !tbaa !220
  %i.ai = tail call ptr @Py_GETENV(ptr noundef nonnull @.str.160) #19 ; 3 uses
  %.not.i57 = icmp eq ptr %i.ai, null
  br i1 %.not.i57, label %init_policy.exit, label %bb.c

bb.c:                                             ; preds = %is_env_enabled.exit.thread
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !213
  %.not12.i = icmp eq i8 %i.aj, 0
  br i1 %.not12.i, label %init_policy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.ai, ptr noundef null, i32 noundef 10) #19, !inline_history !221 ; 2 uses
  %i.al = add i64 %i.ak, -8192
  %or.cond.i = icmp ult i64 %i.al, -8191
  br i1 %or.cond.i, label %init_policy.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = trunc nuw nsw i64 %i.ak to i16
  store i16 %i.am, ptr %i.ah, align 2, !tbaa !220
  br label %init_policy.exit

init_policy.exit:                                 ; preds = %is_env_enabled.exit.thread, %bb.c, %bb.d, %bb.e
  %i.an = getelementptr i8, ptr %1, i64 223388    ; 2 uses
  store i16 6, ptr %i.an, align 4, !tbaa !220
  %i.ao = tail call ptr @Py_GETENV(ptr noundef nonnull @.str.161) #19 ; 3 uses
  %.not.i58 = icmp eq ptr %i.ao, null
  br i1 %.not.i58, label %init_policy.exit63, label %bb.f

bb.f:                                             ; preds = %init_policy.exit
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !213
  %.not12.i59 = icmp eq i8 %i.ap, 0
  br i1 %.not12.i59, label %init_policy.exit63, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.ao, ptr noundef null, i32 noundef 10) #19, !inline_history !221 ; 2 uses
  %or.cond.i62 = icmp ugt i64 %i.aq, 6
  br i1 %or.cond.i62, label %init_policy.exit63, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = trunc nuw nsw i64 %i.aq to i16
  store i16 %i.ar, ptr %i.an, align 4, !tbaa !220
  br label %init_policy.exit63

init_policy.exit63:                               ; preds = %init_policy.exit, %bb.f, %bb.g, %bb.h
  %i.as = getelementptr i8, ptr %1, i64 223390    ; 2 uses
  store i16 %i.ag, ptr %i.as, align 2, !tbaa !220
  %i.at = tail call ptr @Py_GETENV(ptr noundef nonnull @.str.162) #19 ; 3 uses
  %.not.i64 = icmp eq ptr %i.at, null
  br i1 %.not.i64, label %init_policy.exit69, label %bb.i

bb.i:                                             ; preds = %init_policy.exit63
  %i.au = load i8, ptr %i.at, align 1, !tbaa !213
  %.not12.i65 = icmp eq i8 %i.au, 0
  br i1 %.not12.i65, label %init_policy.exit69, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.at, ptr noundef null, i32 noundef 10) #19, !inline_history !221 ; 2 uses
  %i.aw = add i64 %i.av, -8192
  %or.cond.i68 = icmp ult i64 %i.aw, -8191
  br i1 %or.cond.i68, label %init_policy.exit69, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = trunc nuw nsw i64 %i.av to i16
  store i16 %i.ax, ptr %i.as, align 2, !tbaa !220
  br label %init_policy.exit69

init_policy.exit69:                               ; preds = %init_policy.exit63, %bb.i, %bb.j, %bb.k
  %i.ay = getelementptr i8, ptr %1, i64 223392    ; 2 uses
  store i16 6, ptr %i.ay, align 8, !tbaa !220
  %i.az = tail call ptr @Py_GETENV(ptr noundef nonnull @.str.163) #19 ; 3 uses
  %.not.i70 = icmp eq ptr %i.az, null
  br i1 %.not.i70, label %init_policy.exit75, label %bb.l

bb.l:                                             ; preds = %init_policy.exit69
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !213
  %.not12.i71 = icmp eq i8 %i.ba, 0
  br i1 %.not12.i71, label %init_policy.exit75, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.az, ptr noundef null, i32 noundef 10) #19, !inline_history !221 ; 2 uses
  %or.cond.i74 = icmp ugt i64 %i.bb, 6
  br i1 %or.cond.i74, label %init_policy.exit75, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = trunc nuw nsw i64 %i.bb to i16
  store i16 %i.bc, ptr %i.ay, align 8, !tbaa !220
  br label %init_policy.exit75

init_policy.exit75:                               ; preds = %init_policy.exit69, %bb.l, %bb.m, %bb.n
  %i.bd = tail call ptr @Py_GETENV(ptr noundef nonnull @.str.164) #19 ; 2 uses
  %.not.i76 = icmp eq ptr %i.bd, null
  br i1 %.not.i76, label %is_env_enabled.exit79, label %bb.o

bb.o:                                             ; preds = %init_policy.exit75
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !213 ; 2 uses
  %.not5.i77 = icmp eq i8 %i.be, 0
  %i.bf = icmp eq i8 %i.be, 48
  %spec.select.i78.not = or i1 %.not5.i77, %i.bf
  %i.bg = zext i1 %spec.select.i78.not to i8
  br label %is_env_enabled.exit79

is_env_enabled.exit79:                            ; preds = %init_policy.exit75, %bb.o
  %i.bh = phi i8 [ %i.bg, %bb.o ], [ 1, %init_policy.exit75 ]
  %i.bi = getelementptr i8, ptr %1, i64 223394
  store i8 %i.bh, ptr %i.bi, align 2, !tbaa !222
  %i.bj = tail call ptr @Py_GETENV(ptr noundef nonnull @.str.165) #19 ; 2 uses
  %.not.i80 = icmp eq ptr %i.bj, null
  br i1 %.not.i80, label %is_env_disabled.exit, label %bb.p

bb.p:                                             ; preds = %is_env_enabled.exit79
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !213
  %i.bl = icmp ne i8 %i.bk, 48
  %i.bm = zext i1 %i.bl to i8
  br label %is_env_disabled.exit

is_env_disabled.exit:                             ; preds = %is_env_enabled.exit79, %bb.p
  %i.bn = phi i8 [ 1, %is_env_enabled.exit79 ], [ %i.bm, %bb.p ]
  %i.bo = getelementptr i8, ptr %1, i64 223395
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !223
  %.not56 = icmp eq ptr %1, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119552)
  br i1 %.not56, label %bb.r, label %bb.q

bb.q:                                             ; preds = %is_env_disabled.exit
  %i.bp = getelementptr i8, ptr %1, i64 11896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2432) %i.bp, i8 0, i64 2432, i1 false)
  %4 = getelementptr i8, ptr %1, i64 12024
  %.sroa.2.0..sroa_idx = getelementptr i8, ptr %1, i64 14328
  store ptr %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !224
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %is_env_disabled.exit
  store i32 1, ptr %i.a, align 8, !tbaa !204
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyInterpreterState_New() local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %0 = alloca %struct.PyStatus, align 8           ; 5 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @_PyInterpreterState_New(ptr dead_on_unwind nonnull writable sret(%struct.PyStatus) align 8 %0, ptr noundef %i.c, ptr noundef nonnull %i.a)
  %i.d = load i32, ptr %0, align 8, !tbaa !191
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Py_ExitStatusException(ptr noundef nonnull byval(%struct.PyStatus) align 8 %0) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %i.e
}

; Function Attrs: noreturn
declare void @Py_ExitStatusException(ptr noundef byval(%struct.PyStatus) align 8) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @PyInterpreterState_Clear(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  tail call void @_PyImport_ClearCore(ptr noundef %0) #19
  tail call fastcc void @interpreter_clear(ptr noundef %0, ptr noundef %i.b)
  ret void
}

declare void @_PyImport_ClearCore(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @interpreter_clear(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 7376       ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206
  %i.c = tail call i32 (ptr, ptr, ptr, ...) @_PySys_Audit(ptr noundef %1, ptr noundef nonnull @.str.166, ptr noundef null) #19
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_Clear(ptr noundef %1) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !206
  %i.f = getelementptr i8, ptr %i.e, i64 864      ; 2 uses
  %i.g = cmpxchg ptr %i.f, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.h = extractvalue { i8, i1 } %i.g, 1
  br i1 %i.h, label %PyMutex_LockFlags.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @_PyMutex_LockTimed(ptr noundef %i.f, i64 noundef -1, i32 noundef 0) #19 ; 0 uses
  br label %PyMutex_LockFlags.exit

PyMutex_LockFlags.exit:                           ; preds = %bb.c, %bb.d
  %i.j = getelementptr i8, ptr %0, i64 7336
  %.0131198 = load ptr, ptr %i.j, align 8, !tbaa !11 ; 2 uses
  %.not199 = icmp eq ptr %.0131198, null
  br i1 %.not199, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %PyMutex_LockFlags.exit
  %i.k = getelementptr i8, ptr %i.b, i64 864      ; 4 uses
  br label %bb.f

._crit_edge:                                      ; preds = %PyMutex_LockFlags.exit193, %PyMutex_LockFlags.exit
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !206
  %i.m = getelementptr i8, ptr %i.l, i64 864      ; 2 uses
  %i.n = cmpxchg ptr %i.m, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.o = extractvalue { i8, i1 } %i.n, 1
  br i1 %i.o, label %_PyMutex_Unlock.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  tail call void @PyMutex_Unlock(ptr noundef %i.m) #19
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %._crit_edge, %bb.e
  %i.p = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !225
  %i.r = icmp eq ptr %i.q, %0
  br i1 %i.r, label %bb.i, label %bb.j

bb.f:                                             ; preds = %.lr.ph, %PyMutex_LockFlags.exit193
  %.0131200 = phi ptr [ %.0131198, %.lr.ph ], [ %.0131, %PyMutex_LockFlags.exit193 ] ; 2 uses
  %i.s = cmpxchg ptr %i.k, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.t = extractvalue { i8, i1 } %i.s, 1
  br i1 %i.t, label %_PyMutex_Unlock.exit192, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @PyMutex_Unlock(ptr noundef %i.k) #19
  br label %_PyMutex_Unlock.exit192

_PyMutex_Unlock.exit192:                          ; preds = %bb.f, %bb.g
  tail call void @PyThreadState_Clear(ptr noundef nonnull %.0131200)
  %i.u = cmpxchg ptr %i.k, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.v = extractvalue { i8, i1 } %i.u, 1
  br i1 %i.v, label %PyMutex_LockFlags.exit193, label %bb.h

bb.h:                                             ; preds = %_PyMutex_Unlock.exit192
  %i.w = tail call i32 @_PyMutex_LockTimed(ptr noundef %i.k, i64 noundef -1, i32 noundef 0) #19 ; 0 uses
  br label %PyMutex_LockFlags.exit193

PyMutex_LockFlags.exit193:                        ; preds = %_PyMutex_Unlock.exit192, %bb.h
  %i.x = getelementptr i8, ptr %.0131200, i64 8
  %.0131 = load ptr, ptr %i.x, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq ptr %.0131, null
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !226

bb.i:                                             ; preds = %_PyMutex_Unlock.exit
  %i.y = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = and i32 %i.z, -65
  store i32 %i.aa, ptr %i.y, align 8
  br label %bb.j

bb.j:                                             ; preds = %_PyMutex_Unlock.exit, %bb.i
  %i.ab = getelementptr i8, ptr %0, i64 10960     ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !214 ; 4 uses
  %.not149 = icmp eq ptr %i.ac, null
  br i1 %.not149, label %Py_DECREF.exit181, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.ab, align 8, !tbaa !214
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !213 ; 2 uses
  %.not.i180 = icmp sgt i32 %i.ad, -1
  br i1 %.not.i180, label %bb.l, label %Py_DECREF.exit181

bb.l:                                             ; preds = %bb.k
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !213
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %Py_DECREF.exit181

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ac) #19
  br label %Py_DECREF.exit181

Py_DECREF.exit181:                                ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  store i64 0, ptr %0, align 8, !tbaa !228
  %i.ag = getelementptr i8, ptr %1, i64 24
  store atomic i64 0, ptr %i.ag seq_cst, align 8
  %i.ah = getelementptr i8, ptr %0, i64 223456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !tbaa !213
  %i.ai = getelementptr i8, ptr %0, i64 223496
  br label %bb.ap

.preheader196.1:                                  ; preds = %Py_DECREF.exit179
  %i.aj = getelementptr i8, ptr %0, i64 223648
  br label %bb.n

bb.n:                                             ; preds = %Py_DECREF.exit179.1, %.preheader196.1
  %indvars.iv.1 = phi i64 [ 0, %.preheader196.1 ], [ %indvars.iv.next.1, %Py_DECREF.exit179.1 ] ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv.1 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !214 ; 4 uses
  %.not161.1 = icmp eq ptr %i.al, null
  br i1 %.not161.1, label %Py_DECREF.exit179.1, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %i.ak, align 8, !tbaa !214
  %i.am = load i32, ptr %i.al, align 8, !tbaa !213 ; 2 uses
  %.not.i178.1 = icmp sgt i32 %i.am, -1
  br i1 %.not.i178.1, label %bb.p, label %Py_DECREF.exit179.1

bb.p:                                             ; preds = %bb.o
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !213
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.q, label %Py_DECREF.exit179.1

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.al) #19
  br label %Py_DECREF.exit179.1

Py_DECREF.exit179.1:                              ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, 19
  br i1 %exitcond.1.not, label %.preheader196.2, label %bb.n, !llvm.loop !229

end_hunk_0
