inline.NumInlined: 30
inline.NumDeleted: 18
begin_hunk_0
@.str.50 = private unnamed_addr constant [11 x i8] c"LOG_LOCAL2\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"LOG_LOCAL3\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"LOG_LOCAL4\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"LOG_LOCAL5\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"LOG_LOCAL6\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"LOG_LOCAL7\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"LOG_SYSLOG\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"LOG_CRON\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"LOG_UUCP\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"LOG_NEWS\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"LOG_AUTHPRIV\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"LOG_FTP\00", align 1

; Function Attrs: nounwind uwtable
define ptr @PyInit_syslog() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyModuleDef_Init(ptr noundef nonnull @syslogmodule) #4
  ret ptr %i.a
}

declare ptr @PyModuleDef_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef ptr @syslog_openlog(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !10
  %i.c = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, 4
  %i.e = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.e, %i.d
  br i1 %or.cond5, label %.thread59, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.f = phi i64 [ %i.c, %.thread ], [ %2, %bb.b ]
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @syslog_openlog._parser, i32 noundef 0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #4 ; 2 uses
  %.not47 = icmp eq ptr %i.g, null
  br i1 %.not47, label %bb.o, label %.thread59

.thread59:                                        ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ %1, %bb.b ]   ; 3 uses
  %i.i = phi i64 [ %i.f, %bb.c ], [ %2, %bb.b ]   ; 3 uses
  %.not48 = icmp eq i64 %i.i, 0
  br i1 %.not48, label %bb.n, label %bb.d

bb.d:                                             ; preds = %.thread59
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !16   ; 7 uses
  %.not49 = icmp eq ptr %i.j, null
  br i1 %.not49, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val55 = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr i8, ptr %.val55, i64 168
  %.val56 = load i64, ptr %i.l, align 8, !tbaa !19
  %i.m = and i64 %.val56, 268435456
  %.not50 = icmp eq i64 %i.m, 0
  br i1 %.not50, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.j) #4
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.n = add i64 %i.i, -1                         ; 2 uses
  %.not51 = icmp eq i64 %i.n, 0
  br i1 %.not51, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.036 = phi i64 [ %i.n, %bb.g ], [ %i.i, %bb.d ]
  %i.o = getelementptr i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16   ; 2 uses
  %.not52 = icmp eq ptr %i.p, null
  br i1 %.not52, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = call i64 @PyLong_AsLong(ptr noundef nonnull %i.p) #4 ; 3 uses
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = call ptr @PyErr_Occurred() #4
  %.not53 = icmp eq ptr %i.s, null
  br i1 %.not53, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = icmp ugt i64 %.036, 1
  br i1 %i.t, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.h
  %.033 = phi i64 [ %i.q, %bb.k ], [ 0, %bb.h ]   ; 2 uses
  %i.u = getelementptr i8, ptr %i.h, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.w = call i64 @PyLong_AsLong(ptr noundef %i.v) #4 ; 2 uses
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.y = call ptr @PyErr_Occurred() #4
  %.not54 = icmp eq ptr %i.y, null
  br i1 %.not54, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k, %bb.g, %.thread59
  %.135 = phi ptr [ %i.j, %bb.m ], [ %i.j, %bb.l ], [ %i.j, %bb.k ], [ %i.j, %bb.g ], [ null, %.thread59 ]
  %.1 = phi i64 [ %.033, %bb.m ], [ %.033, %bb.l ], [ %i.q, %bb.k ], [ 0, %bb.g ], [ 0, %.thread59 ]
  %.0 = phi i64 [ -1, %bb.m ], [ %i.w, %bb.l ], [ 8, %bb.k ], [ 8, %bb.g ], [ 8, %.thread59 ]
  %i.z = call fastcc ptr @syslog_openlog_impl(ptr noundef %.135, i64 noundef %.1, i64 noundef %.0)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.j, %bb.c, %bb.n, %bb.f
  %.037 = phi ptr [ null, %bb.j ], [ null, %bb.m ], [ %i.z, %bb.n ], [ null, %bb.f ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.037
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @syslog_closelog(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyInterpreterState_Get() #4
  %i.b = tail call ptr @PyInterpreterState_Main() #4
  %.not.i = icmp eq ptr %i.a, %i.b
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !16
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.16) #4
  br label %syslog_closelog_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.17, ptr noundef null) #4
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %syslog_closelog_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.b.i = load i1, ptr @S_log_open, align 1
  br i1 %.b.i, label %bb.e, label %syslog_closelog_impl.exit

bb.e:                                             ; preds = %bb.d
  tail call void @closelog() #4
  %i.f = load ptr, ptr @S_ident_o, align 8, !tbaa !16 ; 4 uses
  %.not6.i = icmp eq ptr %i.f, null
  br i1 %.not6.i, label %Py_DECREF.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr @S_ident_o, align 8, !tbaa !16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i.i, label %bb.g, label %Py_DECREF.exit.i

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !26
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %Py_DECREF.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #4
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  store i1 false, ptr @S_log_open, align 1
  br label %syslog_closelog_impl.exit

