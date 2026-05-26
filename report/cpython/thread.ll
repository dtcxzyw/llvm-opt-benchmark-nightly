inline.NumInlined: 26
inline.NumDeleted: 11
begin_hunk_0_@PyThread_acquire_lock_timed:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %.06 = phi i64 [ %i.b, %bb.b ], [ -1, %bb.a ]
  %.not = icmp eq i32 %2, 0
  %spec.select = select i1 %.not, i32 0, i32 4
  %i.c = tail call i32 @_PyMutex_LockTimed(ptr noundef %0, i64 noundef %.06, i32 noundef %spec.select) #13
  ret i32 %i.c
}

declare i32 @_PyMutex_LockTimed(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @PyThread_release_lock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %0, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.b = extractvalue { i8, i1 } %i.a, 1
  br i1 %i.b, label %_PyMutex_Unlock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Unlock(ptr noundef %0) #13
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef i32 @_PyThread_at_fork_reinit(ptr noundef writeonly captures(none) initializes((0, 1)) %0) local_unnamed_addr #9 {
bb.a:
  store i8 0, ptr %0, align 1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PyThread_acquire_lock(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not.not = icmp eq i32 %1, 0
  br i1 %.not.not, label %bb.b, label %PyThread_acquire_lock_timed.exit

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @_PyTime_FromMicrosecondsClamp(i64 noundef 0) #13
  br label %PyThread_acquire_lock_timed.exit

PyThread_acquire_lock_timed.exit:                 ; preds = %bb.a, %bb.b
  %.06.i = phi i64 [ %i.a, %bb.b ], [ -1, %bb.a ]
  %i.b = tail call i32 @_PyMutex_LockTimed(ptr noundef %0, i64 noundef %.06.i, i32 noundef 0) #13
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @PyThread_get_stacksize() local_unnamed_addr #10 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199
  %i.c = getelementptr i8, ptr %i.b, i64 7368
  %i.d = load i64, ptr %i.c, align 8, !tbaa !192
  ret i64 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyThread_set_stacksize(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %union.pthread_attr_t, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @__sysconf(i32 noundef 75) #13
  %i.d = icmp sgt i64 %i.c, 32768
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @__sysconf(i32 noundef 75) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = phi i64 [ %i.e, %bb.d ], [ 32768, %bb.c ]
  %.not.i = icmp ult i64 %0, %i.f
  br i1 %.not.i, label %_pythread_pthread_set_stacksize.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = call i32 @pthread_attr_init(ptr noundef nonnull %1) #13
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %_pythread_pthread_set_stacksize.exit

bb.g:                                             ; preds = %bb.f
  %i.i = call i32 @pthread_attr_setstacksize(ptr noundef nonnull %1, i64 noundef %0) #13
  %i.j = call i32 @pthread_attr_destroy(ptr noundef nonnull %1) #13 ; 0 uses
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %bb.h, label %_pythread_pthread_set_stacksize.exit

bb.h:                                             ; preds = %bb.g
  %i.l = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.b
  %.sink11.i = phi ptr [ %i.l, %bb.h ], [ %i.b, %bb.b ]
  %i.m = load ptr, ptr %.sink11.i, align 8, !tbaa !199
  %i.n = getelementptr i8, ptr %i.m, i64 7368
  store i64 %0, ptr %i.n, align 8, !tbaa !192
  br label %_pythread_pthread_set_stacksize.exit

_pythread_pthread_set_stacksize.exit:             ; preds = %bb.e, %bb.f, %bb.g, %.sink.split.i
  %.0.i = phi i32 [ -1, %bb.g ], [ -1, %bb.e ], [ -1, %bb.f ], [ 0, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyThread_ParseTimeoutArg(ptr noundef %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %0, @_Py_NoneStruct
  %or.cond = or i1 %i.b, %i.c
  %.not10 = icmp eq i32 %1, 0                     ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = select i1 %.not10, i64 0, i64 -1000000000
  store i64 %i.d, ptr %2, align 8, !tbaa !189
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  br i1 %.not10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !200
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str) #13
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.f = call i32 @_PyTime_FromSecondsObject(ptr noundef nonnull %i.a, ptr noundef nonnull %0, i32 noundef 3) #13
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i64, ptr %i.a, align 8, !tbaa !188  ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !200
  call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.1) #13
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.k = call i64 @_PyTime_AsMicroseconds(i64 noundef %i.h, i32 noundef 3) #13
  %i.l = icmp sgt i64 %i.k, 9223372036854775
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !200
  call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.2) #13
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.n = load i64, ptr %i.a, align 8, !tbaa !188
  store i64 %i.n, ptr %2, align 8, !tbaa !189
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.g
  %.0 = phi i32 [ 0, %bb.j ], [ -1, %bb.g ], [ -1, %bb.i ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %.0, %bb.k ], [ -1, %bb.d ]
  ret i32 %.1
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_PyTime_FromSecondsObject(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @_PyTime_AsMicroseconds(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @PyThread_acquire_lock_timed_with_retries(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190
  %i.c = icmp sgt i64 %1, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @_PyDeadline_Init(i64 noundef %1) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.025 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  br label %.outer

.outer:                                           ; preds = %bb.j, %bb.c
  %.019.ph = phi i64 [ %i.r, %bb.j ], [ %1, %bb.c ] ; 2 uses
  %i.e = icmp sgt i64 %.019.ph, 0
  br label %bb.d

bb.d:                                             ; preds = %.outer, %bb.i
  %i.f = tail call i64 @_PyTime_AsMicroseconds(i64 noundef %.019.ph, i32 noundef 1) #13 ; 3 uses
  %i.g = tail call i64 @_PyTime_FromMicrosecondsClamp(i64 noundef 0) #13
  %i.h = tail call i32 @_PyMutex_LockTimed(ptr noundef %0, i64 noundef %i.g, i32 noundef 0) #13 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = icmp ne i64 %i.f, 0
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @PyEval_SaveThread() #13
  %i.l = icmp sgt i64 %i.f, -1
  br i1 %i.l, label %bb.f, label %PyThread_acquire_lock_timed.exit

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i64 @_PyTime_FromMicrosecondsClamp(i64 noundef %i.f) #13
  br label %PyThread_acquire_lock_timed.exit

PyThread_acquire_lock_timed.exit:                 ; preds = %bb.e, %bb.f
  %.06.i = phi i64 [ %i.m, %bb.f ], [ -1, %bb.e ]
  %i.n = tail call i32 @_PyMutex_LockTimed(ptr noundef %0, i64 noundef %.06.i, i32 noundef 4) #13
  tail call void @PyEval_RestoreThread(ptr noundef %i.k) #13
  br label %bb.g

bb.g:                                             ; preds = %PyThread_acquire_lock_timed.exit, %bb.d
  %.022 = phi i32 [ %i.n, %PyThread_acquire_lock_timed.exit ], [ %i.h, %bb.d ] ; 2 uses
  %i.o = icmp eq i32 %.022, 2
  br i1 %i.o, label %bb.h, label %.thread36

bb.h:                                             ; preds = %bb.g
  %i.p = tail call i32 @_PyEval_MakePendingCalls(ptr noundef %i.b) #13
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %.thread36, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.e, label %bb.j, label %bb.d, !llvm.loop !201

bb.j:                                             ; preds = %bb.i
  %i.r = tail call i64 @_PyDeadline_Get(i64 noundef %.025) #13 ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %.thread36, label %.outer, !llvm.loop !201

.thread36:                                        ; preds = %bb.j, %bb.g, %bb.h
  %.2 = phi i32 [ 2, %bb.h ], [ %.022, %bb.g ], [ 0, %bb.j ]
  ret i32 %.2
}

declare i64 @_PyDeadline_Init(i64 noundef) local_unnamed_addr #3

declare ptr @PyEval_SaveThread() local_unnamed_addr #3

declare void @PyEval_RestoreThread(ptr noundef) local_unnamed_addr #3

declare i32 @_PyEval_MakePendingCalls(ptr noundef) local_unnamed_addr #3

declare i64 @_PyDeadline_Get(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyThread_tss_alloc() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyMem_RawMalloc(i64 noundef 8) #13 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !196
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @PyThread_tss_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 4, !tbaa !196
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %PyThread_tss_delete.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !197
  %i.d = tail call i32 @pthread_key_delete(i32 noundef %i.c) #13 ; 0 uses
  store i32 0, ptr %0, align 4, !tbaa !196
  br label %PyThread_tss_delete.exit

PyThread_tss_delete.exit:                         ; preds = %bb.b, %bb.c
  tail call void @PyMem_RawFree(ptr noundef nonnull %0) #13
  br label %bb.d

bb.d:                                             ; preds = %PyThread_tss_delete.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @PyThread_tss_is_created(ptr noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !196
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyThread_GetInfo() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [255 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !199
  %i.d = tail call i32 @_PyStructSequence_InitBuiltinWithFlags(ptr noundef %i.c, ptr noundef nonnull @ThreadInfoType, ptr noundef nonnull @threadinfo_desc, i64 noundef 0) #13
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %Py_DECREF.exit31, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @PyStructSequence_New(ptr noundef nonnull @ThreadInfoType) #13 ; 11 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %Py_DECREF.exit31, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.3) #13 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.f, align 8, !tbaa !198  ; 2 uses
  %.not.i30 = icmp sgt i32 %i.j, -1
  br i1 %.not.i30, label %bb.e, label %Py_DECREF.exit31

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.f, align 8, !tbaa !198
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %Py_DECREF.exit31

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #13
  br label %Py_DECREF.exit31

bb.g:                                             ; preds = %bb.c
  tail call void @PyStructSequence_SetItem(ptr noundef nonnull %i.f, i64 noundef 0, ptr noundef nonnull %i.h) #13
  %i.m = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.4) #13 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.o = load i32, ptr %i.f, align 8, !tbaa !198  ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit31

bb.i:                                             ; preds = %bb.h
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.f, align 8, !tbaa !198
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %Py_DECREF.exit31

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #13
  br label %Py_DECREF.exit31

bb.k:                                             ; preds = %bb.g
  tail call void @PyStructSequence_SetItem(ptr noundef nonnull %i.f, i64 noundef 1, ptr noundef nonnull %i.m) #13
  %i.r = call i64 @confstr(i32 noundef 3, ptr noundef nonnull %i.a, i64 noundef 255) #13 ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = add i32 %i.s, -2
  %or.cond = icmp ult i32 %i.t, 253
  br i1 %or.cond, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.u = add i64 %i.r, 4294967295
  %i.v = and i64 %i.u, 4294967295
  %i.w = call ptr @PyUnicode_DecodeFSDefaultAndSize(ptr noundef nonnull %i.a, i64 noundef %i.v) #13 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.m, label %_Py_NewRef.exit

bb.m:                                             ; preds = %bb.l
  call void @PyErr_Clear() #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.y = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !198 ; 2 uses
  %i.z = icmp ugt i32 %i.y, -1073741825
  br i1 %i.z, label %_Py_NewRef.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = add nuw i32 %i.y, 1
  store i32 %i.aa, ptr @_Py_NoneStruct, align 8, !tbaa !198
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.o, %bb.n, %bb.l
  %.1 = phi ptr [ %i.w, %bb.l ], [ @_Py_NoneStruct, %bb.n ], [ @_Py_NoneStruct, %bb.o ]
  call void @PyStructSequence_SetItem(ptr noundef nonnull %i.f, i64 noundef 2, ptr noundef nonnull %.1) #13
  br label %Py_DECREF.exit31

Py_DECREF.exit31:                                 ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a, %_Py_NewRef.exit
  %.0 = phi ptr [ %i.f, %_Py_NewRef.exit ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.0
}

declare ptr @PyStructSequence_New(ptr noundef) local_unnamed_addr #3

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #3

declare void @PyStructSequence_SetItem(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @confstr(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyUnicode_DecodeFSDefaultAndSize(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @PyErr_Clear() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_PyThread_FiniType(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_PyStructSequence_FiniBuiltin(ptr noundef %0, ptr noundef nonnull @ThreadInfoType) #13
  ret void
}

declare void @_PyStructSequence_FiniBuiltin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_condattr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_condattr_setclock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_attr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_attr_setstacksize(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_attr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
end_hunk_0
