inline.NumInlined: 75
inline.NumDeleted: 25
begin_hunk_0_@setup_trace_callbacks:bb.a
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %set_callbacks.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.b, i64 16
  store ptr @sys_trace_throw, ptr %i.d, align 8, !tbaa !111
  %i.e = getelementptr i8, ptr %i.b, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !113
  %i.f = tail call ptr @_PyMonitoring_RegisterCallback(i32 noundef 7, i32 noundef 14, ptr noundef nonnull %i.b) #4 ; 4 uses
  %.not.i15.i = icmp eq ptr %i.f, null
  br i1 %.not.i15.i, label %Py_XDECREF.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i.i.i, label %bb.e, label %Py_XDECREF.exit.i

bb.e:                                             ; preds = %bb.d
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !36
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %Py_XDECREF.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #4
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.j = load i32, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %Py_XDECREF.exit.i
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.b, align 8, !tbaa !36
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #4
  br label %bb.i

bb.i:                                             ; preds = %Py_XDECREF.exit.i, %bb.g, %bb.h
  %i.m = tail call ptr @_PyObject_New(ptr noundef nonnull @_PyLegacyEventHandler_Type) #4 ; 7 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %set_callbacks.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr i8, ptr %i.m, i64 16
  store ptr @sys_trace_return, ptr %i.o, align 8, !tbaa !111
  %i.p = getelementptr i8, ptr %i.m, i64 24
  store i32 3, ptr %i.p, align 8, !tbaa !113
  %i.q = tail call ptr @_PyMonitoring_RegisterCallback(i32 noundef 7, i32 noundef 2, ptr noundef nonnull %i.m) #4 ; 4 uses
  %.not.i15.i9 = icmp eq ptr %i.q, null
  br i1 %.not.i15.i9, label %Py_XDECREF.exit.i11, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = load i32, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i10 = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i.i10, label %bb.l, label %Py_XDECREF.exit.i11

bb.l:                                             ; preds = %bb.k
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !36
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %Py_XDECREF.exit.i11

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #4
  br label %Py_XDECREF.exit.i11

Py_XDECREF.exit.i11:                              ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.u = load i32, ptr %i.m, align 8, !tbaa !36   ; 2 uses
  %.not.i.i12 = icmp sgt i32 %i.u, -1
  br i1 %.not.i.i12, label %bb.n, label %bb.p

bb.n:                                             ; preds = %Py_XDECREF.exit.i11
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.m, align 8, !tbaa !36
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.m) #4
  br label %bb.p

bb.p:                                             ; preds = %Py_XDECREF.exit.i11, %bb.n, %bb.o
  %i.x = tail call ptr @_PyObject_New(ptr noundef nonnull @_PyLegacyEventHandler_Type) #4 ; 7 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %set_callbacks.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = getelementptr i8, ptr %i.x, i64 16
  store ptr @sys_trace_yield, ptr %i.z, align 8, !tbaa !111
  %i.aa = getelementptr i8, ptr %i.x, i64 24
  store i32 3, ptr %i.aa, align 8, !tbaa !113
  %i.ab = tail call ptr @_PyMonitoring_RegisterCallback(i32 noundef 7, i32 noundef 3, ptr noundef nonnull %i.x) #4 ; 4 uses
  %.not.i15.i15 = icmp eq ptr %i.ab, null
  br i1 %.not.i15.i15, label %Py_XDECREF.exit.i17, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i16 = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i.i16, label %bb.s, label %Py_XDECREF.exit.i17

bb.s:                                             ; preds = %bb.r
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !36
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.t, label %Py_XDECREF.exit.i17

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ab) #4
  br label %Py_XDECREF.exit.i17

Py_XDECREF.exit.i17:                              ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.af = load i32, ptr %i.x, align 8, !tbaa !36  ; 2 uses
  %.not.i.i18 = icmp sgt i32 %i.af, -1
  br i1 %.not.i.i18, label %bb.u, label %bb.w

bb.u:                                             ; preds = %Py_XDECREF.exit.i17
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.x, align 8, !tbaa !36
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.x) #4
  br label %bb.w

