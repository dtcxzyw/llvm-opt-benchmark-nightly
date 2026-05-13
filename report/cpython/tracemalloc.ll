inline.NumInlined: 133
inline.NumDeleted: 42
begin_hunk_0_@_PyTraceMalloc_GetTraceback:bb.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @traceback_to_pyobject(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @_Py_hashtable_get(ptr noundef nonnull %1, ptr noundef %0) #13 ; 5 uses
  %.not35 = icmp eq ptr %i.a, null
  br i1 %.not35, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %i.a, align 8, !tbaa !205
  br label %_Py_NewRef.exit

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.f = load i16, ptr %i.e, align 1, !tbaa !199
  %i.g = zext i16 %i.f to i64
  %i.h = tail call ptr @PyTuple_New(i64 noundef %i.g) #13 ; 13 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_Py_NewRef.exit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.j = load i16, ptr %i.e, align 1, !tbaa !199
  %.not3747.not = icmp eq i16 %i.j, 0
  br i1 %.not3747.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr i8, ptr %0, i64 12
  %i.l = getelementptr i8, ptr %i.h, i64 32
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.m = getelementptr [12 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.n = tail call ptr @PyTuple_New(i64 noundef 2) #13 ; 7 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.m, align 1, !tbaa !200  ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !205  ; 2 uses
  %i.r = icmp ugt i32 %i.q, -1073741825
  br i1 %i.r, label %_Py_NewRef.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = add nuw i32 %i.q, 1
  store i32 %i.s, ptr %i.p, align 8, !tbaa !205
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.h, %bb.g
  %i.t = getelementptr i8, ptr %i.n, i64 32
  store ptr %i.p, ptr %i.t, align 8, !tbaa !209
  %i.u = getelementptr i8, ptr %i.m, i64 8
  %i.v = load i32, ptr %i.u, align 1, !tbaa !202
  %i.w = zext i32 %i.v to i64
  %i.x = tail call ptr @PyLong_FromUnsignedLong(i64 noundef %i.w) #13 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %bb.n

bb.i:                                             ; preds = %_Py_NewRef.exit.i
  %i.z = load i32, ptr %i.n, align 8, !tbaa !205  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.z, -1
  br i1 %.not.i.i, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.n, align 8, !tbaa !205
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.n) #13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.i, %bb.j, %bb.k
  %i.ac = load i32, ptr %i.h, align 8, !tbaa !205 ; 2 uses
  %.not.i38 = icmp sgt i32 %i.ac, -1
  br i1 %.not.i38, label %bb.l, label %_Py_NewRef.exit

bb.l:                                             ; preds = %.loopexit
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.h, align 8, !tbaa !205
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %_Py_NewRef.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #13
  br label %_Py_NewRef.exit

bb.n:                                             ; preds = %_Py_NewRef.exit.i
  %i.af = getelementptr i8, ptr %i.n, i64 40
  store ptr %i.x, ptr %i.af, align 8, !tbaa !209
  %i.ag = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  store ptr %i.n, ptr %i.ag, align 8, !tbaa !209
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i16, ptr %i.e, align 1, !tbaa !199
  %i.ai = zext i16 %i.ah to i64
  %.not37 = icmp samesign ult i64 %indvars.iv.next, %i.ai
  br i1 %.not37, label %bb.f, label %.critedge, !llvm.loop !233

.critedge:                                        ; preds = %bb.n, %.preheader
  br i1 %.not, label %_Py_NewRef.exit, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.aj = tail call i32 @_Py_hashtable_set(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull %i.h) #13
  %i.ak = icmp slt i32 %i.aj, 0
  %i.al = load i32, ptr %i.h, align 8, !tbaa !205 ; 4 uses
  br i1 %i.ak, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %.not.i = icmp sgt i32 %i.al, -1
  br i1 %.not.i, label %bb.q, label %Py_DECREF.exit

bb.q:                                             ; preds = %bb.p
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %i.h, align 8, !tbaa !205
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #13
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.p, %bb.q, %bb.r
  %i.ao = tail call ptr @PyErr_NoMemory() #13     ; 0 uses
  br label %_Py_NewRef.exit

bb.s:                                             ; preds = %bb.o
  %i.ap = icmp ugt i32 %i.al, -1073741825
  br i1 %i.ap, label %_Py_NewRef.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = add nuw i32 %i.al, 1
  store i32 %i.aq, ptr %i.h, align 8, !tbaa !205
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.t, %bb.s, %bb.m, %bb.l, %.loopexit, %bb.d, %bb.c, %.critedge, %bb.e, %Py_DECREF.exit
  %.3 = phi ptr [ %i.h, %.critedge ], [ %i.a, %bb.d ], [ null, %Py_DECREF.exit ], [ null, %bb.e ], [ null, %bb.m ], [ %i.a, %bb.c ], [ null, %.loopexit ], [ null, %bb.l ], [ %i.h, %bb.s ], [ %i.h, %bb.t ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define hidden void @_PyTraceMalloc_ClearTraces() local_unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10488), i8 0, i8 1 seq_cst seq_cst, align 1
  %i.b = extractvalue { i8, i1 } %i.a, 1
  br i1 %i.b, label %PyMutex_LockFlags.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyMutex_LockTimed(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10488), i64 noundef -1, i32 noundef 0) #13 ; 0 uses
  br label %PyMutex_LockFlags.exit

