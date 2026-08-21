inline.NumInlined: 214
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_PyInterpreterState_New:bb.a
bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %0, align 8, !tbaa !191
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @__func__._PyInterpreterState_New, ptr %i.d, align 8, !tbaa !198
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.2, ptr %i.e, align 8, !tbaa !199
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !200
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.g, align 4
  br label %bb.o

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 864), i8 0, i8 1 seq_cst seq_cst, align 1
  %i.i = extractvalue { i8, i1 } %i.h, 1
  br i1 %i.i, label %PyMutex_LockFlags.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @_PyMutex_LockTimed(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 864), i64 noundef -1, i32 noundef 0) #19 ; 0 uses
  br label %PyMutex_LockFlags.exit

PyMutex_LockFlags.exit:                           ; preds = %bb.d, %bb.e
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 888), align 8, !tbaa !196 ; 4 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 888), align 8, !tbaa !196
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 872), align 8, !tbaa !201 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.split, label %bb.f

.split:                                           ; preds = %PyMutex_LockFlags.exit
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119552), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 880), align 8, !tbaa !202
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119552), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 872), align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call fastcc void @init_interpreter(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119552), i64 noundef %i.k, ptr noundef null)
  br label %bb.h

bb.f:                                             ; preds = %PyMutex_LockFlags.exit
  %i.o = tail call ptr @PyMem_RawCalloc(i64 noundef 1, i64 noundef 226135) #19 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %alloc_interpreter.exit.thread, label %alloc_interpreter.exit

alloc_interpreter.exit:                           ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %i.r, 7
  %i.t = and i64 %i.s, -8                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  store ptr %i.o, ptr %i.v, align 8, !tbaa !14
  %i.w = icmp eq i64 %i.t, 0
  br i1 %i.w, label %alloc_interpreter.exit.thread, label %bb.g

bb.g:                                             ; preds = %alloc_interpreter.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(226120) %i.u, ptr noundef nonnull align 8 dereferenceable(226120) getelementptr inbounds nuw (i8, ptr @initial, i64 119552), i64 226120, i1 false)
  %i.x = icmp slt i64 %i.k, 0
  br i1 %i.x, label %alloc_interpreter.exit.thread, label %.split45

.split45:                                         ; preds = %bb.g
  store ptr %i.u, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 872), align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call fastcc void @init_interpreter(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull %i.u, i64 noundef %i.k, ptr noundef nonnull %i.m)
  br label %bb.h

bb.h:                                             ; preds = %.split45, %.split
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119552), %.split ], [ %i.u, %.split45 ] ; 2 uses
  %i.y = load <2 x i32>, ptr %3, align 8
  %.sroa.08.0.copyload = load i32, ptr %3, align 8, !tbaa !7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !194
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !194
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load <2 x i32>, ptr %.sroa.13.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.not51 = icmp eq i32 %.sroa.08.0.copyload, 0
  br i1 %.not51, label %bb.i, label %alloc_interpreter.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.aa = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 864), i8 1, i8 0 seq_cst seq_cst, align 1
  %i.ab = extractvalue { i8, i1 } %i.aa, 1
  br i1 %i.ab, label %_PyMutex_Unlock.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @PyMutex_Unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 864)) #19
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %bb.i, %bb.j
  store ptr %.0, ptr %2, align 8, !tbaa !197
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.o

