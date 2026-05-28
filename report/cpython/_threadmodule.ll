inline.NumInlined: 197
inline.NumDeleted: 75
begin_hunk_0_@_thread_lock_acquire_lock:bb.a
bb.c:                                             ; preds = %bb.b, %.thread
  %i.g = phi i64 [ %i.d, %.thread ], [ %2, %bb.b ]
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @_thread_lock_acquire_lock._parser, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %.not34 = icmp eq ptr %i.h, null
  br i1 %.not34, label %bb.l, label %.thread40

.thread40:                                        ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ]   ; 2 uses
  %i.j = phi i64 [ %i.g, %bb.c ], [ %2, %bb.b ]   ; 2 uses
  %.not35 = icmp eq i64 %i.j, 0
  br i1 %.not35, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.thread40
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !46   ; 2 uses
  %.not36 = icmp eq ptr %i.k, null
  br i1 %.not36, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.k) #12 ; 3 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not37 = icmp eq i64 %i.j, 1
  br i1 %.not37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.026 = phi i32 [ %i.l, %bb.f ], [ 1, %bb.d ]
  %i.n = getelementptr i8, ptr %i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.thread40, %bb.g
  %.1 = phi i32 [ %.026, %bb.g ], [ %i.l, %bb.f ], [ 1, %.thread40 ]
  %.0 = phi ptr [ %i.o, %bb.g ], [ null, %bb.f ], [ null, %.thread40 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.p = call fastcc i32 @lock_acquire_parse_timeout(ptr noundef %.0, i32 noundef range(i32 0, -2147483648) %.1, ptr noundef %i.a)
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %_thread_lock_acquire_lock_impl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.a, align 8, !tbaa !141
  %i.t = call i32 @_PyMutex_LockTimed(ptr noundef %i.r, i64 noundef %i.s, i32 noundef 11) #12 ; 2 uses
  switch i32 %i.t, label %bb.k [
    i32 2, label %_thread_lock_acquire_lock_impl.exit
    i32 0, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.u = call ptr @PyErr_Occurred() #12
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.k, label %_thread_lock_acquire_lock_impl.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = icmp eq i32 %i.t, 1
  %i.w = zext i1 %i.v to i64
  %i.x = call ptr @PyBool_FromLong(i64 noundef %i.w) #12
  br label %_thread_lock_acquire_lock_impl.exit

_thread_lock_acquire_lock_impl.exit:              ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %.1.i.i = phi ptr [ null, %bb.h ], [ %i.x, %bb.k ], [ null, %bb.i ], [ null, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.c, %_thread_lock_acquire_lock_impl.exit
  %.027 = phi ptr [ null, %bb.e ], [ %.1.i.i, %_thread_lock_acquire_lock_impl.exit ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret ptr %.027
}

; Function Attrs: nounwind uwtable
define internal ptr @_thread_lock_acquire(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !225
  %i.d = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %2, 3
  %i.f = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.f, %i.e
  br i1 %or.cond5, label %.thread40, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.g = phi i64 [ %i.d, %.thread ], [ %2, %bb.b ]
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @_thread_lock_acquire._parser, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %.not34 = icmp eq ptr %i.h, null
  br i1 %.not34, label %bb.l, label %.thread40

.thread40:                                        ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ]   ; 2 uses
  %i.j = phi i64 [ %i.g, %bb.c ], [ %2, %bb.b ]   ; 2 uses
  %.not35 = icmp eq i64 %i.j, 0
  br i1 %.not35, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.thread40
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !46   ; 2 uses
  %.not36 = icmp eq ptr %i.k, null
  br i1 %.not36, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.k) #12 ; 3 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not37 = icmp eq i64 %i.j, 1
  br i1 %.not37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.026 = phi i32 [ %i.l, %bb.f ], [ 1, %bb.d ]
  %i.n = getelementptr i8, ptr %i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.thread40, %bb.g
  %.1 = phi i32 [ %.026, %bb.g ], [ %i.l, %bb.f ], [ 1, %.thread40 ]
  %.0 = phi ptr [ %i.o, %bb.g ], [ null, %bb.f ], [ null, %.thread40 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.p = call fastcc i32 @lock_acquire_parse_timeout(ptr noundef %.0, i32 noundef range(i32 0, -2147483648) %.1, ptr noundef %i.a)
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %_thread_lock_acquire_impl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.a, align 8, !tbaa !141
  %i.t = call i32 @_PyMutex_LockTimed(ptr noundef %i.r, i64 noundef %i.s, i32 noundef 11) #12 ; 2 uses
  switch i32 %i.t, label %bb.k [
    i32 2, label %_thread_lock_acquire_impl.exit
    i32 0, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.u = call ptr @PyErr_Occurred() #12
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.k, label %_thread_lock_acquire_impl.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = icmp eq i32 %i.t, 1
  %i.w = zext i1 %i.v to i64
  %i.x = call ptr @PyBool_FromLong(i64 noundef %i.w) #12
  br label %_thread_lock_acquire_impl.exit

_thread_lock_acquire_impl.exit:                   ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %.1.i = phi ptr [ null, %bb.h ], [ %i.x, %bb.k ], [ null, %bb.i ], [ null, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.c, %_thread_lock_acquire_impl.exit
  %.027 = phi ptr [ null, %bb.e ], [ %.1.i, %_thread_lock_acquire_impl.exit ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret ptr %.027
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_thread_lock_release_lock(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = tail call i32 @_PyMutex_TryUnlock(ptr noundef %i.a) #12
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_thread_lock_release_lock_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.100) #12
  br label %_thread_lock_release_lock_impl.exit

_thread_lock_release_lock_impl.exit:              ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ null, %bb.b ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_thread_lock_release(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = tail call i32 @_PyMutex_TryUnlock(ptr noundef %i.a) #12
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_thread_lock_release_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.100) #12
  br label %_thread_lock_release_impl.exit

_thread_lock_release_impl.exit:                   ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ null, %bb.b ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_thread_lock_locked_lock(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load atomic i8, ptr %i.a seq_cst, align 1
  %i.c = and i8 %i.b, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = tail call ptr @PyBool_FromLong(i64 noundef %i.d) #12
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @_thread_lock_locked(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load atomic i8, ptr %i.a seq_cst, align 1
  %i.c = and i8 %i.b, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = tail call ptr @PyBool_FromLong(i64 noundef %i.d) #12
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @_thread_lock___enter__(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i64 @_PyTime_FromSeconds(i32 noundef -1) #12
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = tail call i32 @_PyMutex_LockTimed(ptr noundef %i.b, i64 noundef %i.a, i32 noundef 11) #12 ; 2 uses
  switch i32 %i.c, label %bb.c [
    i32 2, label %_thread_lock___enter___impl.exit
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyErr_Occurred() #12
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.c, label %_thread_lock___enter___impl.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = icmp eq i32 %i.c, 1
  %i.f = zext i1 %i.e to i64
  %i.g = tail call ptr @PyBool_FromLong(i64 noundef %i.f) #12
  br label %_thread_lock___enter___impl.exit

_thread_lock___enter___impl.exit:                 ; preds = %bb.a, %bb.b, %bb.c
  %.1.i.i = phi ptr [ null, %bb.b ], [ %i.g, %bb.c ], [ null, %bb.a ]
  ret ptr %.1.i.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_thread_lock___exit__(ptr noundef %0, ptr readnone captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.92, i64 noundef %2, i64 noundef 3, i64 noundef 3) #12
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_thread_lock___exit___impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = tail call i32 @_PyMutex_TryUnlock(ptr noundef %i.b) #12
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %_thread_lock___exit___impl.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.100) #12
  br label %_thread_lock___exit___impl.exit

_thread_lock___exit___impl.exit:                  ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ @_Py_NoneStruct, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef nonnull ptr @_thread_lock__at_fork_reinit(ptr noundef writeonly captures(none) initializes((16, 17)) %0, ptr readnone captures(none) %1) #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  store i8 0, ptr %i.a, align 1
  ret ptr @_Py_NoneStruct
}

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @lock_acquire_parse_timeout(ptr noundef %0, i32 noundef range(i32 0, -2147483648) %1, ptr noundef nonnull initializes((0, 8)) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_PyTime_FromSeconds(i32 noundef -1) #12 ; 3 uses
  store i64 %i.a, ptr %2, align 8, !tbaa !141
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyTime_FromSecondsObject(ptr noundef nonnull %2, ptr noundef nonnull %0, i32 noundef 3) #12
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not21 = icmp eq i32 %1, 0
  %i.d = load i64, ptr %2, align 8, !tbaa !141    ; 4 uses
  br i1 %.not21, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %.not22 = icmp eq i64 %i.d, %i.a
  br i1 %.not22, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.97) #12
  br label %.critedge

.thread:                                          ; preds = %bb.c
  %i.f = icmp sgt i64 %i.d, -1
  %.not2326 = icmp eq i64 %i.d, %i.a              ; 2 uses
  %or.cond27 = select i1 %i.f, i1 true, i1 %.not2326
  br i1 %or.cond27, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.98) #12
  br label %.critedge

bb.g:                                             ; preds = %bb.d
  store i64 0, ptr %2, align 8, !tbaa !141
  br label %.critedge

bb.h:                                             ; preds = %.thread
  br i1 %.not2326, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = tail call i64 @_PyTime_AsMicroseconds(i64 noundef %i.d, i32 noundef 3) #12
  %i.i = load i64, ptr @PY_TIMEOUT_MAX, align 8, !tbaa !236
  %.not25 = icmp sgt i64 %i.h, %i.i
  br i1 %.not25, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.j = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.99) #12
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.b, %bb.f, %bb.e
  %.1 = phi i32 [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %bb.b ], [ -1, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ]
  ret i32 %.1
}

declare i64 @_PyTime_FromSeconds(i32 noundef) local_unnamed_addr #2

declare i64 @_PyTime_AsMicroseconds(i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @_PyMutex_TryUnlock(ptr noundef) local_unnamed_addr #2

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare i32 @_PyArg_NoPositional(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyArg_NoKeywords(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyType_GetModuleByDef(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @rlock_dealloc(ptr noundef %0) #0 {
bb.a:
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #12
  tail call void @PyObject_ClearWeakRefs(ptr noundef %0) #12
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !47  ; 4 uses
  %i.b = getelementptr i8, ptr %.val, i64 320
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !239
  tail call void %i.c(ptr noundef %0) #12
  %i.d = load i32, ptr %.val, align 8, !tbaa !25  ; 2 uses
  %.not.i = icmp sgt i32 %i.d, -1
  br i1 %.not.i, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %.val, align 8, !tbaa !25
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #12
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rlock_repr(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !243
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load atomic i8, ptr %i.c seq_cst, align 8
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !245
  %i.h = add i64 %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ @.str.84, %bb.b ], [ @.str.85, %bb.a ]
  %.0 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %i.j = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.k = getelementptr i8, ptr %.val, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !240
  %i.m = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.105, ptr noundef nonnull %i.i, ptr noundef %i.l, i64 noundef %i.b, i64 noundef %.0, ptr noundef nonnull %0) #12
  ret ptr %i.m
}

declare ptr @PyType_GenericAlloc(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @rlock_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
get_thread_state_by_cls.exit:
  %i.a = tail call ptr @PyType_GetModuleByDef(ptr noundef %0, ptr noundef nonnull @thread_module) #12, !inline_history !241 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr i8, ptr %.val.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = icmp eq ptr %0, %i.d
  br i1 %i.e, label %bb.b, label %bb.a

bb.a:                                             ; preds = %get_thread_state_by_cls.exit
  %i.f = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !242  ; 2 uses
  %i.h = getelementptr i8, ptr %i.d, i64 296      ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !242  ; 2 uses
  %i.j = icmp ne ptr %i.g, %i.i
  %i.k = icmp eq ptr %1, null
  %or.cond = or i1 %i.k, %i.j
  br i1 %or.cond, label %.thread23, label %.thread24

bb.b:                                             ; preds = %get_thread_state_by_cls.exit
  %.old1 = icmp eq ptr %1, null
  br i1 %.old1, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @_PyArg_NoPositional(ptr noundef nonnull @.str.114, ptr noundef nonnull %1) #12
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %rlock_new_impl.exit, label %.thread

.thread24:                                        ; preds = %bb.a
  %i.m = tail call i32 @_PyArg_NoPositional(ptr noundef nonnull @.str.114, ptr noundef nonnull %1) #12
  %.not25 = icmp eq i32 %i.m, 0
  br i1 %.not25, label %rlock_new_impl.exit, label %.thread24..thread23_crit_edge

.thread24..thread23_crit_edge:                    ; preds = %.thread24
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !242
  %.pre27 = load ptr, ptr %i.h, align 8, !tbaa !242
  br label %.thread23

.thread23:                                        ; preds = %.thread24..thread23_crit_edge, %bb.a
  %i.n = phi ptr [ %.pre27, %.thread24..thread23_crit_edge ], [ %i.i, %bb.a ]
  %i.o = phi ptr [ %.pre, %.thread24..thread23_crit_edge ], [ %i.g, %bb.a ]
  %i.p = icmp ne ptr %i.o, %i.n
  %i.q = icmp eq ptr %2, null
  %or.cond4 = or i1 %i.q, %i.p
  br i1 %or.cond4, label %bb.e, label %bb.d

.thread:                                          ; preds = %bb.b, %bb.c
  %.old3 = icmp eq ptr %2, null
  br i1 %.old3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread23, %.thread
  %i.r = tail call i32 @_PyArg_NoKeywords(ptr noundef nonnull @.str.114, ptr noundef nonnull %2) #12
  %.not22 = icmp eq i32 %i.r, 0
  br i1 %.not22, label %rlock_new_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread, %.thread23
  %i.s = getelementptr i8, ptr %0, i64 304
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !139
  %i.u = tail call ptr %i.t(ptr noundef %0, i64 noundef 0) #12, !inline_history !246 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %rlock_new_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.u, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  br label %rlock_new_impl.exit

rlock_new_impl.exit:                              ; preds = %bb.f, %bb.e, %.thread24, %bb.d, %bb.c
  %.0 = phi ptr [ null, %.thread24 ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.e ], [ %i.u, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_thread_RLock_acquire(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !225
  %i.d = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %2, 3
  %i.f = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.f, %i.e
  br i1 %or.cond5, label %.thread40, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.g = phi i64 [ %i.d, %.thread ], [ %2, %bb.b ]
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @_thread_RLock_acquire._parser, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %.not34 = icmp eq ptr %i.h, null
  br i1 %.not34, label %bb.l, label %.thread40

.thread40:                                        ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ]   ; 2 uses
  %i.j = phi i64 [ %i.g, %bb.c ], [ %2, %bb.b ]   ; 2 uses
  %.not35 = icmp eq i64 %i.j, 0
  br i1 %.not35, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.thread40
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !46   ; 2 uses
  %.not36 = icmp eq ptr %i.k, null
  br i1 %.not36, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.k) #12 ; 3 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not37 = icmp eq i64 %i.j, 1
  br i1 %.not37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.026 = phi i32 [ %i.l, %bb.f ], [ 1, %bb.d ]
  %i.n = getelementptr i8, ptr %i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.thread40, %bb.g
  %.1 = phi i32 [ %.026, %bb.g ], [ %i.l, %bb.f ], [ 1, %.thread40 ]
  %.0 = phi ptr [ %i.o, %bb.g ], [ null, %bb.f ], [ null, %.thread40 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.p = call fastcc i32 @lock_acquire_parse_timeout(ptr noundef %.0, i32 noundef range(i32 0, -2147483648) %.1, ptr noundef %i.a)
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %_thread_RLock_acquire_impl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.a, align 8, !tbaa !141
  %i.t = call i32 @_PyRecursiveMutex_LockTimed(ptr noundef %i.r, i64 noundef %i.s, i32 noundef 11) #12 ; 2 uses
  switch i32 %i.t, label %bb.k [
    i32 2, label %_thread_RLock_acquire_impl.exit
    i32 0, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.u = call ptr @PyErr_Occurred() #12
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.k, label %_thread_RLock_acquire_impl.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = icmp eq i32 %i.t, 1
  %i.w = zext i1 %i.v to i64
  %i.x = call ptr @PyBool_FromLong(i64 noundef %i.w) #12
  br label %_thread_RLock_acquire_impl.exit

_thread_RLock_acquire_impl.exit:                  ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %.1.i = phi ptr [ null, %bb.h ], [ %i.x, %bb.k ], [ null, %bb.i ], [ null, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.c, %_thread_RLock_acquire_impl.exit
  %.027 = phi ptr [ null, %bb.e ], [ %.1.i, %_thread_RLock_acquire_impl.exit ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret ptr %.027
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_thread_RLock_release(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = tail call i32 @_PyRecursiveMutex_TryUnlock(ptr noundef %i.a) #12
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_thread_RLock_release_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.111) #12
  br label %_thread_RLock_release_impl.exit

_thread_RLock_release_impl.exit:                  ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ null, %bb.b ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_thread_RLock_locked(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load atomic i8, ptr %i.a seq_cst, align 1
  %i.c = and i8 %i.b, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = tail call ptr @PyBool_FromLong(i64 noundef %i.d) #12
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @_thread_RLock__is_owned(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = tail call i32 @_PyRecursiveMutex_IsLockedByCurrentThread(ptr noundef %i.a) #12
  %i.c = sext i32 %i.b to i64
  %i.d = tail call ptr @PyBool_FromLong(i64 noundef %i.c) #12
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_thread_RLock__acquire_restore(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = call i32 (ptr, ptr, ...) @PyArg_Parse(ptr noundef %1, ptr noundef nonnull @.str.112, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #12
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_thread_RLock__acquire_restore_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  call void @_PyRecursiveMutex_Lock(ptr noundef %i.d) #12
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.a, align 8, !tbaa !236
  store atomic i64 %i.f, ptr %i.e monotonic, align 8
  %i.g = load i64, ptr %i.b, align 8, !tbaa !141
  %i.h = add i64 %i.g, -1
  %i.i = getelementptr i8, ptr %0, i64 32
  store i64 %i.h, ptr %i.i, align 8, !tbaa !245
  br label %_thread_RLock__acquire_restore_impl.exit

_thread_RLock__acquire_restore_impl.exit:         ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_thread_RLock__release_save(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = tail call i32 @_PyRecursiveMutex_IsLockedByCurrentThread(ptr noundef %i.a) #12
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.111) #12
  br label %_thread_RLock__release_save_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !243
  %i.f = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !245
  %i.h = add i64 %i.g, 1
  store i64 0, ptr %i.f, align 8, !tbaa !245
  tail call void @_PyRecursiveMutex_Unlock(ptr noundef %i.a) #12
  %i.i = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.113, i64 noundef %i.h, i64 noundef %i.e) #12
  br label %_thread_RLock__release_save_impl.exit

_thread_RLock__release_save_impl.exit:            ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_thread_RLock__recursion_count(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = tail call i32 @_PyRecursiveMutex_IsLockedByCurrentThread(ptr noundef %i.a) #12
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !245
  %i.e = add i64 %i.d, 1
  %i.f = tail call ptr @PyLong_FromSize_t(i64 noundef %i.e) #12
  br label %_thread_RLock__recursion_count_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @PyLong_FromLong(i64 noundef 0) #12
  br label %_thread_RLock__recursion_count_impl.exit

_thread_RLock__recursion_count_impl.exit:         ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_thread_RLock___enter__(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i64 @_PyTime_FromSeconds(i32 noundef -1) #12
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = tail call i32 @_PyRecursiveMutex_LockTimed(ptr noundef %i.b, i64 noundef %i.a, i32 noundef 11) #12 ; 2 uses
  switch i32 %i.c, label %bb.c [
    i32 2, label %_thread_RLock___enter___impl.exit
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyErr_Occurred() #12
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.c, label %_thread_RLock___enter___impl.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = icmp eq i32 %i.c, 1
  %i.f = zext i1 %i.e to i64
  %i.g = tail call ptr @PyBool_FromLong(i64 noundef %i.f) #12
  br label %_thread_RLock___enter___impl.exit

_thread_RLock___enter___impl.exit:                ; preds = %bb.a, %bb.b, %bb.c
  %.1.i.i = phi ptr [ null, %bb.b ], [ %i.g, %bb.c ], [ null, %bb.a ]
  ret ptr %.1.i.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_thread_RLock___exit__(ptr noundef %0, ptr readnone captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.92, i64 noundef %2, i64 noundef 3, i64 noundef 3) #12
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_thread_RLock___exit___impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = tail call i32 @_PyRecursiveMutex_TryUnlock(ptr noundef %i.b) #12
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %_thread_RLock___exit___impl.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !46
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.111) #12
  br label %_thread_RLock___exit___impl.exit

_thread_RLock___exit___impl.exit:                 ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ @_Py_NoneStruct, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef nonnull ptr @_thread_RLock__at_fork_reinit(ptr noundef writeonly captures(none) initializes((16, 40)) %0, ptr readnone captures(none) %1) #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret ptr @_Py_NoneStruct
}

declare i32 @_PyRecursiveMutex_LockTimed(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @_PyRecursiveMutex_TryUnlock(ptr noundef) local_unnamed_addr #2

declare i32 @_PyRecursiveMutex_IsLockedByCurrentThread(ptr noundef) local_unnamed_addr #2

declare i32 @PyArg_Parse(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @_PyRecursiveMutex_Lock(ptr noundef) local_unnamed_addr #2

declare void @_PyRecursiveMutex_Unlock(ptr noundef) local_unnamed_addr #2

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyLong_FromSize_t(i64 noundef) local_unnamed_addr #2

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @localdummy_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyObject_ClearWeakRefs(ptr noundef nonnull %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !47  ; 4 uses
  %i.d = getelementptr i8, ptr %.val, i64 320
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !239
  tail call void %i.e(ptr noundef nonnull %0) #12
end_hunk_0