PyMutex_LockFlags.exit:                           ; preds = %bb.a, %bb.b
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10356), align 4, !tbaa !210
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %PyMutex_LockFlags.exit
  %i.e = tail call i32 @PyThread_tss_set(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10560), ptr noundef nonnull @_Py_TrueStruct) #13 ; 0 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10536), align 8, !tbaa !193
  tail call void @_Py_hashtable_clear(ptr noundef %i.f) #13
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10544), align 8, !tbaa !194
  tail call void @_Py_hashtable_clear(ptr noundef %i.g) #13
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10528), align 8, !tbaa !192
  tail call void @_Py_hashtable_clear(ptr noundef %i.h) #13
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10512), align 8, !tbaa !18
  tail call void @_Py_hashtable_clear(ptr noundef %i.i) #13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10496), i8 0, i64 16, i1 false)
  %i.j = tail call i32 @PyThread_tss_set(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10560), ptr noundef null) #13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %PyMutex_LockFlags.exit
  %i.k = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10488), i8 1, i8 0 seq_cst seq_cst, align 1
  %i.l = extractvalue { i8, i1 } %i.k, 1
  br i1 %i.l, label %_PyMutex_Unlock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @PyMutex_Unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10488)) #13
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyTraceMalloc_GetTraces() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct._Py_hashtable_allocator_t, align 8 ; 4 uses
  %1 = alloca %struct._Py_hashtable_allocator_t, align 8 ; 4 uses
  %2 = alloca %struct._Py_hashtable_allocator_t, align 8 ; 4 uses
  %3 = alloca %struct.get_traces_t, align 8       ; 12 uses
  %i.a = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10488), i8 0, i8 1 seq_cst seq_cst, align 1
  %i.b = extractvalue { i8, i1 } %i.a, 1
  br i1 %i.b, label %PyMutex_LockFlags.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyMutex_LockTimed(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10488), i64 noundef -1, i32 noundef 0) #13 ; 0 uses
  br label %PyMutex_LockFlags.exit

PyMutex_LockFlags.exit:                           ; preds = %bb.a, %bb.b
  %i.d = tail call i32 @PyThread_tss_set(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10560), ptr noundef nonnull @_Py_TrueStruct) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.e, align 8, !tbaa !234
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.h = tail call ptr @PyList_New(i64 noundef 0) #13 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !236
  %i.j = icmp ne ptr %i.h, null
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10356), align 4
  %i.l = icmp ne i32 %i.k, 0
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.c, label %Py_DECREF.exit23

bb.c:                                             ; preds = %PyMutex_LockFlags.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @__const.hashtable_new.hashtable_alloc, i64 16, i1 false)
  %i.m = call ptr @_Py_hashtable_new_full(ptr noundef nonnull @_Py_hashtable_hash_ptr, ptr noundef nonnull @_Py_hashtable_compare_direct, ptr noundef null, ptr noundef nonnull @tracemalloc_pyobject_decref, ptr noundef nonnull %2) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  store ptr %i.m, ptr %i.g, align 8, !tbaa !237
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10536), align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) @__const.hashtable_new.hashtable_alloc, i64 16, i1 false)
  %i.p = call ptr @_Py_hashtable_new_full(ptr noundef nonnull @_Py_hashtable_hash_ptr, ptr noundef nonnull @_Py_hashtable_compare_direct, ptr noundef null, ptr noundef nonnull @raw_free, ptr noundef nonnull %1) #13 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %tracemalloc_copy_traces.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = call i32 @_Py_hashtable_foreach(ptr noundef %i.o, ptr noundef nonnull @tracemalloc_copy_trace, ptr noundef nonnull %i.p) #13
  %.not.i25 = icmp eq i32 %i.r, 0
  br i1 %.not.i25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_Py_hashtable_destroy(ptr noundef nonnull %i.p) #13
  br label %tracemalloc_copy_traces.exit.thread

