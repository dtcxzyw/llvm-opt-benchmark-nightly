inline.NumInlined: 30
inline.NumDeleted: 18
begin_hunk_0_@syslog_syslog:bb.a
  %i.e = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %syslog_syslog_impl.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i32, ptr %i.a, align 4, !tbaa !6
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !16
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.20) #4
  br label %syslog_syslog_impl.exit

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %i.g = phi i32 [ %.pre, %._crit_edge ], [ 6, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !27   ; 3 uses
  %i.i = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %i.g, ptr noundef %i.h) #4
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %syslog_syslog_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.b.i = load i1, ptr @S_log_open, align 1
  br i1 %.b.i, label %Py_DECREF.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = call ptr @PyInterpreterState_Get() #4
  %i.l = call ptr @PyInterpreterState_Main() #4
  %.not.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !16
  call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.23) #4
  br label %syslog_syslog_impl.exit

bb.i:                                             ; preds = %bb.g
  %i.n = call fastcc ptr @syslog_openlog_impl(ptr noundef null, i64 noundef 0, i64 noundef 8) ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %syslog_syslog_impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = load i32, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i.i, label %bb.k, label %Py_DECREF.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.n, align 8, !tbaa !26
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.l, label %Py_DECREF.exit.thread.i

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.n) #4
  br label %Py_DECREF.exit.thread.i

Py_DECREF.exit.thread.i:                          ; preds = %bb.l, %bb.k, %bb.j, %bb.f
  %i.s = load ptr, ptr @S_ident_o, align 8, !tbaa !16 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %Py_DECREF.exit.critedge.i, label %bb.m

bb.m:                                             ; preds = %Py_DECREF.exit.thread.i
  %i.t = load i32, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %i.u = icmp ugt i32 %i.t, -1073741825
  br i1 %i.u, label %_Py_XNewRef.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = add nuw i32 %i.t, 1
  store i32 %i.v, ptr %i.s, align 8, !tbaa !26
  br label %_Py_XNewRef.exit.i

_Py_XNewRef.exit.i:                               ; preds = %bb.n, %bb.m
  %i.w = call ptr @PyEval_SaveThread() #4
  call void (i32, ptr, ...) @syslog(i32 noundef %i.g, ptr noundef nonnull @.str.24, ptr noundef %i.h) #4
  call void @PyEval_RestoreThread(ptr noundef %i.w) #4
  %i.x = load i32, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %.not.i.i12.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i.i12.i, label %bb.o, label %syslog_syslog_impl.exit

bb.o:                                             ; preds = %_Py_XNewRef.exit.i
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.s, align 8, !tbaa !26
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.p, label %syslog_syslog_impl.exit

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.s) #4
  br label %syslog_syslog_impl.exit

Py_DECREF.exit.critedge.i:                        ; preds = %Py_DECREF.exit.thread.i
  %i.aa = call ptr @PyEval_SaveThread() #4
  call void (i32, ptr, ...) @syslog(i32 noundef %i.g, ptr noundef nonnull @.str.24, ptr noundef %i.h) #4
  call void @PyEval_RestoreThread(ptr noundef %i.aa) #4
  br label %syslog_syslog_impl.exit

syslog_syslog_impl.exit:                          ; preds = %Py_DECREF.exit.critedge.i, %bb.p, %bb.o, %_Py_XNewRef.exit.i, %bb.i, %bb.h, %bb.e, %bb.c, %bb.b, %bb.d
  %.05 = phi ptr [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.e ], [ @_Py_NoneStruct, %Py_DECREF.exit.critedge.i ], [ @_Py_NoneStruct, %_Py_XNewRef.exit.i ], [ @_Py_NoneStruct, %bb.o ], [ @_Py_NoneStruct, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.05
}

; Function Attrs: nounwind uwtable
define internal ptr @syslog_setlogmask(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @PyLong_AsLong(ptr noundef %1) #4 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.d, label %.split

.split:                                           ; preds = %bb.a
  %i.c = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i64 noundef %i.a) #4
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %syslog_setlogmask_impl.exit.thread, label %bb.b

bb.b:                                             ; preds = %.split
  %i.e = cmpxchg ptr @syslog_setlogmask_impl.setlogmask_mutex, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.f = extractvalue { i8, i1 } %i.e, 1
  br i1 %i.f, label %_PyMutex_Lock.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @PyMutex_Lock(ptr noundef nonnull @syslog_setlogmask_impl.setlogmask_mutex) #4
  br label %_PyMutex_Lock.exit.i