alloc_interpreter.exit.thread:                    ; preds = %bb.f, %bb.g, %alloc_interpreter.exit, %bb.h
  %.sroa.9.0 = phi ptr [ %.sroa.9.0.copyload, %bb.h ], [ @__func__._PyInterpreterState_New, %alloc_interpreter.exit ], [ @__func__._PyInterpreterState_New, %bb.g ], [ @__func__._PyInterpreterState_New, %bb.f ]
  %.sroa.11.0 = phi ptr [ %.sroa.11.0.copyload, %bb.h ], [ @.str.3, %alloc_interpreter.exit ], [ @.str.4, %bb.g ], [ @.str.3, %bb.f ]
  %.1 = phi ptr [ %.0, %bb.h ], [ null, %alloc_interpreter.exit ], [ %i.u, %bb.g ], [ null, %bb.f ] ; 5 uses
  %i.ac = phi <2 x i32> [ %i.y, %bb.h ], [ <i32 1, i32 0>, %alloc_interpreter.exit ], [ <i32 1, i32 0>, %bb.g ], [ <i32 1, i32 0>, %bb.f ]
  %i.ad = phi <2 x i32> [ %i.z, %bb.h ], [ zeroinitializer, %alloc_interpreter.exit ], [ zeroinitializer, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.ae = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 864), i8 1, i8 0 seq_cst seq_cst, align 1
  %i.af = extractvalue { i8, i1 } %i.ae, 1
  br i1 %i.af, label %_PyMutex_Unlock.exit53, label %bb.k

bb.k:                                             ; preds = %alloc_interpreter.exit.thread
  tail call void @PyMutex_Unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 864)) #19
  br label %_PyMutex_Unlock.exit53

_PyMutex_Unlock.exit53:                           ; preds = %alloc_interpreter.exit.thread, %bb.k
  %.not52 = icmp eq ptr %.1, null
  %.not.i = icmp eq ptr %.1, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119552)
  %or.cond = select i1 %.not52, i1 true, i1 %.not.i
  br i1 %or.cond, label %free_interpreter.exit, label %bb.l

bb.l:                                             ; preds = %_PyMutex_Unlock.exit53
  %i.ag = tail call zeroext i1 @_PyMem_obmalloc_state_on_heap(ptr noundef nonnull %.1) #19
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr i8, ptr %.1, i64 10952    ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !203
  tail call void @PyMem_RawFree(ptr noundef %i.ai) #19
  store ptr null, ptr %i.ah, align 8, !tbaa !203
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aj = getelementptr i8, ptr %.1, i64 -8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !14
  tail call void @PyMem_RawFree(ptr noundef %i.ak) #19
  br label %free_interpreter.exit

free_interpreter.exit:                            ; preds = %bb.n, %_PyMutex_Unlock.exit53
  store <2 x i32> %i.ac, ptr %0, align 8
  %.sroa.9.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0, ptr %.sroa.9.0..sroa_idx12, align 8, !tbaa !194
  %.sroa.11.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.11.0, ptr %.sroa.11.0..sroa_idx14, align 8, !tbaa !194
  %.sroa.13.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i32> %i.ad, ptr %.sroa.13.0..sroa_idx16, align 8
  br label %bb.o

bb.o:                                             ; preds = %_PyMutex_Unlock.exit, %free_interpreter.exit, %bb.c
  ret void
}

declare i32 @_PySys_Audit(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @init_interpreter(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 32)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 7304       ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !204
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader3, label %bb.b

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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.v, i8 0, i64 16, i1 false), !tbaa !213
  %i.w = getelementptr i8, ptr %1, i64 224776
  %scevgep9 = getelementptr i8, ptr %1, i64 223496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1216) %scevgep9, i8 0, i64 1216, i1 false), !tbaa !214
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, i8 0, i64 64, i1 false), !tbaa !215
  %i.x = getelementptr i8, ptr %1, i64 8040
  store i64 0, ptr %i.x, align 8, !tbaa !216
  %i.y = getelementptr i8, ptr %1, i64 223384
  store i8 0, ptr %i.y, align 8, !tbaa !217
  %i.z = getelementptr i8, ptr %1, i64 223385
  store i8 0, ptr %i.z, align 1, !tbaa !218
  %i.aa = getelementptr i8, ptr %1, i64 223400
  %i.ab = getelementptr i8, ptr %1, i64 223432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store i64 1000, ptr %i.ab, align 8, !tbaa !219
  %i.ac = tail call ptr @Py_GETENV(ptr noundef nonnull @.str.159) #19 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %is_env_enabled.exit.thread, label %is_env_enabled.exit