tracemalloc_copy_traces.exit.thread:              ; preds = %bb.d, %bb.f
  store ptr null, ptr %3, align 8, !tbaa !238
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  store ptr %i.p, ptr %3, align 8, !tbaa !238
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10544), align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @__const.hashtable_new.hashtable_alloc, i64 16, i1 false)
  %i.t = call ptr @_Py_hashtable_new_full(ptr noundef nonnull @hashtable_hash_uint, ptr noundef nonnull @_Py_hashtable_compare_direct, ptr noundef null, ptr noundef nonnull @tracemalloc_destroy_domain, ptr noundef nonnull %0) #13 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %tracemalloc_copy_domains.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = call i32 @_Py_hashtable_foreach(ptr noundef %i.s, ptr noundef nonnull @tracemalloc_copy_domain, ptr noundef nonnull %i.t) #13
  %.not.i26 = icmp eq i32 %i.v, 0
  br i1 %.not.i26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_Py_hashtable_destroy(ptr noundef nonnull %i.t) #13
  br label %tracemalloc_copy_domains.exit.thread

tracemalloc_copy_domains.exit.thread:             ; preds = %bb.g, %bb.i
  store ptr null, ptr %i.f, align 8, !tbaa !239
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  store ptr %i.t, ptr %i.f, align 8, !tbaa !239
  %i.w = call i32 @_Py_hashtable_foreach(ptr noundef nonnull %i.p, ptr noundef nonnull @tracemalloc_get_traces_fill, ptr noundef nonnull %3) #13
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !239
  %i.y = call i32 @_Py_hashtable_foreach(ptr noundef %i.x, ptr noundef nonnull @tracemalloc_get_traces_domain, ptr noundef nonnull %3) #13
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %Py_DECREF.exit23, label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.k
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !209 ; 4 uses
  %.not17 = icmp eq ptr %i.aa, null
  br i1 %.not17, label %Py_DECREF.exit23, label %bb.l

bb.l:                                             ; preds = %.critedge
  store ptr null, ptr %i.i, align 8, !tbaa !209
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !205 ; 2 uses
  %.not.i22 = icmp sgt i32 %i.ab, -1
  br i1 %.not.i22, label %bb.m, label %Py_DECREF.exit23

bb.m:                                             ; preds = %bb.l
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !205
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %Py_DECREF.exit23.sink.split, label %Py_DECREF.exit23

bb.n:                                             ; preds = %bb.c, %tracemalloc_copy_traces.exit.thread, %tracemalloc_copy_domains.exit.thread
  %4 = call ptr @PyErr_NoMemory() #13             ; 0 uses
  store ptr null, ptr %i.i, align 8, !tbaa !209
  %i.ae = load i32, ptr %i.h, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.ae, -1
  br i1 %.not.i, label %bb.o, label %Py_DECREF.exit23

bb.o:                                             ; preds = %bb.n
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.h, align 8, !tbaa !205
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %Py_DECREF.exit23.sink.split, label %Py_DECREF.exit23

Py_DECREF.exit23.sink.split:                      ; preds = %bb.o, %bb.m
  %.sink = phi ptr [ %i.aa, %bb.m ], [ %i.h, %bb.o ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink) #13
  br label %Py_DECREF.exit23

Py_DECREF.exit23:                                 ; preds = %Py_DECREF.exit23.sink.split, %bb.o, %bb.n, %bb.m, %bb.l, %.critedge, %bb.k, %PyMutex_LockFlags.exit
  %i.ah = call i32 @PyThread_tss_set(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10560), ptr noundef null) #13 ; 0 uses
  %i.ai = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10488), i8 1, i8 0 seq_cst seq_cst, align 1
  %i.aj = extractvalue { i8, i1 } %i.ai, 1
  br i1 %i.aj, label %_PyMutex_Unlock.exit, label %bb.p

