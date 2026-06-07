inline.NumInlined: 1359
inline.NumDeleted: 295
begin_hunk_0_@_PyMem_MiRawFree:bb.a
bb.g:                                             ; preds = %bb.b
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext false, ptr noundef nonnull %1)
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @_PyMem_DefaultRawMalloc(i64 noundef %0) local_unnamed_addr #40 {
bb.a:
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  %i.a = tail call noalias noundef ptr @malloc(i64 noundef %spec.store.select.i) #65
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @_PyMem_DefaultRawCalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #40 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = icmp eq i64 %1, 0
  %or.cond.i = or i1 %i.a, %i.b                   ; 2 uses
  %spec.select.i = select i1 %or.cond.i, i64 1, i64 %0
  %spec.select8.i = select i1 %or.cond.i, i64 1, i64 %1
  %i.c = tail call noalias noundef ptr @calloc(i64 noundef %spec.select.i, i64 noundef %spec.select8.i) #66
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @_PyMem_DefaultRawRealloc(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #43 {
bb.a:
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %1, i64 1)
  %i.a = tail call noalias noundef ptr @realloc(ptr noundef %0, i64 noundef %spec.store.select.i) #67
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_PyMem_DefaultRawFree(ptr noundef captures(none) %0) local_unnamed_addr #45 {
bb.a:
  tail call void @free(ptr noundef %0) #55
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_PyMem_DefaultRawWcsdup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #46 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef %0) #61 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 2305843009213693950
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.a, 2
  %i.d = add nuw nsw i64 %i.c, 4                  ; 2 uses
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef %i.d) #65 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.e, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden ptr @_PyMem_ArenaAlloc(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @mmap64(ptr noundef null, i64 noundef %1, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #55 ; 4 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_PyAnnotateMemoryMap.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_Py_GetConfig() #55
  %i.d = getelementptr i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !344
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_PyAnnotateMemoryMap.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = tail call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, i64 noundef %i.f, i64 noundef %1, ptr noundef nonnull @.str.35) #55 ; 0 uses
  br label %_PyAnnotateMemoryMap.exit

_PyAnnotateMemoryMap.exit:                        ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.a, %bb.b ], [ %i.a, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind uwtable
define hidden void @_PyMem_ArenaFree(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @munmap(ptr noundef nonnull %1, i64 noundef %2) #55 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -1, 1) i32 @_PyMem_GetAllocatorName(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #36 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !60
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.36) #61
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.37) #61
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.38) #61
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(15) @.str.39) #61
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.40) #61
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(15) @.str.41) #61
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.42) #61
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(13) @.str.43) #61
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.sink = phi i32 [ 1, %bb.a ], [ 1, %bb.c ], [ 5, %bb.e ], [ 7, %bb.g ], [ 3, %bb.i ], [ 8, %bb.h ], [ 6, %bb.f ], [ 2, %bb.d ], [ 1, %bb.b ], [ 4, %bb.j ]
  store i32 %.sink, ptr %1, align 4, !tbaa !7
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j
  %.0 = phi i32 [ -1, %bb.j ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyMem_SetupAllocators(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 0, i8 1 seq_cst seq_cst, align 1
  %i.b = extractvalue { i8, i1 } %i.a, 1
  br i1 %i.b, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #55
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  switch i32 %0, label %set_up_allocators_unlocked.exit [
    i32 0, label %bb.g
    i32 1, label %bb.c
    i32 2, label %set_default_allocator_unlocked.exit12.i
    i32 5, label %bb.d
    i32 6, label %bb.d
    i32 7, label %bb.e
    i32 8, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.f
  ]

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !40
  store ptr @_PyMem_RawMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !40
  store ptr @_PyMem_RawCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 960), align 8, !tbaa !40
  store ptr @_PyMem_RawRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 968), align 8, !tbaa !40
  store ptr @_PyMem_RawFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 976), align 8, !tbaa !40
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !40
  store ptr @_PyObject_Malloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 992), align 8, !tbaa !40
  store ptr @_PyObject_Calloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1000), align 8, !tbaa !40
  store ptr @_PyObject_Realloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1008), align 8, !tbaa !40
  store ptr @_PyObject_Free, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1016), align 8, !tbaa !40
  br label %.sink.split.i