is_env_enabled.exit:                              ; preds = %.preheader3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !213 ; 2 uses
  %.not5.i = icmp ne i8 %i.ad, 0
  %i.ae = icmp ne i8 %i.ad, 48
  %spec.select.i = and i1 %.not5.i, %i.ae
  %cond.fr = freeze i1 %spec.select.i
  %spec.select = select i1 %cond.fr, i16 63, i16 4000
  br label %is_env_enabled.exit.thread

is_env_enabled.exit.thread:                       ; preds = %is_env_enabled.exit, %.preheader3
  %i.af = phi i16 [ 4000, %.preheader3 ], [ %spec.select, %is_env_enabled.exit ] ; 2 uses
  %i.ag = getelementptr i8, ptr %1, i64 223386    ; 2 uses
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !220
  %i.ah = tail call ptr @Py_GETENV(ptr noundef nonnull @.str.160) #19 ; 3 uses
  %.not.i57 = icmp eq ptr %i.ah, null
  br i1 %.not.i57, label %init_policy.exit, label %bb.c

bb.c:                                             ; preds = %is_env_enabled.exit.thread
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !213
  %.not12.i = icmp eq i8 %i.ai, 0
  br i1 %.not12.i, label %init_policy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.ah, ptr noundef null, i32 noundef 10) #19, !inline_history !221 ; 2 uses
  %i.ak = add i64 %i.aj, -8192
  %or.cond.i = icmp ult i64 %i.ak, -8191
  br i1 %or.cond.i, label %init_policy.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = trunc nuw nsw i64 %i.aj to i16
  store i16 %i.al, ptr %i.ag, align 2, !tbaa !220
  br label %init_policy.exit

init_policy.exit:                                 ; preds = %is_env_enabled.exit.thread, %bb.c, %bb.d, %bb.e
  %i.am = getelementptr i8, ptr %1, i64 223388    ; 2 uses
  store i16 6, ptr %i.am, align 4, !tbaa !220
  %i.an = tail call ptr @Py_GETENV(ptr noundef nonnull @.str.161) #19 ; 3 uses
  %.not.i58 = icmp eq ptr %i.an, null
  br i1 %.not.i58, label %init_policy.exit63, label %bb.f

bb.f:                                             ; preds = %init_policy.exit
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !213
  %.not12.i59 = icmp eq i8 %i.ao, 0
  br i1 %.not12.i59, label %init_policy.exit63, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.an, ptr noundef null, i32 noundef 10) #19, !inline_history !221 ; 2 uses
  %or.cond.i62 = icmp ugt i64 %i.ap, 6
  br i1 %or.cond.i62, label %init_policy.exit63, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = trunc nuw nsw i64 %i.ap to i16
  store i16 %i.aq, ptr %i.am, align 4, !tbaa !220
  br label %init_policy.exit63

init_policy.exit63:                               ; preds = %init_policy.exit, %bb.f, %bb.g, %bb.h
  %i.ar = getelementptr i8, ptr %1, i64 223390    ; 2 uses
  store i16 %i.af, ptr %i.ar, align 2, !tbaa !220
  %i.as = tail call ptr @Py_GETENV(ptr noundef nonnull @.str.162) #19 ; 3 uses
  %.not.i64 = icmp eq ptr %i.as, null
  br i1 %.not.i64, label %init_policy.exit69, label %bb.i