bb.w:                                             ; preds = %Py_XDECREF.exit.i17, %bb.u, %bb.v
  %i.ai = tail call fastcc i32 @set_callbacks(i32 noundef 7, ptr noundef nonnull @sys_trace_exception_func, i32 noundef 1, i32 noundef 11, i32 noundef 10)
  %.not4 = icmp eq i32 %i.ai, 0
  br i1 %.not4, label %bb.x, label %set_callbacks.exit

bb.x:                                             ; preds = %bb.w
  %i.aj = tail call fastcc i32 @set_callbacks(i32 noundef 7, ptr noundef nonnull @sys_trace_line_func, i32 noundef 2, i32 noundef 5, i32 noundef -1)
  %.not5 = icmp eq i32 %i.aj, 0
  br i1 %.not5, label %bb.y, label %set_callbacks.exit

bb.y:                                             ; preds = %bb.x
  %i.ak = tail call fastcc i32 @set_callbacks(i32 noundef 7, ptr noundef nonnull @sys_trace_unwind, i32 noundef 3, i32 noundef 13, i32 noundef -1)
  %.not6 = icmp eq i32 %i.ak, 0
  br i1 %.not6, label %bb.z, label %set_callbacks.exit

bb.z:                                             ; preds = %bb.y
  %i.al = tail call fastcc i32 @set_callbacks(i32 noundef 7, ptr noundef nonnull @sys_trace_jump_func, i32 noundef 2, i32 noundef 7, i32 noundef -1)
  %.not7 = icmp eq i32 %i.al, 0
  br i1 %.not7, label %bb.aa, label %set_callbacks.exit

bb.aa:                                            ; preds = %bb.z
  %i.am = tail call fastcc i32 @set_callbacks(i32 noundef 7, ptr noundef nonnull @sys_trace_instruction_func, i32 noundef 7, i32 noundef 6, i32 noundef -1)
  %.not8 = icmp ne i32 %i.am, 0
  %. = sext i1 %.not8 to i32
  br label %set_callbacks.exit

set_callbacks.exit:                               ; preds = %bb.p, %bb.i, %bb.b, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.a
  %.0 = phi i32 [ -1, %bb.z ], [ -1, %bb.a ], [ %., %bb.aa ], [ -1, %bb.b ], [ -1, %bb.i ], [ -1, %bb.w ], [ -1, %bb.x ], [ -1, %bb.y ], [ -1, %bb.p ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @_PyEval_SetTraceAllThreads(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = tail call i32 (ptr, ptr, ptr, ...) @_PySys_Audit(ptr noundef %i.c, ptr noundef nonnull @.str.2, ptr noundef null) #4
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %Py_XDECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 223473     ; 2 uses
  %i.g = load atomic i8, ptr %i.f seq_cst, align 1
  %i.h = icmp eq i8 %i.g, 4
  br i1 %i.h, label %_PyOnceFlag_CallOnce.exit.thread, label %_PyOnceFlag_CallOnce.exit

_PyOnceFlag_CallOnce.exit:                        ; preds = %bb.b
  %i.i = tail call i32 @_PyOnceFlag_CallOnceSlow(ptr noundef nonnull %i.f, ptr noundef nonnull @setup_trace_callbacks, ptr noundef null) #4
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %Py_XDECREF.exit, label %_PyOnceFlag_CallOnce.exit.thread

_PyOnceFlag_CallOnce.exit.thread:                 ; preds = %bb.b, %_PyOnceFlag_CallOnce.exit
  tail call void @_PyEval_StopTheWorld(ptr noundef nonnull %0) #4
  %i.k = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 864), i8 0, i8 1 seq_cst seq_cst, align 1
  %i.l = extractvalue { i8, i1 } %i.k, 1
  br i1 %i.l, label %PyMutex_LockFlags.exit, label %bb.c

bb.c:                                             ; preds = %_PyOnceFlag_CallOnce.exit.thread
  %i.m = tail call i32 @_PyMutex_LockTimed(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 864), i64 noundef -1, i32 noundef 0) #4 ; 0 uses
  br label %PyMutex_LockFlags.exit

