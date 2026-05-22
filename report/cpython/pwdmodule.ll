inline.NumInlined: 20
inline.NumDeleted: 10
begin_hunk_0_@pwd_getpwuid:bb.a
  br label %.thread

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %i.n, %bb.e ], [ %i.k, %bb.d ] ; 6 uses
  %.02234 = phi i64 [ %i.m, %bb.e ], [ %spec.store.select, %bb.d ] ; 3 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !7
  %i.r = call i32 @getpwuid_r(i32 noundef %i.q, ptr noundef nonnull %2, ptr noundef nonnull %i.p, i64 noundef %.02234, ptr noundef nonnull %i.b) #4 ; 2 uses
  %.not29 = icmp eq i32 %i.r, 0
  br i1 %.not29, label %.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store ptr null, ptr %i.b, align 8, !tbaa !19
  %.not31 = icmp eq i32 %i.r, 34
  br i1 %.not31, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.s = icmp sgt i64 %.02234, 4611686018427387903
  br i1 %i.s, label %.thread, label %bb.e

.thread:                                          ; preds = %.lr.ph, %bb.g, %bb.f, %._crit_edge
  %.125 = phi ptr [ %.024.lcssa, %._crit_edge ], [ %i.p, %bb.f ], [ %i.p, %bb.g ], [ %i.p, %.lr.ph ] ; 2 uses
  %i.t = phi i1 [ true, %._crit_edge ], [ false, %.lr.ph ], [ true, %bb.g ], [ false, %bb.f ]
  call void @PyEval_RestoreThread(ptr noundef %i.h) #4
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %bb.n

bb.h:                                             ; preds = %.thread
  call void @PyMem_RawFree(ptr noundef %.125) #4
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = call ptr @PyErr_NoMemory() #4
  br label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.h
  %i.x = load i32, ptr %i.a, align 4, !tbaa !7
  %i.y = call ptr @_PyLong_FromUid(i32 noundef %i.x) #4 ; 5 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %Py_DECREF.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr @PyExc_KeyError, align 8, !tbaa !17
  %i.ab = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aa, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.y) #4 ; 0 uses
  %i.ac = load i32, ptr %i.y, align 8, !tbaa !16  ; 2 uses
  %.not.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.y, align 8, !tbaa !16
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.l
  call void @_Py_Dealloc(ptr noundef nonnull %i.y) #4
  br label %Py_DECREF.exit