set_default_allocator_unlocked.exit12.i:          ; preds = %_PyMutex_Lock.exit
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !40
  store ptr @_PyMem_RawMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !40
  store ptr @_PyMem_RawCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 960), align 8, !tbaa !40
  store ptr @_PyMem_RawRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 968), align 8, !tbaa !40
  store ptr @_PyMem_RawFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 976), align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1072), ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), i64 40, i1 false), !tbaa.struct !349
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1064), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 960), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 968), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 976), align 8, !tbaa !40
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !40
  store ptr @_PyObject_Malloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 992), align 8, !tbaa !40
  store ptr @_PyObject_Calloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1000), align 8, !tbaa !40
  store ptr @_PyObject_Realloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1008), align 8, !tbaa !40
  store ptr @_PyObject_Free, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1016), align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1120), ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), i64 40, i1 false), !tbaa.struct !349
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1112), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !40
  store ptr @_PyMem_DebugMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 992), align 8, !tbaa !40
  store ptr @_PyMem_DebugCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1000), align 8, !tbaa !40
  store ptr @_PyMem_DebugRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1008), align 8, !tbaa !40
  store ptr @_PyMem_DebugFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1016), align 8, !tbaa !40
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), align 8, !tbaa !40
  store ptr @_PyObject_Malloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1032), align 8, !tbaa !40
  store ptr @_PyObject_Calloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1040), align 8, !tbaa !40
  store ptr @_PyObject_Realloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1048), align 8, !tbaa !40
  store ptr @_PyObject_Free, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1056), align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1168), ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), i64 40, i1 false), !tbaa.struct !349
  br label %.sink.split.i

bb.d:                                             ; preds = %_PyMutex_Lock.exit, %_PyMutex_Lock.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40, i1 false), !tbaa.struct !349
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.pymalloc, i64 40, i1 false), !tbaa.struct !349
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.pymalloc, i64 40, i1 false), !tbaa.struct !349
  %i.c = icmp eq i32 %0, 6                        ; 2 uses
  %i.d = zext i1 %i.c to i32
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1208), align 8, !tbaa !350
  br i1 %i.c, label %set_up_debug_hooks_unlocked.exit.i, label %bb.g

set_up_debug_hooks_unlocked.exit.i:               ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1072), ptr noundef nonnull align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1064), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 960), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 968), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 976), align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1120), ptr noundef nonnull align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.pymalloc, i64 40, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1112), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !40
  store ptr @_PyMem_DebugMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 992), align 8, !tbaa !40
  store ptr @_PyMem_DebugCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1000), align 8, !tbaa !40
  store ptr @_PyMem_DebugRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1008), align 8, !tbaa !40
  store ptr @_PyMem_DebugFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1016), align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1168), ptr noundef nonnull align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.pymalloc, i64 40, i1 false)
  br label %.sink.split.i

bb.e:                                             ; preds = %_PyMutex_Lock.exit, %_PyMutex_Lock.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.mimalloc_raw, i64 40, i1 false), !tbaa.struct !349
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.mimalloc, i64 40, i1 false), !tbaa.struct !349
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.mimalloc_obj, i64 40, i1 false), !tbaa.struct !349
  %i.e = icmp eq i32 %0, 8                        ; 2 uses
  %i.f = zext i1 %i.e to i32
  store i32 %i.f, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1208), align 8, !tbaa !350
  br i1 %i.e, label %set_up_debug_hooks_unlocked.exit15.i, label %bb.g

set_up_debug_hooks_unlocked.exit15.i:             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1072), ptr noundef nonnull align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.mimalloc_raw, i64 40, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1064), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 960), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 968), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 976), align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1120), ptr noundef nonnull align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.mimalloc, i64 40, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1112), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !40
  store ptr @_PyMem_DebugMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 992), align 8, !tbaa !40
  store ptr @_PyMem_DebugCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1000), align 8, !tbaa !40
  store ptr @_PyMem_DebugRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1008), align 8, !tbaa !40
  store ptr @_PyMem_DebugFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1016), align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1168), ptr noundef nonnull align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.mimalloc_obj, i64 40, i1 false)
  br label %.sink.split.i

bb.f:                                             ; preds = %_PyMutex_Lock.exit, %_PyMutex_Lock.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40, i1 false), !tbaa.struct !349
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40, i1 false), !tbaa.struct !349
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), ptr noundef nonnull readonly align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40, i1 false), !tbaa.struct !349
  %i.g = icmp eq i32 %0, 4                        ; 2 uses
  %i.h = zext i1 %i.g to i32
  store i32 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1208), align 8, !tbaa !350
  br i1 %i.g, label %set_up_debug_hooks_unlocked.exit18.i, label %bb.g