PyMutex_LockFlags.exit:                           ; preds = %_PyOnceFlag_CallOnce.exit.thread, %bb.c
  %i.n = getelementptr i8, ptr %0, i64 7336       ; 3 uses
  %.03865 = load ptr, ptr %i.n, align 8, !tbaa !21 ; 2 uses
  %.not66 = icmp eq ptr %.03865, null
  br i1 %.not66, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %PyMutex_LockFlags.exit
  %.039.lcssa = phi i64 [ 0, %PyMutex_LockFlags.exit ], [ %i.ah, %.lr.ph ] ; 3 uses
  %i.o = tail call ptr @PyTuple_New(i64 noundef %.039.lcssa) #4 ; 8 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %.preheader64

.preheader64:                                     ; preds = %._crit_edge
  %.03769 = load ptr, ptr %i.n, align 8, !tbaa !21 ; 3 uses
  %.not4270 = icmp eq ptr %.03769, null
  br i1 %.not4270, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %.preheader64
  %.not.i.i.i = icmp eq ptr %2, null
  %i.q = icmp ne ptr %1, null
  %i.r = zext i1 %i.q to i64                      ; 2 uses
  %i.s = getelementptr i8, ptr %i.o, i64 32       ; 2 uses
  br i1 %.not.i.i.i, label %swap_trace_func_arg.exit.us, label %.lr.ph73.split

swap_trace_func_arg.exit.us:                      ; preds = %.lr.ph73, %swap_trace_func_arg.exit.us
  %.03772.us = phi ptr [ %.037.us, %swap_trace_func_arg.exit.us ], [ %.03769, %.lr.ph73 ] ; 4 uses
  %.14071.us = phi i64 [ %i.ae, %swap_trace_func_arg.exit.us ], [ %.039.lcssa, %.lr.ph73 ]
  %i.t = getelementptr i8, ptr %.03772.us, i64 104 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118
  store ptr %1, ptr %i.t, align 8, !tbaa !118
  %i.v = getelementptr i8, ptr %.03772.us, i64 120 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !119
  %i.x = icmp ne ptr %i.u, null
  %.neg.i.us = sext i1 %i.x to i64
  %i.y = add nsw i64 %.neg.i.us, %i.r
  store ptr null, ptr %i.v, align 8, !tbaa !119
  %i.z = getelementptr i8, ptr %.03772.us, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23
  %i.ab = getelementptr i8, ptr %i.aa, i64 223488 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !120
  %i.ad = add i64 %i.y, %i.ac
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !120
  %i.ae = add i64 %.14071.us, -1                  ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %i.s, i64 %i.ae
  store ptr %i.w, ptr %i.af, align 8, !tbaa !114
  %i.ag = getelementptr i8, ptr %.03772.us, i64 8
  %.037.us = load ptr, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  %.not42.us = icmp eq ptr %.037.us, null
  br i1 %.not42.us, label %._crit_edge74, label %swap_trace_func_arg.exit.us, !llvm.loop !124

.lr.ph:                                           ; preds = %PyMutex_LockFlags.exit, %.lr.ph
  %.03868 = phi ptr [ %.038, %.lr.ph ], [ %.03865, %PyMutex_LockFlags.exit ]
  %.03967 = phi i64 [ %i.ah, %.lr.ph ], [ 0, %PyMutex_LockFlags.exit ]
  %i.ah = add i64 %.03967, 1                      ; 2 uses
  %i.ai = getelementptr i8, ptr %.03868, i64 8
  %.038 = load ptr, ptr %i.ai, align 8, !tbaa !21 ; 2 uses
  %.not = icmp eq ptr %.038, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !125

bb.d:                                             ; preds = %._crit_edge
  %i.aj = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 864), i8 1, i8 0 seq_cst seq_cst, align 1
  %i.ak = extractvalue { i8, i1 } %i.aj, 1
  br i1 %i.ak, label %_PyMutex_Unlock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @PyMutex_Unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 864)) #4
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %bb.d, %bb.e
  tail call void @_PyEval_StartTheWorld(ptr noundef nonnull %0) #4
  br label %Py_XDECREF.exit

._crit_edge74:                                    ; preds = %swap_trace_func_arg.exit, %swap_trace_func_arg.exit.us, %.preheader64
  %i.al = getelementptr i8, ptr %0, i64 223488    ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !120
  %.not43 = icmp eq i64 %i.am, 0
  br i1 %.not43, label %.critedge47, label %.preheader