syslog_closelog_impl.exit:                        ; preds = %bb.b, %bb.c, %bb.d, %Py_DECREF.exit.i
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ @_Py_NoneStruct, %Py_DECREF.exit.i ], [ @_Py_NoneStruct, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @syslog_syslog(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 6, ptr %i.a, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !10
  switch i64 %.val, label %bb.d [
    i64 1, label %bb.b
    i64 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.b) #4
  %.not6 = icmp eq i32 %i.d, 0
  br i1 %.not6, label %syslog_syslog_impl.exit, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %syslog_syslog_impl.exit, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !16
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.20) #4
  br label %syslog_syslog_impl.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %2 = load i32, ptr %i.a, align 4, !tbaa !6      ; 3 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !27   ; 3 uses
  %i.h = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %2, ptr noundef %i.g) #4
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %syslog_syslog_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.b.i = load i1, ptr @S_log_open, align 1
  br i1 %.b.i, label %Py_DECREF.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = call ptr @PyInterpreterState_Get() #4
  %i.k = call ptr @PyInterpreterState_Main() #4
  %.not.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !16
  call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.23) #4
  br label %syslog_syslog_impl.exit

bb.i:                                             ; preds = %bb.g
  %i.m = call fastcc ptr @syslog_openlog_impl(ptr noundef null, i64 noundef 0, i64 noundef 8) ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %syslog_syslog_impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = load i32, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i.i, label %bb.k, label %Py_DECREF.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.m, align 8, !tbaa !26
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.l, label %Py_DECREF.exit.thread.i

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.m) #4
  br label %Py_DECREF.exit.thread.i

Py_DECREF.exit.thread.i:                          ; preds = %bb.l, %bb.k, %bb.j, %bb.f
  %i.r = load ptr, ptr @S_ident_o, align 8, !tbaa !16 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %Py_DECREF.exit.critedge.i, label %bb.m

bb.m:                                             ; preds = %Py_DECREF.exit.thread.i
  %i.s = load i32, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %i.t = icmp ugt i32 %i.s, -1073741825
  br i1 %i.t, label %_Py_XNewRef.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = add nuw i32 %i.s, 1
  store i32 %i.u, ptr %i.r, align 8, !tbaa !26
  br label %_Py_XNewRef.exit.i

_Py_XNewRef.exit.i:                               ; preds = %bb.n, %bb.m
  %i.v = call ptr @PyEval_SaveThread() #4
  call void (i32, ptr, ...) @syslog(i32 noundef %2, ptr noundef nonnull @.str.24, ptr noundef %i.g) #4
  call void @PyEval_RestoreThread(ptr noundef %i.v) #4
  %i.w = load i32, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %.not.i.i12.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i.i12.i, label %bb.o, label %syslog_syslog_impl.exit

bb.o:                                             ; preds = %_Py_XNewRef.exit.i
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.r, align 8, !tbaa !26
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.p, label %syslog_syslog_impl.exit

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.r) #4
  br label %syslog_syslog_impl.exit

Py_DECREF.exit.critedge.i:                        ; preds = %Py_DECREF.exit.thread.i
  %i.z = call ptr @PyEval_SaveThread() #4
  call void (i32, ptr, ...) @syslog(i32 noundef %2, ptr noundef nonnull @.str.24, ptr noundef %i.g) #4
  call void @PyEval_RestoreThread(ptr noundef %i.z) #4
  br label %syslog_syslog_impl.exit

syslog_syslog_impl.exit:                          ; preds = %Py_DECREF.exit.critedge.i, %bb.p, %bb.o, %_Py_XNewRef.exit.i, %bb.i, %bb.h, %bb.e, %bb.c, %bb.b, %bb.d
  %.05 = phi ptr [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.e ], [ @_Py_NoneStruct, %Py_DECREF.exit.critedge.i ], [ @_Py_NoneStruct, %_Py_XNewRef.exit.i ], [ @_Py_NoneStruct, %bb.o ], [ @_Py_NoneStruct, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.05
}

; Function Attrs: nounwind uwtable
define internal ptr @syslog_setlogmask(ptr readnone captures(none) %0, ptr noundef %1) #0 {
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
define internal ptr @syslog_LOG_MASK(ptr readnone captures(none) %0, ptr noundef %1) #0 {
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
  %i.h = tail call ptr @PyErr_Occurred() #4       ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.split6.thread
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.f, %.split6.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @syslog_LOG_UPTO(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @PyLong_AsLong(ptr noundef %1) #4 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %.split

end_hunk_0