set_up_debug_hooks_unlocked.exit18.i:             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1072), ptr noundef nonnull align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1064), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 960), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 968), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 976), align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1120), ptr noundef nonnull align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1112), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !40
  store ptr @_PyMem_DebugMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 992), align 8, !tbaa !40
  store ptr @_PyMem_DebugCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1000), align 8, !tbaa !40
  store ptr @_PyMem_DebugRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1008), align 8, !tbaa !40
  store ptr @_PyMem_DebugFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1016), align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1168), ptr noundef nonnull align 8 dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40, i1 false)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %set_up_debug_hooks_unlocked.exit18.i, %set_up_debug_hooks_unlocked.exit15.i, %set_up_debug_hooks_unlocked.exit.i, %set_default_allocator_unlocked.exit12.i, %bb.c
  %.sink19.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1160), %set_up_debug_hooks_unlocked.exit18.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1160), %set_up_debug_hooks_unlocked.exit15.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1160), %set_up_debug_hooks_unlocked.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1160), %set_default_allocator_unlocked.exit12.i ], [ null, %bb.c ]
  %_PyMem_DebugMalloc.sink.i = phi ptr [ @_PyMem_DebugMalloc, %set_up_debug_hooks_unlocked.exit18.i ], [ @_PyMem_DebugMalloc, %set_up_debug_hooks_unlocked.exit15.i ], [ @_PyMem_DebugMalloc, %set_up_debug_hooks_unlocked.exit.i ], [ @_PyMem_DebugMalloc, %set_default_allocator_unlocked.exit12.i ], [ @_PyObject_Malloc, %bb.c ]
  %_PyMem_DebugCalloc.sink.i = phi ptr [ @_PyMem_DebugCalloc, %set_up_debug_hooks_unlocked.exit18.i ], [ @_PyMem_DebugCalloc, %set_up_debug_hooks_unlocked.exit15.i ], [ @_PyMem_DebugCalloc, %set_up_debug_hooks_unlocked.exit.i ], [ @_PyMem_DebugCalloc, %set_default_allocator_unlocked.exit12.i ], [ @_PyObject_Calloc, %bb.c ]
  %_PyMem_DebugRealloc.sink.i = phi ptr [ @_PyMem_DebugRealloc, %set_up_debug_hooks_unlocked.exit18.i ], [ @_PyMem_DebugRealloc, %set_up_debug_hooks_unlocked.exit15.i ], [ @_PyMem_DebugRealloc, %set_up_debug_hooks_unlocked.exit.i ], [ @_PyMem_DebugRealloc, %set_default_allocator_unlocked.exit12.i ], [ @_PyObject_Realloc, %bb.c ]
  %_PyMem_DebugFree.sink.i = phi ptr [ @_PyMem_DebugFree, %set_up_debug_hooks_unlocked.exit18.i ], [ @_PyMem_DebugFree, %set_up_debug_hooks_unlocked.exit15.i ], [ @_PyMem_DebugFree, %set_up_debug_hooks_unlocked.exit.i ], [ @_PyMem_DebugFree, %set_default_allocator_unlocked.exit12.i ], [ @_PyObject_Free, %bb.c ]
  %.sink.i = phi i32 [ 1, %set_up_debug_hooks_unlocked.exit18.i ], [ 1, %set_up_debug_hooks_unlocked.exit15.i ], [ 1, %set_up_debug_hooks_unlocked.exit.i ], [ 1, %set_default_allocator_unlocked.exit12.i ], [ 0, %bb.c ]
  store ptr %.sink19.i, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), align 8, !tbaa !40
  store ptr %_PyMem_DebugMalloc.sink.i, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1032), align 8, !tbaa !40
  store ptr %_PyMem_DebugCalloc.sink.i, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1040), align 8, !tbaa !40
  store ptr %_PyMem_DebugRealloc.sink.i, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1048), align 8, !tbaa !40
  store ptr %_PyMem_DebugFree.sink.i, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1056), align 8, !tbaa !40
  store i32 %.sink.i, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1208), align 8, !tbaa !350
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i, %bb.f, %bb.e, %bb.d, %_PyMutex_Lock.exit
  br label %set_up_allocators_unlocked.exit

set_up_allocators_unlocked.exit:                  ; preds = %_PyMutex_Lock.exit, %bb.g
  %.0.i = phi i32 [ 0, %bb.g ], [ -1, %_PyMutex_Lock.exit ]
  %i.i = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 1, i8 0 seq_cst seq_cst, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_PyMutex_Unlock.exit, label %bb.h