.preheader:                                       ; preds = %._crit_edge74
  %.03675 = load ptr, ptr %i.n, align 8, !tbaa !21 ; 2 uses
  %.not4476 = icmp eq ptr %.03675, null
  br i1 %.not4476, label %.critedge47, label %.lr.ph78

.lr.ph73.split:                                   ; preds = %.lr.ph73, %swap_trace_func_arg.exit
  %.03772 = phi ptr [ %.037, %swap_trace_func_arg.exit ], [ %.03769, %.lr.ph73 ] ; 4 uses
  %.14071 = phi i64 [ %i.bb, %swap_trace_func_arg.exit ], [ %.039.lcssa, %.lr.ph73 ]
  %i.an = getelementptr i8, ptr %.03772, i64 104  ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !118
  store ptr %1, ptr %i.an, align 8, !tbaa !118
  %i.ap = getelementptr i8, ptr %.03772, i64 120  ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !119
  %i.ar = load i32, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.as = icmp ugt i32 %i.ar, -1073741825
  br i1 %i.as, label %swap_trace_func_arg.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph73.split
  %i.at = add nuw i32 %i.ar, 1
  store i32 %i.at, ptr %2, align 8, !tbaa !36
  br label %swap_trace_func_arg.exit

swap_trace_func_arg.exit:                         ; preds = %.lr.ph73.split, %bb.f
  %i.au = icmp ne ptr %i.ao, null
  %.neg.i = sext i1 %i.au to i64
  %i.av = add nsw i64 %.neg.i, %i.r
  store ptr %2, ptr %i.ap, align 8, !tbaa !119
  %i.aw = getelementptr i8, ptr %.03772, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !23
  %i.ay = getelementptr i8, ptr %i.ax, i64 223488 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !120
  %i.ba = add i64 %i.av, %i.az
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !120
  %i.bb = add i64 %.14071, -1                     ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.s, i64 %i.bb
  store ptr %i.aq, ptr %i.bc, align 8, !tbaa !114
  %i.bd = getelementptr i8, ptr %.03772, i64 8
  %.037 = load ptr, ptr %i.bd, align 8, !tbaa !21 ; 2 uses
  %.not42 = icmp eq ptr %.037, null
  br i1 %.not42, label %._crit_edge74, label %.lr.ph73.split, !llvm.loop !124

.lr.ph78:                                         ; preds = %.preheader, %.critedge
  %.03677 = phi ptr [ %.036, %.critedge ], [ %.03675, %.preheader ] ; 2 uses
  %i.be = getelementptr i8, ptr %.03677, i64 72
  %.036.val = load ptr, ptr %i.be, align 8, !tbaa !121 ; 3 uses
  %i.bf = icmp eq ptr %.036.val, null
  br i1 %i.bf, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph78
  %i.bg = getelementptr i8, ptr %.036.val, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !122 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr i8, ptr %i.bh, i64 45
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !123
  %.not.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val.i = load i64, ptr %.036.val, align 8
  %i.bl = and i64 %.val.i, -2
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !7
  %i.bn = call i32 @_PyMonitoring_GetLocalEvents(ptr noundef %i.bm, i32 noundef 7, ptr noundef nonnull %i.a) #4
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %maybe_set_opcode_trace.exit.thread61, label %bb.j

maybe_set_opcode_trace.exit.thread61:             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.bp = load i32, ptr %i.a, align 4, !tbaa !7   ; 2 uses
  %i.bq = and i32 %i.bp, 64
  %.not3.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not3.i.i, label %maybe_set_opcode_trace.exit, label %maybe_set_opcode_trace.exit.thread58

maybe_set_opcode_trace.exit.thread58:             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.critedge

maybe_set_opcode_trace.exit:                      ; preds = %bb.j
  %i.br = or disjoint i32 %i.bp, 64               ; 2 uses
  store i32 %i.br, ptr %i.a, align 4, !tbaa !7
  %i.bs = call i32 @_PyMonitoring_SetLocalEvents(ptr noundef %i.bm, i32 noundef 7, i32 noundef %i.br) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %.not45 = icmp eq i32 %i.bs, 0
  br i1 %.not45, label %.critedge, label %.loopexit