bb.n:                                             ; preds = %.thread
  %i.af = call fastcc ptr @mkpwent(ptr noundef %0, ptr noundef %i.u)
  call void @PyMem_RawFree(ptr noundef %.125) #4
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.n, %bb.i
  %.1 = phi ptr [ %i.w, %bb.i ], [ %i.af, %bb.n ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.l ], [ null, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.c, %Py_DECREF.exit
  %.2 = phi ptr [ %.1, %Py_DECREF.exit ], [ null, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @pwd_getpwnam(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %2 = alloca %struct.passwd, align 8             ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr i8, ptr %.val, i64 168
  %.val6 = load i64, ptr %i.d, align 8, !tbaa !23
  %i.e = and i64 %.val6, 268435456
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %1) #4
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.f = tail call ptr @PyUnicode_EncodeFSDefault(ptr noundef nonnull %1) #4 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %pwd_getpwnam_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @PyBytes_AsStringAndSize(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef null) #4
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = call ptr @PyEval_SaveThread() #4
  %i.k = call i64 @sysconf(i32 noundef 70) #4     ; 2 uses
  %i.l = icmp eq i64 %i.k, -1
  %spec.store.select.i = select i1 %i.l, i64 1024, i64 %i.k ; 2 uses
  %i.m = call ptr @PyMem_RawRealloc(ptr noundef null, i64 noundef %spec.store.select.i) #4 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %._crit_edge.i, label %.lr.ph.i

bb.f:                                             ; preds = %bb.h
  %i.o = shl i64 %.02132.i, 1                     ; 2 uses
  %i.p = call ptr @PyMem_RawRealloc(ptr noundef nonnull %i.r, i64 noundef %i.o) #4 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  %.022.lcssa.i = phi ptr [ null, %bb.e ], [ %i.r, %bb.f ]
  store ptr null, ptr %i.b, align 8, !tbaa !19
  br label %.thread.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %i.r = phi ptr [ %i.p, %bb.f ], [ %i.m, %bb.e ] ; 6 uses
  %.02132.i = phi i64 [ %i.o, %bb.f ], [ %spec.store.select.i, %bb.e ] ; 3 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.t = call i32 @getpwnam_r(ptr noundef %i.s, ptr noundef nonnull %2, ptr noundef nonnull %i.r, i64 noundef %.02132.i, ptr noundef nonnull %i.b) #4 ; 2 uses
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  store ptr null, ptr %i.b, align 8, !tbaa !19
  %.not29.i = icmp eq i32 %i.t, 34
  br i1 %.not29.i, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g
  %i.u = icmp sgt i64 %.02132.i, 4611686018427387903
  br i1 %i.u, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.h, %bb.g, %.lr.ph.i, %._crit_edge.i
  %i.v = phi i1 [ true, %._crit_edge.i ], [ false, %bb.g ], [ true, %bb.h ], [ false, %.lr.ph.i ]
  %.1.i = phi ptr [ %.022.lcssa.i, %._crit_edge.i ], [ %i.r, %.lr.ph.i ], [ %i.r, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  call void @PyEval_RestoreThread(ptr noundef %i.j) #4
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.thread.i
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = call ptr @PyErr_NoMemory() #4            ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.z = load ptr, ptr @PyExc_KeyError, align 8, !tbaa !17
  %i.aa = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.z, ptr noundef nonnull @.str.9, ptr noundef nonnull %1) #4 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %.thread.i
  %i.ab = call fastcc ptr @mkpwent(ptr noundef %0, ptr noundef %i.w)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.d
  %.023.i = phi ptr [ null, %bb.d ], [ null, %bb.j ], [ null, %bb.k ], [ %i.ab, %bb.l ] ; 3 uses
  %.2.i = phi ptr [ null, %bb.d ], [ %.1.i, %bb.j ], [ %.1.i, %bb.k ], [ %.1.i, %bb.l ]
  call void @PyMem_RawFree(ptr noundef %.2.i) #4
  %i.ac = load i32, ptr %i.f, align 8, !tbaa !16  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i, label %bb.n, label %pwd_getpwnam_impl.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.f, align 8, !tbaa !16
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.o, label %pwd_getpwnam_impl.exit

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.f) #4
  br label %pwd_getpwnam_impl.exit

pwd_getpwnam_impl.exit:                           ; preds = %bb.c, %bb.m, %bb.n, %bb.o
  %.0.i = phi ptr [ null, %bb.c ], [ %.023.i, %bb.m ], [ %.023.i, %bb.n ], [ %.023.i, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.p

bb.p:                                             ; preds = %pwd_getpwnam_impl.exit, %bb.b
  %.0 = phi ptr [ %.0.i, %pwd_getpwnam_impl.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @pwd_getpwall(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyList_New(i64 noundef 0) #4 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %pwd_getpwall_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = cmpxchg ptr @pwd_db_mutex, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %_PyMutex_Lock.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @PyMutex_Lock(ptr noundef nonnull @pwd_db_mutex) #4
  br label %_PyMutex_Lock.exit.i

_PyMutex_Lock.exit.i:                             ; preds = %bb.c, %bb.b
  tail call void @setpwent() #4
  %i.e = tail call ptr @getpwent() #4             ; 2 uses
  %.not26.i = icmp eq ptr %i.e, null
  br i1 %.not26.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_PyMutex_Lock.exit.i, %Py_DECREF.exit23.i
  %i.f = phi ptr [ %i.m, %Py_DECREF.exit23.i ], [ %i.e, %_PyMutex_Lock.exit.i ]
  %i.g = tail call fastcc ptr @mkpwent(ptr noundef %0, ptr noundef %i.f) ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %._crit_edge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.i = tail call i32 @PyList_Append(ptr noundef nonnull %i.a, ptr noundef nonnull %i.g) #4
  %.not20.i = icmp eq i32 %i.i, 0
  br i1 %.not20.i, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %.not.i22.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i22.i, label %bb.f, label %Py_DECREF.exit23.i

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.g, align 8, !tbaa !16
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %Py_DECREF.exit23.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #4
  br label %Py_DECREF.exit23.i

Py_DECREF.exit23.i:                               ; preds = %bb.g, %bb.f, %bb.e
  %i.m = tail call ptr @getpwent() #4             ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !33

._crit_edge.i:                                    ; preds = %Py_DECREF.exit23.i, %bb.d, %.lr.ph.i, %_PyMutex_Lock.exit.i
  %.not.lcssa.i = phi i1 [ true, %_PyMutex_Lock.exit.i ], [ true, %Py_DECREF.exit23.i ], [ false, %bb.d ], [ false, %.lr.ph.i ]
  %.1.i = phi ptr [ null, %_PyMutex_Lock.exit.i ], [ %i.g, %Py_DECREF.exit23.i ], [ %i.g, %bb.d ], [ null, %.lr.ph.i ] ; 4 uses
  tail call void @endpwent() #4
  %i.n = cmpxchg ptr @pwd_db_mutex, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.o = extractvalue { i8, i1 } %i.n, 1
  br i1 %i.o, label %_PyMutex_Unlock.exit.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  tail call void @PyMutex_Unlock(ptr noundef nonnull @pwd_db_mutex) #4
  br label %_PyMutex_Unlock.exit.i

_PyMutex_Unlock.exit.i:                           ; preds = %bb.h, %._crit_edge.i
  br i1 %.not.lcssa.i, label %pwd_getpwall_impl.exit, label %bb.i

bb.i:                                             ; preds = %_PyMutex_Unlock.exit.i
  %.not.i25.i = icmp eq ptr %.1.i, null
  br i1 %.not.i25.i, label %Py_XDECREF.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = load i32, ptr %.1.i, align 8, !tbaa !16  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i.i.i, label %bb.k, label %Py_XDECREF.exit.i

bb.k:                                             ; preds = %bb.j
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %.1.i, align 8, !tbaa !16
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.l, label %Py_XDECREF.exit.i

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1.i) #4
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.s = load i32, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i.i, label %bb.m, label %pwd_getpwall_impl.exit

bb.m:                                             ; preds = %Py_XDECREF.exit.i
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.a, align 8, !tbaa !16
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.n, label %pwd_getpwall_impl.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #4
  br label %pwd_getpwall_impl.exit

pwd_getpwall_impl.exit:                           ; preds = %bb.a, %_PyMutex_Unlock.exit.i, %Py_XDECREF.exit.i, %bb.m, %bb.n
  %.0.i = phi ptr [ null, %bb.a ], [ %i.a, %_PyMutex_Unlock.exit.i ], [ null, %Py_XDECREF.exit.i ], [ null, %bb.m ], [ null, %bb.n ]
  ret ptr %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @_Py_Uid_Converter(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyEval_SaveThread() local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #3

declare ptr @PyMem_RawRealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @getpwuid_r(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @PyEval_RestoreThread(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @PyMem_RawFree(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare ptr @_PyLong_FromUid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mkpwent(ptr noundef %0, ptr noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #4
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call ptr @PyStructSequence_New(ptr noundef %i.b) #4 ; 12 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %_Py_NewRef.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !16 ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_Py_NewRef.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr @_Py_NoneStruct, align 8, !tbaa !16
  br label %_Py_NewRef.exit.thread

_Py_NewRef.exit:                                  ; preds = %bb.b
  %i.i = tail call ptr @PyUnicode_DecodeFSDefault(ptr noundef nonnull %i.e) #4 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.o, label %_Py_NewRef.exit.thread

_Py_NewRef.exit.thread:                           ; preds = %bb.d, %bb.c, %_Py_NewRef.exit
  %i.k = phi ptr [ %i.i, %_Py_NewRef.exit ], [ @_Py_NoneStruct, %bb.c ], [ @_Py_NoneStruct, %bb.d ]
  tail call void @PyStructSequence_SetItem(ptr noundef nonnull %i.c, i64 noundef 0, ptr noundef nonnull %i.k) #4
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37   ; 2 uses
  %.not72 = icmp eq ptr %i.m, null
  br i1 %.not72, label %bb.e, label %_Py_NewRef.exit89

bb.e:                                             ; preds = %_Py_NewRef.exit.thread
  %i.n = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !16 ; 2 uses
  %i.o = icmp ugt i32 %i.n, -1073741825
  br i1 %i.o, label %_Py_NewRef.exit89.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw i32 %i.n, 1
  store i32 %i.p, ptr @_Py_NoneStruct, align 8, !tbaa !16
  br label %_Py_NewRef.exit89.thread

_Py_NewRef.exit89:                                ; preds = %_Py_NewRef.exit.thread
  %i.q = tail call ptr @PyUnicode_DecodeFSDefault(ptr noundef nonnull %i.m) #4 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %_Py_NewRef.exit89.thread

_Py_NewRef.exit89.thread:                         ; preds = %bb.f, %bb.e, %_Py_NewRef.exit89
  %i.s = phi ptr [ %i.q, %_Py_NewRef.exit89 ], [ @_Py_NoneStruct, %bb.e ], [ @_Py_NoneStruct, %bb.f ]
  tail call void @PyStructSequence_SetItem(ptr noundef nonnull %i.c, i64 noundef 1, ptr noundef nonnull %i.s) #4
  %i.t = getelementptr i8, ptr %1, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !38
  %i.v = tail call ptr @_PyLong_FromUid(i32 noundef %i.u) #4 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.o, label %bb.g

bb.g:                                             ; preds = %_Py_NewRef.exit89.thread
  tail call void @PyStructSequence_SetItem(ptr noundef nonnull %i.c, i64 noundef 2, ptr noundef nonnull %i.v) #4
  %i.x = getelementptr i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !39
  %i.z = tail call ptr @_PyLong_FromGid(i32 noundef %i.y) #4 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @PyStructSequence_SetItem(ptr noundef nonnull %i.c, i64 noundef 3, ptr noundef nonnull %i.z) #4
  %i.ab = getelementptr i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %.not73 = icmp eq ptr %i.ac, null
  br i1 %.not73, label %bb.i, label %_Py_NewRef.exit90

bb.i:                                             ; preds = %bb.h
  %i.ad = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !16 ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, -1073741825
  br i1 %i.ae, label %_Py_NewRef.exit90.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = add nuw i32 %i.ad, 1
  store i32 %i.af, ptr @_Py_NoneStruct, align 8, !tbaa !16
  br label %_Py_NewRef.exit90.thread

_Py_NewRef.exit90:                                ; preds = %bb.h
  %i.ag = tail call ptr @PyUnicode_DecodeFSDefault(ptr noundef nonnull %i.ac) #4 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.o, label %_Py_NewRef.exit90.thread

_Py_NewRef.exit90.thread:                         ; preds = %bb.j, %bb.i, %_Py_NewRef.exit90
  %i.ai = phi ptr [ %i.ag, %_Py_NewRef.exit90 ], [ @_Py_NoneStruct, %bb.i ], [ @_Py_NoneStruct, %bb.j ]
  tail call void @PyStructSequence_SetItem(ptr noundef nonnull %i.c, i64 noundef 4, ptr noundef nonnull %i.ai) #4
  %i.aj = getelementptr i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !41 ; 2 uses
  %.not74 = icmp eq ptr %i.ak, null
  br i1 %.not74, label %bb.k, label %_Py_NewRef.exit91

bb.k:                                             ; preds = %_Py_NewRef.exit90.thread
  %i.al = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !16 ; 2 uses
  %i.am = icmp ugt i32 %i.al, -1073741825
  br i1 %i.am, label %_Py_NewRef.exit91.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = add nuw i32 %i.al, 1
  store i32 %i.an, ptr @_Py_NoneStruct, align 8, !tbaa !16
  br label %_Py_NewRef.exit91.thread

_Py_NewRef.exit91:                                ; preds = %_Py_NewRef.exit90.thread
  %i.ao = tail call ptr @PyUnicode_DecodeFSDefault(ptr noundef nonnull %i.ak) #4 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.o, label %_Py_NewRef.exit91.thread

_Py_NewRef.exit91.thread:                         ; preds = %bb.l, %bb.k, %_Py_NewRef.exit91
  %i.aq = phi ptr [ %i.ao, %_Py_NewRef.exit91 ], [ @_Py_NoneStruct, %bb.k ], [ @_Py_NoneStruct, %bb.l ]
  tail call void @PyStructSequence_SetItem(ptr noundef nonnull %i.c, i64 noundef 5, ptr noundef nonnull %i.aq) #4
  %i.ar = getelementptr i8, ptr %1, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %.not75 = icmp eq ptr %i.as, null
  br i1 %.not75, label %bb.m, label %_Py_NewRef.exit92

bb.m:                                             ; preds = %_Py_NewRef.exit91.thread
  %i.at = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !16 ; 2 uses
  %i.au = icmp ugt i32 %i.at, -1073741825
  br i1 %i.au, label %.thread116, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = add nuw i32 %i.at, 1
  store i32 %i.av, ptr @_Py_NoneStruct, align 8, !tbaa !16
  br label %.thread116

_Py_NewRef.exit92:                                ; preds = %_Py_NewRef.exit91.thread
  %i.aw = tail call ptr @PyUnicode_DecodeFSDefault(ptr noundef nonnull %i.as) #4 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.o, label %.thread116

.thread116:                                       ; preds = %_Py_NewRef.exit92, %bb.m, %bb.n
  %i.ay = phi ptr [ %i.aw, %_Py_NewRef.exit92 ], [ @_Py_NoneStruct, %bb.m ], [ @_Py_NoneStruct, %bb.n ]
  tail call void @PyStructSequence_SetItem(ptr noundef nonnull %i.c, i64 noundef 6, ptr noundef nonnull %i.ay) #4
  br label %Py_DECREF.exit

bb.o:                                             ; preds = %_Py_NewRef.exit92, %_Py_NewRef.exit91, %_Py_NewRef.exit90, %bb.g, %_Py_NewRef.exit89.thread, %_Py_NewRef.exit89, %_Py_NewRef.exit
  %i.az = load i32, ptr %i.c, align 8, !tbaa !16  ; 2 uses
  %.not.i = icmp sgt i32 %i.az, -1
  br i1 %.not.i, label %bb.p, label %Py_DECREF.exit

bb.p:                                             ; preds = %bb.o
  %i.ba = add nsw i32 %i.az, -1                   ; 2 uses
  store i32 %i.ba, ptr %i.c, align 8, !tbaa !16
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.q, label %Py_DECREF.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #4
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.q, %bb.p, %bb.o, %.thread116, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.c, %.thread116 ], [ null, %bb.o ], [ null, %bb.p ], [ null, %bb.q ]
  ret ptr %.1
}

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

declare ptr @PyStructSequence_New(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_DecodeFSDefault(ptr noundef) local_unnamed_addr #1

end_hunk_0