bb.h:                                             ; preds = %set_up_allocators_unlocked.exit
  tail call void @PyMutex_Unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #55
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %set_up_allocators_unlocked.exit, %bb.h
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @_PyMem_GetCurrentAllocatorName() local_unnamed_addr #2 {
bb.a:
  %i.a = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 0, i8 1 seq_cst seq_cst, align 1
  %i.b = extractvalue { i8, i1 } %i.a, 1
  br i1 %i.b, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #55
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), ptr noundef nonnull readonly dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40)
  %.not.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  %bcmp.i21.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), ptr noundef nonnull readonly dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40)
  %.not43.i = icmp eq i32 %bcmp.i21.i, 0
  br i1 %.not43.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %bcmp.i22.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), ptr noundef nonnull readonly dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40)
  %.not44.i = icmp eq i32 %bcmp.i22.i, 0
  br i1 %.not44.i, label %get_current_allocator_name_unlocked.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %bcmp.i24.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), ptr noundef nonnull readonly dereferenceable(40) @__const.get_current_allocator_name_unlocked.pymalloc, i64 40)
  %.not45.i = icmp eq i32 %bcmp.i24.i, 0
  br i1 %.not45.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %bcmp.i25.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), ptr noundef nonnull readonly dereferenceable(40) @__const.get_current_allocator_name_unlocked.pymalloc, i64 40)
  %.not46.i = icmp eq i32 %bcmp.i25.i, 0
  br i1 %.not46.i, label %get_current_allocator_name_unlocked.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_PyMutex_Lock.exit
  %bcmp.i26.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), ptr noundef nonnull readonly dereferenceable(40) @__const.get_current_allocator_name_unlocked.mimalloc_raw, i64 40)
  %.not47.i = icmp eq i32 %bcmp.i26.i, 0
  br i1 %.not47.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %bcmp.i27.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), ptr noundef nonnull readonly dereferenceable(40) @__const.get_current_allocator_name_unlocked.mimalloc, i64 40)
  %.not48.i = icmp eq i32 %bcmp.i27.i, 0
  br i1 %.not48.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %bcmp.i28.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), ptr noundef nonnull readonly dereferenceable(40) @__const.get_current_allocator_name_unlocked.mimalloc_obj, i64 40)
  %.not49.i = icmp eq i32 %bcmp.i28.i, 0
  br i1 %.not49.i, label %get_current_allocator_name_unlocked.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %bcmp.i29.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), ptr noundef nonnull readonly dereferenceable(40) @__const.get_current_allocator_name_unlocked.dbg_raw, i64 40)
  %.not50.i = icmp eq i32 %bcmp.i29.i, 0
  br i1 %.not50.i, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  %bcmp.i30.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), ptr noundef nonnull readonly dereferenceable(40) @__const.get_current_allocator_name_unlocked.dbg_mem, i64 40)
  %.not51.i = icmp eq i32 %bcmp.i30.i, 0
  br i1 %.not51.i, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %bcmp.i31.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), ptr noundef nonnull readonly dereferenceable(40) @__const.get_current_allocator_name_unlocked.dbg_obj, i64 40)
  %.not52.i = icmp eq i32 %bcmp.i31.i, 0
  br i1 %.not52.i, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %bcmp.i32.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1072), ptr noundef nonnull readonly dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40)
  %.not53.i = icmp eq i32 %bcmp.i32.i, 0
  br i1 %.not53.i, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %bcmp.i33.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1120), ptr noundef nonnull readonly dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40)
  %.not54.i = icmp eq i32 %bcmp.i33.i, 0
  br i1 %.not54.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %bcmp.i34.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1168), ptr noundef nonnull readonly dereferenceable(40) @__const.get_current_allocator_name_unlocked.malloc_alloc, i64 40)
  %.not55.i = icmp eq i32 %bcmp.i34.i, 0
  br i1 %.not55.i, label %get_current_allocator_name_unlocked.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %bcmp.i36.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1120), ptr noundef nonnull readonly dereferenceable(40) @__const.get_current_allocator_name_unlocked.pymalloc, i64 40)
  %.not56.i = icmp eq i32 %bcmp.i36.i, 0
  br i1 %.not56.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %bcmp.i37.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1168), ptr noundef nonnull readonly dereferenceable(40) @__const.get_current_allocator_name_unlocked.pymalloc, i64 40)
  %.not57.i = icmp eq i32 %bcmp.i37.i, 0
  br i1 %.not57.i, label %get_current_allocator_name_unlocked.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.m
  %bcmp.i38.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1072), ptr noundef nonnull readonly dereferenceable(40) @__const.get_current_allocator_name_unlocked.mimalloc_raw, i64 40)
  %.not58.i = icmp eq i32 %bcmp.i38.i, 0
  br i1 %.not58.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %bcmp.i39.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1120), ptr noundef nonnull readonly dereferenceable(40) @__const.get_current_allocator_name_unlocked.mimalloc, i64 40)
  %.not59.i = icmp eq i32 %bcmp.i39.i, 0
  br i1 %.not59.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %bcmp.i40.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1168), ptr noundef nonnull readonly dereferenceable(40) @__const.get_current_allocator_name_unlocked.mimalloc_obj, i64 40)
  %.not60.i = icmp eq i32 %bcmp.i40.i, 0
  br i1 %.not60.i, label %get_current_allocator_name_unlocked.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.l, %bb.k, %bb.j
  br label %get_current_allocator_name_unlocked.exit