.loopexit:                                        ; preds = %maybe_set_opcode_trace.exit, %maybe_set_opcode_trace.exit.thread61
  %i.bt = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 864), i8 1, i8 0 seq_cst seq_cst, align 1
  %i.bu = extractvalue { i8, i1 } %i.bt, 1
  br i1 %i.bu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  call void @PyMutex_Unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 864)) #4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  call void @_PyEval_StartTheWorld(ptr noundef nonnull %0) #4
  %i.bv = load i32, ptr %i.o, align 8, !tbaa !36  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bv, -1
  br i1 %.not.i.i, label %bb.m, label %Py_XDECREF.exit

bb.m:                                             ; preds = %bb.l
  %i.bw = add nsw i32 %i.bv, -1                   ; 2 uses
  store i32 %i.bw, ptr %i.o, align 8, !tbaa !36
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %3, label %Py_XDECREF.exit

3:                                                ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.o) #4
  br label %Py_XDECREF.exit

.critedge:                                        ; preds = %bb.g, %bb.h, %.lr.ph78, %maybe_set_opcode_trace.exit.thread58, %maybe_set_opcode_trace.exit
  %i.by = getelementptr i8, ptr %.03677, i64 8
  %.036 = load ptr, ptr %i.by, align 8, !tbaa !21 ; 2 uses
  %.not44 = icmp eq ptr %.036, null
  br i1 %.not44, label %.critedge47, label %.lr.ph78, !llvm.loop !126

.critedge47:                                      ; preds = %.critedge, %.preheader, %._crit_edge74
  %i.bz = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 864), i8 1, i8 0 seq_cst seq_cst, align 1
  %i.ca = extractvalue { i8, i1 } %i.bz, 1
  br i1 %i.ca, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge47
  call void @PyMutex_Unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 864)) #4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge47
  %.val = load i64, ptr %i.al, align 8, !tbaa !120
  %.not.i51 = icmp eq i64 %.val, 0
  %spec.store.select.i = select i1 %.not.i51, i32 0, i32 27823
  %i.cb = call i32 @_PyMonitoring_SetEvents(i32 noundef 7, i32 noundef %spec.store.select.i) #4 ; 3 uses
  call void @_PyEval_StartTheWorld(ptr noundef nonnull %0) #4
  %i.cc = load i32, ptr %i.o, align 8, !tbaa !36  ; 2 uses
  %.not.i.i53 = icmp sgt i32 %i.cc, -1
  br i1 %.not.i.i53, label %bb.p, label %Py_XDECREF.exit

bb.p:                                             ; preds = %bb.o
  %i.cd = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.cd, ptr %i.o, align 8, !tbaa !36
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.q, label %Py_XDECREF.exit