bb.p:                                             ; preds = %Py_DECREF.exit23
  call void @PyMutex_Unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10488)) #13
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %Py_DECREF.exit23, %bb.p
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !237 ; 2 uses
  %.not19 = icmp eq ptr %i.ak, null
  br i1 %.not19, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_PyMutex_Unlock.exit
  call void @_Py_hashtable_destroy(ptr noundef nonnull %i.ak) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_PyMutex_Unlock.exit
  %i.al = load ptr, ptr %3, align 8, !tbaa !238   ; 2 uses
  %.not20 = icmp eq ptr %i.al, null
  br i1 %.not20, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_Py_hashtable_destroy(ptr noundef nonnull %i.al) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !239 ; 2 uses
  %.not21 = icmp eq ptr %i.am, null
  br i1 %.not21, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_Py_hashtable_destroy(ptr noundef nonnull %i.am) #13
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret ptr %i.an
}

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

declare i64 @_Py_hashtable_hash_ptr(ptr noundef) #1

declare i32 @_Py_hashtable_compare_direct(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @tracemalloc_pyobject_decref(ptr noundef %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !205    ; 2 uses
  %.not.i = icmp sgt i32 %i.a, -1
  br i1 %.not.i, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %i.a, -1                     ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !205
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %0) #13
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare i32 @_Py_hashtable_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @tracemalloc_get_traces_fill(ptr readnone captures(none) %0, ptr readnone captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !234
  %i.c = getelementptr i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !237
  %i.e = tail call ptr @PyTuple_New(i64 noundef 4) #13 ; 21 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %trace_to_pyobject.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.b to i64
  %i.h = tail call ptr @PyLong_FromSize_t(i64 noundef %i.g) #13 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.e, align 8, !tbaa !205  ; 2 uses
  %.not.i32.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i32.i, label %bb.d, label %trace_to_pyobject.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.e, align 8, !tbaa !205
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %trace_to_pyobject.exit.thread

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #13
  br label %trace_to_pyobject.exit.thread

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.e, i64 32
  store ptr %i.h, ptr %i.m, align 8, !tbaa !209
  %i.n = load i64, ptr %2, align 8, !tbaa !218
  %i.o = tail call ptr @PyLong_FromSize_t(i64 noundef %i.n) #13 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %i.e, align 8, !tbaa !205  ; 2 uses
  %.not.i30.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i30.i, label %bb.h, label %trace_to_pyobject.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.e, align 8, !tbaa !205
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %trace_to_pyobject.exit.thread

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #13
  br label %trace_to_pyobject.exit.thread

bb.j:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.e, i64 40
  store ptr %i.o, ptr %i.t, align 8, !tbaa !209
  %i.u = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !228
  %i.w = tail call fastcc ptr @traceback_to_pyobject(ptr noundef %i.v, ptr noundef %i.d) ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.y = load i32, ptr %i.e, align 8, !tbaa !205  ; 2 uses
  %.not.i28.i = icmp sgt i32 %i.y, -1
  br i1 %.not.i28.i, label %bb.l, label %trace_to_pyobject.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.e, align 8, !tbaa !205
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.m, label %trace_to_pyobject.exit.thread

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #13
  br label %trace_to_pyobject.exit.thread

bb.n:                                             ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %i.e, i64 48
  store ptr %i.w, ptr %i.ab, align 8, !tbaa !209
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !228
  %i.ad = getelementptr i8, ptr %i.ac, i64 10
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !199
  %i.af = zext i16 %i.ae to i64
  %i.ag = tail call ptr @PyLong_FromUnsignedLong(i64 noundef %i.af) #13 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ai = load i32, ptr %i.e, align 8, !tbaa !205 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ai, -1
  br i1 %.not.i.i, label %bb.p, label %trace_to_pyobject.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.e, align 8, !tbaa !205
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.q, label %trace_to_pyobject.exit.thread

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #13
  br label %trace_to_pyobject.exit.thread

bb.r:                                             ; preds = %bb.n
  %i.al = getelementptr i8, ptr %i.e, i64 56
  store ptr %i.ag, ptr %i.al, align 8, !tbaa !209
  %i.am = getelementptr i8, ptr %3, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !236
  %i.ao = tail call i32 @PyList_Append(ptr noundef %i.an, ptr noundef nonnull %i.e) #13
  %i.ap = load i32, ptr %i.e, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.ap, -1
  br i1 %.not.i, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.e, align 8, !tbaa !205
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.t, label %Py_DECREF.exit

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #13
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.r, %bb.s, %bb.t
  %.lobit = lshr i32 %i.ao, 31
  br label %trace_to_pyobject.exit.thread

end_hunk_0
