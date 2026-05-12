inline.NumInlined: 133
inline.NumDeleted: 42
begin_hunk_0_@_PyTraceMalloc_GetTraces:bb.a
  %0 = alloca %struct._Py_hashtable_allocator_t, align 8 ; 4 uses
  %1 = alloca %struct._Py_hashtable_allocator_t, align 8 ; 4 uses
  %2 = alloca %struct._Py_hashtable_allocator_t, align 8 ; 4 uses
  %3 = alloca %struct.get_traces_t, align 8       ; 13 uses
  %i.a = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10488), i8 0, i8 1 seq_cst seq_cst, align 1
  %i.b = extractvalue { i8, i1 } %i.a, 1
  br i1 %i.b, label %PyMutex_LockFlags.exit, label %bb.b
end_hunk_0
begin_hunk_1_@_PyTraceMalloc_GetTraces:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.h = tail call ptr @PyList_New(i64 noundef 0) #13 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !236
  %i.j = icmp ne ptr %i.h, null
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10356), align 4
end_hunk_1
begin_hunk_2_@_PyTraceMalloc_GetTraces:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  store ptr %i.m, ptr %i.g, align 8, !tbaa !237
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %5, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10536), align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) @__const.hashtable_new.hashtable_alloc, i64 16, i1 false)
  %i.p = call ptr @_Py_hashtable_new_full(ptr noundef nonnull @_Py_hashtable_hash_ptr, ptr noundef nonnull @_Py_hashtable_compare_direct, ptr noundef null, ptr noundef nonnull @raw_free, ptr noundef nonnull %1) #13 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %tracemalloc_copy_traces.exit.thread, label %bb.e
end_hunk_2
begin_hunk_3_@_PyTraceMalloc_GetTraces:bb.a

tracemalloc_copy_traces.exit.thread:              ; preds = %bb.d, %bb.f
  store ptr null, ptr %3, align 8, !tbaa !238
  br label %5

bb.g:                                             ; preds = %bb.e
  store ptr %i.p, ptr %3, align 8, !tbaa !238
end_hunk_3
begin_hunk_4_@_PyTraceMalloc_GetTraces:bb.a

tracemalloc_copy_domains.exit.thread:             ; preds = %bb.g, %bb.i
  store ptr null, ptr %i.f, align 8, !tbaa !239
  br label %5

bb.j:                                             ; preds = %bb.h
  store ptr %i.t, ptr %i.f, align 8, !tbaa !239
  %4 = load ptr, ptr %3, align 8, !tbaa !238
  %i.w = call i32 @_Py_hashtable_foreach(ptr noundef %4, ptr noundef nonnull @tracemalloc_get_traces_fill, ptr noundef nonnull %3) #13
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.k, label %.critedge

end_hunk_4
begin_hunk_5_@_PyTraceMalloc_GetTraces:bb.a
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %Py_DECREF.exit23.sink.split, label %Py_DECREF.exit23

5:                                                ; preds = %tracemalloc_copy_domains.exit.thread, %tracemalloc_copy_traces.exit.thread, %bb.c
  %6 = call ptr @PyErr_NoMemory() #13             ; 0 uses
  %7 = load ptr, ptr %i.i, align 8, !tbaa !209    ; 4 uses
  %.not18 = icmp eq ptr %7, null
  br i1 %.not18, label %Py_DECREF.exit23, label %bb.n

bb.n:                                             ; preds = %5
  store ptr null, ptr %i.i, align 8, !tbaa !209
  %i.ae = load i32, ptr %7, align 8, !tbaa !205   ; 2 uses
  %.not.i = icmp sgt i32 %i.ae, -1
  br i1 %.not.i, label %bb.o, label %Py_DECREF.exit23

bb.o:                                             ; preds = %bb.n
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %7, align 8, !tbaa !205
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %Py_DECREF.exit23.sink.split, label %Py_DECREF.exit23

Py_DECREF.exit23.sink.split:                      ; preds = %bb.o, %bb.m
  %.sink = phi ptr [ %i.aa, %bb.m ], [ %7, %bb.o ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink) #13
  br label %Py_DECREF.exit23

Py_DECREF.exit23:                                 ; preds = %Py_DECREF.exit23.sink.split, %bb.o, %bb.n, %bb.m, %bb.l, %5, %.critedge, %bb.k, %PyMutex_LockFlags.exit
  %i.ah = call i32 @PyThread_tss_set(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10560), ptr noundef null) #13 ; 0 uses
  %i.ai = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10488), i8 1, i8 0 seq_cst seq_cst, align 1
  %i.aj = extractvalue { i8, i1 } %i.ai, 1
end_hunk_5