bb.q:                                             ; preds = %bb.p
  call void @_Py_Dealloc(ptr noundef nonnull %i.o) #4
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.q, %bb.p, %bb.o, %3, %bb.m, %bb.l, %_PyMutex_Unlock.exit, %_PyOnceFlag_CallOnce.exit, %bb.a
  %.4 = phi i32 [ -1, %_PyOnceFlag_CallOnce.exit ], [ -1, %bb.a ], [ -1, %_PyMutex_Unlock.exit ], [ -1, %3 ], [ -1, %bb.l ], [ -1, %bb.m ], [ %i.cb, %bb.o ], [ %i.cb, %bb.p ], [ %i.cb, %bb.q ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #3

declare i32 @_PyMonitoring_GetLocalEvents(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyMonitoring_SetLocalEvents(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @_PyOnceFlag_CallOnceSlow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @set_callbacks(i32 noundef range(i32 6, 8) %0, ptr noundef %1, i32 noundef range(i32 0, 8) %2, i32 noundef range(i32 0, 18) %3, i32 noundef range(i32 -1, 11) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_PyObject_New(ptr noundef nonnull @_PyLegacyEventHandler_Type) #4 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !111
  %i.d = getelementptr i8, ptr %i.a, i64 24
  store i32 %2, ptr %i.d, align 8, !tbaa !113
  %i.e = tail call ptr @_PyMonitoring_RegisterCallback(i32 noundef %0, i32 noundef %3, ptr noundef nonnull %i.a) #4 ; 4 uses
  %.not.i15 = icmp eq ptr %i.e, null
  br i1 %.not.i15, label %Py_XDECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i.i, label %bb.d, label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !36
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %Py_XDECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #4
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.i = icmp sgt i32 %4, -1
  br i1 %i.i, label %bb.f, label %Py_XDECREF.exit18

bb.f:                                             ; preds = %Py_XDECREF.exit
  %i.j = tail call ptr @_PyMonitoring_RegisterCallback(i32 noundef %0, i32 noundef %4, ptr noundef nonnull %i.a) #4 ; 4 uses
  %.not.i16 = icmp eq ptr %i.j, null
  br i1 %.not.i16, label %Py_XDECREF.exit18, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %.not.i.i17 = icmp sgt i32 %i.k, -1
  br i1 %.not.i.i17, label %bb.h, label %Py_XDECREF.exit18

bb.h:                                             ; preds = %bb.g
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !36
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.i, label %Py_XDECREF.exit18

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #4
  br label %Py_XDECREF.exit18

Py_XDECREF.exit18:                                ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %Py_XDECREF.exit
  %i.n = load i32, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %Py_XDECREF.exit18
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.a, align 8, !tbaa !36
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #4
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.k, %bb.j, %Py_XDECREF.exit18, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %Py_XDECREF.exit18 ], [ 0, %bb.j ], [ 0, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @sys_profile_start(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1, i64 %2, ptr readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 96       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %call_profile_func.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @PyEval_GetFrame() #4      ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !114
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.3) #4
  br label %call_profile_func.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %i.j = icmp ugt i32 %i.i, -1073741825
  br i1 %i.j, label %Py_INCREF.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw i32 %i.i, 1
  store i32 %i.k, ptr %i.f, align 8, !tbaa !36
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.e, %bb.d
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.m = getelementptr i8, ptr %i.b, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !113
  %i.q = tail call i32 %i.l(ptr noundef %i.n, ptr noundef nonnull %i.f, i32 noundef %i.p, ptr noundef nonnull @_Py_NoneStruct) #4, !inline_history !127
  %i.r = load i32, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i, label %bb.f, label %Py_DECREF.exit.i

bb.f:                                             ; preds = %Py_INCREF.exit.i
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.f, align 8, !tbaa !36
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %Py_DECREF.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #4
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.g, %bb.f, %Py_INCREF.exit.i
  %.not.i = icmp eq i32 %i.q, 0
  %_Py_NoneStruct..i = select i1 %.not.i, ptr @_Py_NoneStruct, ptr null
  br label %call_profile_func.exit

call_profile_func.exit:                           ; preds = %bb.a, %bb.c, %Py_DECREF.exit.i
  %.2.i = phi ptr [ @_Py_NoneStruct, %bb.a ], [ null, %bb.c ], [ %_Py_NoneStruct..i, %Py_DECREF.exit.i ]
  ret ptr %.2.i
}

; Function Attrs: nounwind uwtable
define internal ptr @sys_profile_throw(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1, i64 %2, ptr readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 96       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %call_profile_func.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @PyEval_GetFrame() #4      ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !114
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.3) #4
  br label %call_profile_func.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %i.j = icmp ugt i32 %i.i, -1073741825
  br i1 %i.j, label %Py_INCREF.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw i32 %i.i, 1
  store i32 %i.k, ptr %i.f, align 8, !tbaa !36
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.e, %bb.d
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.m = getelementptr i8, ptr %i.b, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !113
  %i.q = tail call i32 %i.l(ptr noundef %i.n, ptr noundef nonnull %i.f, i32 noundef %i.p, ptr noundef nonnull @_Py_NoneStruct) #4, !inline_history !127
  %i.r = load i32, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i, label %bb.f, label %Py_DECREF.exit.i

bb.f:                                             ; preds = %Py_INCREF.exit.i
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.f, align 8, !tbaa !36
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %Py_DECREF.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #4
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.g, %bb.f, %Py_INCREF.exit.i
end_hunk_0