bb.i:                                             ; preds = %init_policy.exit63
  %i.at = load i8, ptr %i.as, align 1, !tbaa !213
  %.not12.i65 = icmp eq i8 %i.at, 0
  br i1 %.not12.i65, label %init_policy.exit69, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.as, ptr noundef null, i32 noundef 10) #19, !inline_history !221 ; 2 uses
  %i.av = add i64 %i.au, -8192
  %or.cond.i68 = icmp ult i64 %i.av, -8191
  br i1 %or.cond.i68, label %init_policy.exit69, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = trunc nuw nsw i64 %i.au to i16
  store i16 %i.aw, ptr %i.ar, align 2, !tbaa !220
  br label %init_policy.exit69

init_policy.exit69:                               ; preds = %init_policy.exit63, %bb.i, %bb.j, %bb.k
  %i.ax = getelementptr i8, ptr %1, i64 223392    ; 2 uses
  store i16 6, ptr %i.ax, align 8, !tbaa !220
  %i.ay = tail call ptr @Py_GETENV(ptr noundef nonnull @.str.163) #19 ; 3 uses
  %.not.i70 = icmp eq ptr %i.ay, null
  br i1 %.not.i70, label %init_policy.exit75, label %bb.l

bb.l:                                             ; preds = %init_policy.exit69
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !213
  %.not12.i71 = icmp eq i8 %i.az, 0
  br i1 %.not12.i71, label %init_policy.exit75, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.ay, ptr noundef null, i32 noundef 10) #19, !inline_history !221 ; 2 uses
  %or.cond.i74 = icmp ugt i64 %i.ba, 6
  br i1 %or.cond.i74, label %init_policy.exit75, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = trunc nuw nsw i64 %i.ba to i16
  store i16 %i.bb, ptr %i.ax, align 8, !tbaa !220
  br label %init_policy.exit75

init_policy.exit75:                               ; preds = %init_policy.exit69, %bb.l, %bb.m, %bb.n
  %i.bc = tail call ptr @Py_GETENV(ptr noundef nonnull @.str.164) #19 ; 2 uses
  %.not.i76 = icmp eq ptr %i.bc, null
  br i1 %.not.i76, label %is_env_enabled.exit79, label %bb.o

bb.o:                                             ; preds = %init_policy.exit75
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !213 ; 2 uses
  %.not5.i77 = icmp eq i8 %i.bd, 0
  %i.be = icmp eq i8 %i.bd, 48
  %spec.select.i78.not = or i1 %.not5.i77, %i.be
  %i.bf = zext i1 %spec.select.i78.not to i8
  br label %is_env_enabled.exit79

is_env_enabled.exit79:                            ; preds = %init_policy.exit75, %bb.o
  %i.bg = phi i8 [ %i.bf, %bb.o ], [ 1, %init_policy.exit75 ]
  %i.bh = getelementptr i8, ptr %1, i64 223394
  store i8 %i.bg, ptr %i.bh, align 2, !tbaa !222
  %i.bi = tail call ptr @Py_GETENV(ptr noundef nonnull @.str.165) #19 ; 2 uses
  %.not.i80 = icmp eq ptr %i.bi, null
  br i1 %.not.i80, label %is_env_disabled.exit, label %bb.p

bb.p:                                             ; preds = %is_env_enabled.exit79
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !213
  %i.bk = icmp ne i8 %i.bj, 48
  %i.bl = zext i1 %i.bk to i8
  br label %is_env_disabled.exit

is_env_disabled.exit:                             ; preds = %is_env_enabled.exit79, %bb.p
  %i.bm = phi i8 [ 1, %is_env_enabled.exit79 ], [ %i.bl, %bb.p ]
  %i.bn = getelementptr i8, ptr %1, i64 223395
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !223
  %.not56 = icmp eq ptr %1, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119552)
  br i1 %.not56, label %bb.r, label %bb.q

bb.q:                                             ; preds = %is_env_disabled.exit
  %i.bo = getelementptr i8, ptr %1, i64 11896
  %i.bp = getelementptr i8, ptr %1, i64 12024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2432) %i.bo, i8 0, i64 2432, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr i8, ptr %1, i64 14328
  store ptr %i.bp, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !224
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
end_hunk_0