_PyMutex_Lock.exit.i:                             ; preds = %bb.c, %bb.b
  %i.g = trunc i64 %i.a to i32
  %i.h = tail call i32 @setlogmask(i32 noundef %i.g) #4 ; 2 uses
  %i.i = cmpxchg ptr @syslog_setlogmask_impl.setlogmask_mutex, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %syslog_setlogmask_impl.exit, label %syslog_setlogmask_impl.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.k = tail call ptr @PyErr_Occurred() #4
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.split6, label %bb.h

.split6:                                          ; preds = %bb.d
  %i.l = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i64 noundef -1) #4
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %syslog_setlogmask_impl.exit.thread, label %bb.e

bb.e:                                             ; preds = %.split6
  %i.n = cmpxchg ptr @syslog_setlogmask_impl.setlogmask_mutex, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.o = extractvalue { i8, i1 } %i.n, 1
  br i1 %i.o, label %_PyMutex_Lock.exit.i9, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @PyMutex_Lock(ptr noundef nonnull @syslog_setlogmask_impl.setlogmask_mutex) #4
  br label %_PyMutex_Lock.exit.i9

_PyMutex_Lock.exit.i9:                            ; preds = %bb.f, %bb.e
  %i.p = tail call i32 @setlogmask(i32 noundef -1) #4 ; 2 uses
  %i.q = cmpxchg ptr @syslog_setlogmask_impl.setlogmask_mutex, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.r = extractvalue { i8, i1 } %i.q, 1
  br i1 %i.r, label %syslog_setlogmask_impl.exit, label %syslog_setlogmask_impl.exit.sink.split

syslog_setlogmask_impl.exit.sink.split:           ; preds = %_PyMutex_Lock.exit.i9, %_PyMutex_Lock.exit.i
  %phi.call.in.ph = phi i32 [ %i.h, %_PyMutex_Lock.exit.i ], [ %i.p, %_PyMutex_Lock.exit.i9 ]
  tail call void @PyMutex_Unlock(ptr noundef nonnull @syslog_setlogmask_impl.setlogmask_mutex) #4
  br label %syslog_setlogmask_impl.exit

syslog_setlogmask_impl.exit:                      ; preds = %syslog_setlogmask_impl.exit.sink.split, %_PyMutex_Lock.exit.i9, %_PyMutex_Lock.exit.i
  %phi.call.in = phi i32 [ %i.h, %_PyMutex_Lock.exit.i ], [ %i.p, %_PyMutex_Lock.exit.i9 ], [ %phi.call.in.ph, %syslog_setlogmask_impl.exit.sink.split ] ; 2 uses
  %phi.call = sext i32 %phi.call.in to i64
  %i.s = icmp eq i32 %phi.call.in, -1
  br i1 %i.s, label %syslog_setlogmask_impl.exit.thread, label %bb.g

syslog_setlogmask_impl.exit.thread:               ; preds = %.split6, %.split, %syslog_setlogmask_impl.exit
  %i.t = tail call ptr @PyErr_Occurred() #4
  %.not8 = icmp eq ptr %i.t, null
  br i1 %.not8, label %bb.g, label %bb.h

bb.g:                                             ; preds = %syslog_setlogmask_impl.exit.thread, %syslog_setlogmask_impl.exit
  %phi.call13 = phi i64 [ -1, %syslog_setlogmask_impl.exit.thread ], [ %phi.call, %syslog_setlogmask_impl.exit ]
  %i.u = tail call ptr @PyLong_FromLong(i64 noundef %phi.call13) #4
  br label %bb.h