get_current_allocator_name_unlocked.exit:         ; preds = %bb.d, %bb.f, %bb.i, %bb.o, %bb.q, %bb.t, %bb.u
  %.1.i = phi ptr [ @.str.40, %bb.i ], [ @.str.42, %bb.d ], [ @.str.38, %bb.f ], [ null, %bb.u ], [ @.str.43, %bb.o ], [ @.str.39, %bb.q ], [ @.str.41, %bb.t ]
  %i.c = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 1, i8 0 seq_cst seq_cst, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %_PyMutex_Unlock.exit, label %bb.v

bb.v:                                             ; preds = %get_current_allocator_name_unlocked.exit
  tail call void @PyMutex_Unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #55
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %get_current_allocator_name_unlocked.exit, %bb.v
  ret ptr %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @_PyMem_DebugEnabled() local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1208), align 8, !tbaa !350
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @PyMem_SetupDebugHooks() local_unnamed_addr #2 {
bb.a:
  %i.a = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 0, i8 1 seq_cst seq_cst, align 1
  %i.b = extractvalue { i8, i1 } %i.a, 1
  br i1 %i.b, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #55
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !514
  %i.d = icmp eq ptr %i.c, @_PyMem_DebugRawMalloc
  br i1 %i.d, label %set_up_debug_hooks_domain_unlocked.exit.i, label %bb.c

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1072), ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), i64 40, i1 false), !tbaa.struct !349
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1064), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 960), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 968), align 8, !tbaa !40
  store ptr @_PyMem_DebugRawFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 976), align 8, !tbaa !40
  br label %set_up_debug_hooks_domain_unlocked.exit.i

set_up_debug_hooks_domain_unlocked.exit.i:        ; preds = %bb.c, %_PyMutex_Lock.exit
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 992), align 8, !tbaa !515
  %i.f = icmp eq ptr %i.e, @_PyMem_DebugMalloc
  br i1 %i.f, label %set_up_debug_hooks_domain_unlocked.exit1.i, label %bb.d

bb.d:                                             ; preds = %set_up_debug_hooks_domain_unlocked.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1120), ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), i64 40, i1 false), !tbaa.struct !349
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1112), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), align 8, !tbaa !40
  store ptr @_PyMem_DebugMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 992), align 8, !tbaa !40
  store ptr @_PyMem_DebugCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1000), align 8, !tbaa !40
  store ptr @_PyMem_DebugRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1008), align 8, !tbaa !40
  store ptr @_PyMem_DebugFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1016), align 8, !tbaa !40
  br label %set_up_debug_hooks_domain_unlocked.exit1.i

set_up_debug_hooks_domain_unlocked.exit1.i:       ; preds = %bb.d, %set_up_debug_hooks_domain_unlocked.exit.i
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1032), align 8, !tbaa !516
  %i.h = icmp eq ptr %i.g, @_PyMem_DebugMalloc
  br i1 %i.h, label %set_up_debug_hooks_unlocked.exit, label %bb.e

bb.e:                                             ; preds = %set_up_debug_hooks_domain_unlocked.exit1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1168), ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), i64 40, i1 false), !tbaa.struct !349
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1160), ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), align 8, !tbaa !40
  store ptr @_PyMem_DebugMalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1032), align 8, !tbaa !40
  store ptr @_PyMem_DebugCalloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1040), align 8, !tbaa !40
  store ptr @_PyMem_DebugRealloc, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1048), align 8, !tbaa !40
  store ptr @_PyMem_DebugFree, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1056), align 8, !tbaa !40
  br label %set_up_debug_hooks_unlocked.exit

