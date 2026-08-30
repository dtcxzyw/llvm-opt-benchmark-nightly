Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/theap?download=true
inline.NumInlined: 66
inline.NumDeleted: 35
begin_hunk_0_@_mi_theap_init:bb.a
  %i.bh = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ba) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_mi_random_init(ptr noundef) local_unnamed_addr #2

declare void @_mi_random_split(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nooutline nounwind uwtable
define hidden i64 @_mi_theap_random_next(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.b = tail call i64 @_mi_random_next(ptr noundef nonnull %i.a) #10
  ret i64 %i.b
}

declare void @__mi_stat_increase_mt(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @_mi_theap_alloc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.mi_memid_s, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !45
  %i.e = call ptr @_mi_meta_zalloc(ptr noundef %i.d, i64 noundef 8104, ptr noundef nonnull %2) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !69
  %i.j = call ptr @_mi_arenas_alloc(ptr noundef nonnull %0, i64 noundef 65536, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull %i.b, i64 noundef %i.g, i32 noundef %i.i, ptr noundef nonnull %2) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.010 = phi ptr [ %i.e, %bb.b ], [ %i.j, %bb.c ] ; 3 uses
  %i.k = icmp eq ptr %.010, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (i32, ptr, ...) @_mi_error_message(i32 noundef 12, ptr noundef nonnull @.str) #10
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.010, i64 3712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !38
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret ptr %.010
}

declare ptr @_mi_meta_zalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_mi_arenas_alloc(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_mi_error_message(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @_mi_theap_create(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.mi_memid_s, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !45
  %i.e = call ptr @_mi_meta_zalloc(ptr noundef %i.d, i64 noundef 8104, ptr noundef nonnull %2) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !69
  %i.j = call ptr @_mi_arenas_alloc(ptr noundef nonnull %0, i64 noundef 65536, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull %i.b, i64 noundef %i.g, i32 noundef %i.i, ptr noundef nonnull %2) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.010.i = phi ptr [ %i.e, %bb.b ], [ %i.j, %bb.c ] ; 4 uses
  %i.k = icmp eq ptr %.010.i, null
  br i1 %i.k, label %_mi_theap_alloc.exit.thread, label %bb.e

_mi_theap_alloc.exit.thread:                      ; preds = %bb.d
  call void (i32, ptr, ...) @_mi_error_message(i32 noundef 12, ptr noundef nonnull @.str) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i, i64 3712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @_mi_theap_init(ptr noundef nonnull %.010.i, ptr noundef nonnull %0, ptr noundef %1) #11
  br label %bb.f

bb.f:                                             ; preds = %_mi_theap_alloc.exit.thread, %bb.e
  ret ptr %.010.i
}

declare i64 @_mi_random_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nooutline norecurse nounwind willreturn uwtable
define hidden void @_mi_theap_incref(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 3728
  %.val = load i32, ptr %i.a, align 8, !tbaa !70
  %i.b = icmp ult i32 %.val, 3
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.d = atomicrmw add ptr %i.c, i64 1 acq_rel, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_theap_decref(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3712
  %i.b = getelementptr i8, ptr %0, i64 3728
  %.val = load i32, ptr %i.b, align 8, !tbaa !70
  %i.c = icmp ult i32 %.val, 3
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.e = atomicrmw sub ptr %i.d, i64 1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.h = load atomic ptr, ptr %i.g monotonic, align 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1306
  %i.j = load i8, ptr %i.i, align 2, !tbaa !55, !range !57, !noundef !58
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %mi_theap_free_mem.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 2016
  tail call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.l, i64 noundef 1) #10
  br label %mi_theap_free_mem.exit

mi_theap_free_mem.exit:                           ; preds = %bb.d, %bb.e
  tail call void @_mi_meta_free(ptr noundef %i.h, ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.a) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %mi_theap_free_mem.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_heap_detach_theaps(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #10 ; 3 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %mi_lock_acquire.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.c, ptr noundef nonnull @.str.1, i32 noundef %i.c) #10
  br label %mi_lock_acquire.exit

mi_lock_acquire.exit:                             ; preds = %bb.c, %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %.not32 = icmp eq ptr %i.d, null
  br i1 %.not32, label %.critedge.critedge, label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %mi_lock_acquire.exit, %.thread
  %.034.ph = phi ptr [ %i.f, %.thread ], [ %i.d, %mi_lock_acquire.exit ]
  %.133.ph = phi i1 [ false, %.thread ], [ true, %mi_lock_acquire.exit ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.outer, %bb.j
  %.02533 = phi ptr [ %i.f, %bb.j ], [ %.034.ph, %.lr.ph.outer ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.02533, i64 1280
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02533, i64 1032 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.j = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.i) #10
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.02533, i64 1264 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61   ; 4 uses
  %.not30 = icmp eq ptr %i.m, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.02533, i64 1272
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !60 ; 3 uses
  br i1 %.not30, label %._crit_edge36, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1272
  store ptr %.pre, ptr %i.n, align 8, !tbaa !60
  br label %._crit_edge36

._crit_edge36:                                    ; preds = %bb.e, %bb.f
  %.not31 = icmp eq ptr %.pre, null
  br i1 %.not31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge36
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 1264
  store ptr %i.m, ptr %i.o, align 8, !tbaa !61
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge36
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.m, ptr %i.q, align 8, !tbaa !59
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr null, ptr %i.g, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #10 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !71

.thread:                                          ; preds = %bb.d
  %.not43 = icmp eq ptr %i.f, null
  br i1 %.not43, label %._crit_edge.thread, label %.lr.ph.outer, !llvm.loop !71

._crit_edge.thread:                               ; preds = %.thread
  %i.s = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #10 ; 0 uses
  br label %bb.k

._crit_edge:                                      ; preds = %bb.j
  %i.t = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #10 ; 0 uses
  br i1 %.133.ph, label %.critedge, label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.u = load ptr, ptr %0, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2072
  tail call void @__mi_stat_counter_increase_mt(ptr noundef nonnull %i.v, i64 noundef 1) #10
  tail call void @_mi_prim_thread_yield() #10
  br label %bb.b, !llvm.loop !72

.critedge.critedge:                               ; preds = %mi_lock_acquire.exit
  %i.w = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #10 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge, %.critedge.critedge
  ret void
}

declare void @__mi_stat_counter_increase_mt(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_mi_prim_thread_yield() local_unnamed_addr #2

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_tld_detach_theaps(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #10 ; 3 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %mi_lock_acquire.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.d, ptr noundef nonnull @.str.1, i32 noundef %i.d) #10
  br label %mi_lock_acquire.exit

mi_lock_acquire.exit:                             ; preds = %bb.c, %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  %.not35 = icmp eq ptr %i.e, null
  br i1 %.not35, label %.critedge.critedge, label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %mi_lock_acquire.exit, %.thread
  %.137.ph = phi i1 [ false, %.thread ], [ true, %mi_lock_acquire.exit ]
  %.02836.ph = phi ptr [ %i.g, %.thread ], [ %i.e, %mi_lock_acquire.exit ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.outer, %bb.j
  %.02836 = phi ptr [ %i.g, %bb.j ], [ %.02836.ph, %.lr.ph.outer ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02836, i64 1264
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02836, i64 1040 ; 2 uses
  %i.i = load atomic ptr, ptr %i.h monotonic, align 8 ; 4 uses
  %.not32 = icmp eq ptr %i.i, null
  br i1 %.not32, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.k = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.j) #10
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 2096
  %i.n = getelementptr inbounds nuw i8, ptr %.02836, i64 3736
  tail call void @_mi_stats_merge_into(ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) #10
  %i.o = getelementptr inbounds nuw i8, ptr %.02836, i64 1280 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66   ; 4 uses
  %.not33 = icmp eq ptr %i.p, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.02836, i64 1288
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !65 ; 3 uses
  br i1 %.not33, label %._crit_edge39, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1288
  store ptr %.pre, ptr %i.q, align 8, !tbaa !65
  br label %._crit_edge39

._crit_edge39:                                    ; preds = %bb.e, %bb.f
  %.not34 = icmp eq ptr %.pre, null
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge39
  %i.r = getelementptr inbounds nuw i8, ptr %.pre, i64 1280
  store ptr %i.p, ptr %i.r, align 8, !tbaa !66
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge39
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %i.p, ptr %i.s, align 8, !tbaa !64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store atomic ptr null, ptr %i.h release, align 8
  %i.t = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #10 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !73

.thread:                                          ; preds = %bb.d
  %.not46 = icmp eq ptr %i.g, null
  br i1 %.not46, label %._crit_edge.thread, label %.lr.ph.outer, !llvm.loop !73

._crit_edge.thread:                               ; preds = %.thread
  %i.u = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #10 ; 0 uses
  br label %bb.k

._crit_edge:                                      ; preds = %bb.j
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #10 ; 0 uses
  br i1 %.137.ph, label %.critedge, label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2072
  tail call void @__mi_stat_counter_increase_mt(ptr noundef nonnull %i.x, i64 noundef 1) #10
  tail call void @_mi_prim_thread_yield() #10
  br label %bb.b, !llvm.loop !75

.critedge.critedge:                               ; preds = %mi_lock_acquire.exit
  %i.y = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #10 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge, %.critedge.critedge
  ret void
}

; Function Attrs: mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_mi_heap_area_init(ptr nofree noundef writeonly captures(none) initializes((0, 56)) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40
  %.val = load i64, ptr %i.a, align 8, !tbaa !76  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.c = load i16, ptr %i.b, align 2, !tbaa !77
  %i.d = zext i16 %i.c to i64
  %i.e = mul i64 %.val, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load i16, ptr %i.g, align 8, !tbaa !80
  %i.i = zext i16 %i.h to i64
  %i.j = mul i64 %.val, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %i.k, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !82
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  store ptr %i.n, ptr %0, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.p, ptr %i.q, align 8, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.val, ptr %i.r, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val, ptr %i.s, align 8, !tbaa !86
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.t, align 8, !tbaa !87
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden zeroext i1 @_mi_theap_area_visit_blocks(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i64], align 16             ; 6 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_mi_page_free_collect(ptr noundef nonnull %1, i1 noundef zeroext true) #10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 40
  %.val.i = load i64, ptr %i.g, align 8, !tbaa !76 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i ; 4 uses
  %i.k = getelementptr i8, ptr %1, i64 80
  %.val116 = load ptr, ptr %i.k, align 8, !tbaa !88 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8, !tbaa !80   ; 4 uses
  %i.n = icmp eq i16 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call zeroext i1 %2(ptr noundef %.val116, ptr noundef nonnull %0, ptr noundef nonnull %i.j, i64 noundef %.val.i, ptr noundef %3) #10
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.p = zext i16 %i.m to i64                     ; 2 uses
  %i.q = icmp eq i64 %i.e, %i.p
  br i1 %i.q, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.e
  %.not110.not136.not = icmp eq i16 %i.m, 0
  br i1 %.not110.not136.not, label %.critedge, label %.lr.ph139

.lr.ph139:                                        ; preds = %.preheader, %bb.f
  %.0102139 = phi i64 [ %i.t, %bb.f ], [ 0, %.preheader ]
  %.0103138 = phi ptr [ %i.s, %bb.f ], [ %i.j, %.preheader ] ; 2 uses
  %i.r = tail call zeroext i1 %2(ptr noundef %.val116, ptr noundef nonnull %0, ptr noundef %.0103138, i64 noundef %.val.i, ptr noundef %3) #10 ; 3 uses
  br i1 %i.r, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph139
  %i.s = getelementptr inbounds nuw i8, ptr %.0103138, i64 %.val.i
  %i.t = add nuw nsw i64 %.0102139, 1             ; 2 uses
  %i.u = load i16, ptr %i.l, align 8, !tbaa !80
  %i.v = zext i16 %i.u to i64
  %.not110.not = icmp samesign ult i64 %i.t, %i.v
  br i1 %.not110.not, label %.lr.ph139, label %.critedge, !llvm.loop !89

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.w = add nuw nsw i64 %i.p, 63
  %i.x = lshr i64 %i.w, 6                         ; 4 uses
  %i.y = shl nuw nsw i64 %i.x, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.y, i1 false)
  %i.z = and i16 %i.m, 63                         ; 2 uses
  %.not = icmp eq i16 %i.z, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = shl nsw i64 -1, %i.aa
  %i.ac = getelementptr [8 x i8], ptr %i.a, i64 %i.x
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !42
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = add i64 %.val.i, -1
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ae, i1 false)
  %i.ag = sub nuw nsw i64 64, %i.af               ; 2 uses
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = sub i64 %i.ah, %.val.i
  %i.aj = shl i64 %i.ai, 32
  %i.ak = udiv i64 %i.aj, %.val.i
  %i.al = add nuw i64 %i.ak, 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !90 ; 2 uses
  %.not107127 = icmp eq ptr %i.an, null
  br i1 %.not107127, label %.preheader121, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ao = ptrtoint ptr %i.j to i64
  br label %bb.j

.preheader121:                                    ; preds = %bb.j, %bb.i
  %.not109131 = icmp eq i64 %i.x, 0
  br i1 %.not109131, label %.critedge114, label %.lr.ph135

.lr.ph135:                                        ; preds = %.preheader121
  %i.ap = shl i64 %.val.i, 6
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %.0103128 = phi ptr [ %i.an, %.lr.ph ], [ %i.bc, %bb.j ] ; 2 uses
  %i.aq = ptrtoint ptr %.0103128 to i64
  %i.ar = sub i64 %i.aq, %i.ao                    ; 2 uses
  %i.as = mul i64 %i.ar, %i.al
  %i.at = lshr i64 %i.as, 32
  %i.au = add i64 %i.at, %i.ar
  %i.av = lshr i64 %i.au, %i.ag                   ; 2 uses
  %i.aw = lshr i64 %i.av, 6
  %i.ax = and i64 %i.av, 63
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aw ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !42
  %i.bb = or i64 %i.ba, %i.ay
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !42
  %.0103.val = load i64, ptr %.0103128, align 8, !tbaa !91 ; 2 uses
  %i.bc = inttoptr i64 %.0103.val to ptr
  %.not107 = icmp eq i64 %.0103.val, 0
  br i1 %.not107, label %.preheader121, label %bb.j, !llvm.loop !93

bb.k:                                             ; preds = %.lr.ph135, %.critedge112
  %.091133 = phi i64 [ 0, %.lr.ph135 ], [ %i.br, %.critedge112 ] ; 2 uses
  %.092132 = phi ptr [ %i.j, %.lr.ph135 ], [ %.395, %.critedge112 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.091133
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !42 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.preheader119, label %bb.m

.preheader119:                                    ; preds = %bb.k, %bb.l
  %.090130 = phi i64 [ %i.bi, %bb.l ], [ 0, %bb.k ]
  %.193129 = phi ptr [ %i.bh, %bb.l ], [ %.092132, %bb.k ] ; 2 uses
  %i.bg = tail call zeroext i1 %2(ptr noundef %.val116, ptr noundef nonnull %0, ptr noundef %.193129, i64 noundef %.val.i, ptr noundef %3) #10
  br i1 %i.bg, label %bb.l, label %.critedge114

bb.l:                                             ; preds = %.preheader119
  %i.bh = getelementptr inbounds nuw i8, ptr %.193129, i64 %.val.i ; 2 uses
  %i.bi = add nuw nsw i64 %.090130, 1             ; 2 uses
  %exitcond = icmp eq i64 %i.bi, 64
  br i1 %exitcond, label %.critedge112, label %.preheader119, !llvm.loop !94

bb.m:                                             ; preds = %bb.k
  %i.bj = xor i64 %i.be, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.088 = phi i64 [ %i.bj, %bb.m ], [ %i.bp, %bb.o ] ; 4 uses
  %.not108 = icmp eq i64 %.088, 0
  br i1 %.not108, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, -1) %.088, i1 true)
  %i.bl = mul i64 %i.bk, %.val.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.092132, i64 %i.bl
  %i.bn = tail call zeroext i1 %2(ptr noundef %.val116, ptr noundef nonnull %0, ptr noundef %i.bm, i64 noundef %.val.i, ptr noundef %3) #10
  %i.bo = add i64 %.088, -1
  %i.bp = and i64 %i.bo, %.088
  br i1 %i.bn, label %bb.n, label %.critedge114, !llvm.loop !95

.thread:                                          ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %.092132, i64 %i.ap
  br label %.critedge112

.critedge112:                                     ; preds = %bb.l, %.thread
  %.395 = phi ptr [ %i.bq, %.thread ], [ %i.bh, %bb.l ]
  %i.br = add nuw nsw i64 %.091133, 1             ; 2 uses
  %exitcond145.not = icmp eq i64 %i.br, %i.x
  br i1 %exitcond145.not, label %.critedge114, label %bb.k, !llvm.loop !96

.critedge114:                                     ; preds = %.critedge112, %bb.o, %.preheader119, %.preheader121
  %.not109126 = phi i1 [ false, %bb.o ], [ false, %.preheader119 ], [ true, %.preheader121 ], [ true, %.critedge112 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.lr.ph139, %.preheader, %bb.d, %.critedge114, %bb.b, %bb.a
  %.11 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.o, %bb.d ], [ %.not109126, %.critedge114 ], [ true, %.preheader ], [ %i.r, %.lr.ph139 ], [ %i.r, %bb.f ]
  ret i1 %.11
}

declare void @_mi_page_free_collect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nooutline nounwind uwtable
define hidden noundef zeroext i1 @mi_theap_visit_blocks(ptr nofree noundef captures(address_is_null) %0, i1 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.mi_theap_area_ex_s, align 8 ; 17 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mi_theap_visit_areas.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.c = load i64, ptr %i.b, align 8, !tbaa !8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %mi_theap_visit_areas.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  br i1 %1, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.c, %.critedge.i.i.us
  %.02534.i.i.us = phi i64 [ %i.p, %.critedge.i.i.us ], [ 0, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.02534.i.i.us
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %.not30.i3.i.us = icmp eq ptr %i.o, null
  br i1 %.not30.i3.i.us, label %.critedge.i.i.us, label %.lr.ph.i.us.us

.critedge.i.i.us:                                 ; preds = %.backedge.i.us.us, %.split.us
  %i.p = add nuw nsw i64 %.02534.i.i.us, 1        ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.p, 75
  br i1 %exitcond.not.i.i.us, label %mi_theap_visit_areas.exit, label %.split.us, !llvm.loop !24

.lr.ph.i.us.us:                                   ; preds = %.split.us, %.backedge.i.us.us
  %.023.i4.i.us.us = phi ptr [ %i.r, %.backedge.i.us.us ], [ %i.o, %.split.us ] ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.023.i4.i.us.us, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %.023.i4.i.us.us, ptr %i.f, align 8, !tbaa !97
  %i.s = getelementptr i8, ptr %.023.i4.i.us.us, i64 40
  %.val.i.i.i.us.us = load i64, ptr %i.s, align 8, !tbaa !76 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.023.i4.i.us.us, i64 58
  %i.u = load i16, ptr %i.t, align 2, !tbaa !77
  %i.v = zext i16 %i.u to i64
  %i.w = mul i64 %.val.i.i.i.us.us, %i.v
  store i64 %i.w, ptr %i.g, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %.023.i4.i.us.us, i64 56
  %i.y = load i16, ptr %i.x, align 8, !tbaa !80
  %i.z = zext i16 %i.y to i64
  %i.aa = mul i64 %.val.i.i.i.us.us, %i.z
  store i64 %i.aa, ptr %i.h, align 8, !tbaa !81
  %i.ab = getelementptr inbounds nuw i8, ptr %.023.i4.i.us.us, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !82
  %i.ad = getelementptr inbounds nuw i8, ptr %.023.i4.i.us.us, i64 %i.ac
  store ptr %i.ad, ptr %4, align 8, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %.023.i4.i.us.us, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !31
  store i64 %i.af, ptr %i.i, align 8, !tbaa !84
  store i64 %.val.i.i.i.us.us, ptr %i.j, align 8, !tbaa !85
  store i64 %.val.i.i.i.us.us, ptr %i.k, align 8, !tbaa !86
  store ptr %.023.i4.i.us.us, ptr %i.l, align 8, !tbaa !87
  %i.ag = load atomic ptr, ptr %i.m monotonic, align 8
  %i.ah = call zeroext i1 %2(ptr noundef %i.ag, ptr noundef nonnull %4, ptr noundef null, i64 noundef %.val.i.i.i.us.us, ptr noundef %3) #10, !inline_history !99
  br i1 %i.ah, label %.split.i.us.us, label %mi_theap_area_visitor.exit.thread.i
end_hunk_0