bb.h:                                             ; preds = %syslog_setlogmask_impl.exit.thread, %bb.d, %bb.g
  %.0 = phi ptr [ null, %bb.d ], [ null, %syslog_setlogmask_impl.exit.thread ], [ %i.u, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @syslog_LOG_MASK(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @PyLong_AsLong(ptr noundef %1) #4 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %.split6.thread

.split6.thread:                                   ; preds = %bb.a
  %i.c = trunc i64 %i.a to i32
  %i.d = shl nuw i32 1, %i.c
  %i.e = sext i32 %i.d to i64
  %i.f = tail call ptr @PyLong_FromLong(i64 noundef %i.e) #4
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @PyErr_Occurred() #4
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call nonnull ptr @PyErr_Occurred() #4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.split6.thread
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.f, %.split6.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @syslog_LOG_UPTO(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @PyLong_AsLong(ptr noundef %1) #4 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.c = trunc i64 %i.a to i32
  %i.d = add i32 %i.c, 1
  %notmask.i = shl nsw i32 -1, %i.d
  %i.e = xor i32 %notmask.i, -1
  %i.f = zext nneg i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @PyErr_Occurred() #4
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.split, %bb.b
  %phi.call = phi i64 [ %i.f, %.split ], [ 0, %bb.b ]
  %i.h = tail call ptr @PyLong_FromLong(i64 noundef %phi.call) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.b ], [ %i.h, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @syslog_openlog_impl(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = tail call ptr @PyInterpreterState_Get() #4
  %i.c = tail call ptr @PyInterpreterState_Main() #4
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !16
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.12) #4
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.a
  %.not25 = icmp eq ptr %0, null
  br i1 %.not25, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.f = icmp ugt i32 %i.e, -1073741825
  br i1 %i.f, label %bb.aj, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = add nuw i32 %i.e, 1
  store i32 %i.g, ptr %0, align 8, !tbaa !26
  br label %bb.aj

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.h = call i32 @PySys_GetOptionalAttrString(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.a) #4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %syslog_get_argv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.k = call i64 @PyList_Size(ptr noundef %i.j) #4
  switch i64 %i.k, label %bb.n [
    i64 -1, label %bb.h
    i64 0, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  call void @PyErr_Clear() #4
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %.not.i37.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i37.i, label %bb.i, label %syslog_get_argv.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !26
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %syslog_get_argv.exit.thread

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #4
  br label %syslog_get_argv.exit.thread

bb.k:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %.not.i35.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i35.i, label %bb.l, label %syslog_get_argv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.p, align 8, !tbaa !26
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.m, label %syslog_get_argv.exit.thread

bb.m:                                             ; preds = %bb.l
  call void @_Py_Dealloc(ptr noundef nonnull %i.p) #4
  br label %syslog_get_argv.exit.thread

bb.n:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.u = call ptr @PyList_GetItem(ptr noundef %i.t, i64 noundef 0) #4 ; 20 uses
  %.not.i47.i = icmp eq ptr %i.u, null            ; 2 uses
  br i1 %.not.i47.i, label %Py_XINCREF.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = load i32, ptr %i.u, align 8, !tbaa !26   ; 2 uses
  %i.w = icmp ugt i32 %i.v, -1073741825
  br i1 %i.w, label %Py_XINCREF.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = add nuw i32 %i.v, 1
  store i32 %i.x, ptr %i.u, align 8, !tbaa !26
  br label %Py_XINCREF.exit.i

Py_XINCREF.exit.i:                                ; preds = %bb.p, %bb.o, %bb.n
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !26   ; 2 uses
  %.not.i33.i = icmp sgt i32 %i.z, -1
  br i1 %.not.i33.i, label %bb.q, label %Py_DECREF.exit34.i

bb.q:                                             ; preds = %Py_XINCREF.exit.i
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !26
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.r, label %Py_DECREF.exit34.i

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.y) #4
  br label %Py_DECREF.exit34.i

Py_DECREF.exit34.i:                               ; preds = %bb.r, %bb.q, %Py_XINCREF.exit.i
  br i1 %.not.i47.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %Py_DECREF.exit34.i
  call void @PyErr_Clear() #4
  br label %syslog_get_argv.exit.thread

bb.t:                                             ; preds = %Py_DECREF.exit34.i
  %i.ac = getelementptr i8, ptr %i.u, i64 8
  %.val.i = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.ad = getelementptr i8, ptr %.val.i, i64 168
  %.val45.i = load i64, ptr %i.ad, align 8, !tbaa !19
  %i.ae = and i64 %.val45.i, 268435456
  %.not.i28 = icmp eq i64 %i.ae, 0
  br i1 %.not.i28, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.af = load i32, ptr %i.u, align 8, !tbaa !26  ; 2 uses
  %.not.i31.i = icmp sgt i32 %i.af, -1
  br i1 %.not.i31.i, label %bb.v, label %syslog_get_argv.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !26
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.w, label %syslog_get_argv.exit.thread

bb.w:                                             ; preds = %bb.v
  call void @_Py_Dealloc(ptr noundef nonnull %i.u) #4
  br label %syslog_get_argv.exit.thread

bb.x:                                             ; preds = %bb.t
  %i.ai = getelementptr i8, ptr %i.u, i64 16
  %.val46.i = load i64, ptr %i.ai, align 8, !tbaa !28 ; 3 uses
  %i.aj = icmp eq i64 %.val46.i, 0
  br i1 %i.aj, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ak = load i32, ptr %i.u, align 8, !tbaa !26  ; 2 uses
  %.not.i29.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i29.i, label %bb.z, label %syslog_get_argv.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.u, align 8, !tbaa !26
end_hunk_0