set_up_debug_hooks_unlocked.exit:                 ; preds = %set_up_debug_hooks_domain_unlocked.exit1.i, %bb.e
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1208), align 8, !tbaa !350
  %i.i = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 1, i8 0 seq_cst seq_cst, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_PyMutex_Unlock.exit, label %bb.f

bb.f:                                             ; preds = %set_up_debug_hooks_unlocked.exit
  tail call void @PyMutex_Unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #55
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %set_up_debug_hooks_unlocked.exit, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PyMem_GetAllocator(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 40)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 0, i8 1 seq_cst seq_cst, align 1
  %i.b = extractvalue { i8, i1 } %i.a, 1
  br i1 %i.b, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #55
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  switch i32 %0, label %bb.f [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), i64 40, i1 false), !tbaa.struct !349
  br label %get_allocator_unlocked.exit

bb.d:                                             ; preds = %_PyMutex_Lock.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), i64 40, i1 false), !tbaa.struct !349
  br label %get_allocator_unlocked.exit

bb.e:                                             ; preds = %_PyMutex_Lock.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), i64 40, i1 false), !tbaa.struct !349
  br label %get_allocator_unlocked.exit

bb.f:                                             ; preds = %_PyMutex_Lock.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  br label %get_allocator_unlocked.exit

get_allocator_unlocked.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.c = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 1, i8 0 seq_cst seq_cst, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %_PyMutex_Unlock.exit, label %bb.g

bb.g:                                             ; preds = %get_allocator_unlocked.exit
  tail call void @PyMutex_Unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #55
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %get_allocator_unlocked.exit, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PyMem_SetAllocator(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 0, i8 1 seq_cst seq_cst, align 1
  %i.b = extractvalue { i8, i1 } %i.a, 1
  br i1 %i.b, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #55
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  switch i32 %0, label %set_allocator_unlocked.exit [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !349
  br label %set_allocator_unlocked.exit

bb.d:                                             ; preds = %_PyMutex_Lock.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 984), ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !349
  br label %set_allocator_unlocked.exit

bb.e:                                             ; preds = %_PyMutex_Lock.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !349
  br label %set_allocator_unlocked.exit

set_allocator_unlocked.exit:                      ; preds = %_PyMutex_Lock.exit, %bb.c, %bb.d, %bb.e
  %i.c = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 1, i8 0 seq_cst seq_cst, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %_PyMutex_Unlock.exit, label %bb.f

bb.f:                                             ; preds = %set_allocator_unlocked.exit
  tail call void @PyMutex_Unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #55
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %set_allocator_unlocked.exit, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PyObject_GetArenaAllocator(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 0, i8 1 seq_cst seq_cst, align 1
  %i.b = extractvalue { i8, i1 } %i.a, 1
  br i1 %i.b, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #55
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1216), i64 24, i1 false), !tbaa.struct !517
  %i.c = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 1, i8 0 seq_cst seq_cst, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %_PyMutex_Unlock.exit, label %bb.c

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  tail call void @PyMutex_Unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #55
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %_PyMutex_Lock.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PyObject_SetArenaAllocator(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 0, i8 1 seq_cst seq_cst, align 1
  %i.b = extractvalue { i8, i1 } %i.a, 1
  br i1 %i.b, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #55
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1216), ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !517
  %i.c = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936), i8 1, i8 0 seq_cst seq_cst, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %_PyMutex_Unlock.exit, label %bb.c

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  tail call void @PyMutex_Unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 936)) #55
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %_PyMutex_Lock.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyObject_VirtualAlloc(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1224), align 8, !tbaa !518
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1216), align 8, !tbaa !519
  %i.c = tail call ptr %i.a(ptr noundef %i.b, i64 noundef %0) #55
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden void @_PyObject_VirtualFree(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1232), align 8, !tbaa !520
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1216), align 8, !tbaa !519
  tail call void %i.a(ptr noundef %i.b, ptr noundef %0, i64 noundef %1) #55
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyMem_RawMalloc(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 952), align 8, !tbaa !514
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 944), align 8, !tbaa !521
  %i.d = tail call ptr %i.b(ptr noundef %i.c, i64 noundef %0) #55
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyMem_RawCalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = udiv i64 9223372036854775807, %1
  %i.b = icmp ugt i64 %0, %i.a
end_hunk_0
