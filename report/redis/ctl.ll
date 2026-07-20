inline.NumInlined: 852
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@max_background_threads_ctl:bb.a
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !22
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.e, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !27
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !28
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.h = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 64)) #15
  %.not.i61 = icmp eq i32 %i.h, 0
  br i1 %.not.i61, label %bb.f, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @je_background_thread_lock) #15
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 104) monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %malloc_mutex_lock.exit
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 56), align 8, !tbaa !22
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 56), align 8, !tbaa !22
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 48), align 8, !tbaa !27
  %.not.i.i62 = icmp eq ptr %i.k, %0
  br i1 %.not.i.i62, label %malloc_mutex_lock.exit63, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 48), align 8, !tbaa !27
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 40), align 8, !tbaa !28
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 40), align 8, !tbaa !28
  br label %malloc_mutex_lock.exit63

malloc_mutex_lock.exit63:                         ; preds = %bb.f, %bb.g
  %i.n = icmp eq ptr %5, null
  br i1 %i.n, label %bb.h, label %bb.l

bb.h:                                             ; preds = %malloc_mutex_lock.exit63
  %i.o = load i64, ptr @je_max_background_threads, align 8, !tbaa !11 ; 2 uses
  store i64 %i.o, ptr %i.a, align 8, !tbaa !11
  %i.p = icmp ne ptr %3, null
  %i.q = icmp ne ptr %4, null
  %or.cond = and i1 %i.p, %i.q
  br i1 %or.cond, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.r = load i64, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not58 = icmp eq i64 %i.r, 8
  br i1 %.not58, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.r, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !11
  br label %.thread

bb.k:                                             ; preds = %bb.i
  store i64 %i.o, ptr %3, align 8, !tbaa !11
  br label %.thread

bb.l:                                             ; preds = %malloc_mutex_lock.exit63
  %.not = icmp eq i64 %6, 8
  br i1 %.not, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.s = load i64, ptr @je_max_background_threads, align 8, !tbaa !11 ; 3 uses
  store i64 %i.s, ptr %i.a, align 8, !tbaa !11
  %i.t = icmp ne ptr %3, null
  %i.u = icmp ne ptr %4, null
  %or.cond4 = and i1 %i.t, %i.u
  br i1 %or.cond4, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.v = load i64, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not57 = icmp eq i64 %i.v, 8
  br i1 %.not57, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %spec.select59 = tail call i64 @llvm.umin.i64(i64 %i.v, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select59, i1 false)
  store i64 %spec.select59, ptr %4, align 8, !tbaa !11
  br label %.thread

bb.p:                                             ; preds = %bb.n
  store i64 %i.s, ptr %3, align 8, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.w = load i64, ptr %5, align 8, !tbaa !11     ; 4 uses
  %i.x = icmp eq i64 %i.w, %i.s
  br i1 %i.x, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = load i64, ptr @je_opt_max_background_threads, align 8, !tbaa !11
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aa = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !52, !noundef !53
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  store atomic i8 0, ptr @je_background_thread_enabled_state monotonic, align 1
  %i.ac = tail call zeroext i1 @je_background_threads_disable(ptr noundef %0) #15
  br i1 %i.ac, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 %i.w, ptr @je_max_background_threads, align 8, !tbaa !11
  store atomic i8 1, ptr @je_background_thread_enabled_state monotonic, align 1
  %i.ad = tail call zeroext i1 @je_background_threads_enable(ptr noundef %0) #15
  %spec.select66 = select i1 %i.ad, i32 14, i32 0
  br label %.thread

bb.v:                                             ; preds = %bb.s
  store i64 %i.w, ptr @je_max_background_threads, align 8, !tbaa !11
  br label %.thread

.thread:                                          ; preds = %bb.u, %bb.t, %bb.r, %bb.q, %bb.k, %bb.h, %bb.v, %bb.l, %bb.o, %bb.j
  %.1 = phi i32 [ 22, %bb.j ], [ 22, %bb.l ], [ 0, %bb.k ], [ 22, %bb.o ], [ %spec.select66, %bb.u ], [ 0, %bb.v ], [ 0, %bb.h ], [ 14, %bb.t ], [ 22, %bb.r ], [ 0, %bb.q ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 104) monotonic, align 8
  %i.ae = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 64)) #15 ; 0 uses
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 104) monotonic, align 8
  %i.af = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.1
}

declare void @je_background_thread_ctl_init(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @je_background_threads_enable(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @je_background_threads_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @thread_arena_ctl(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call fastcc ptr @arena_choose(ptr noundef %0) ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 78928
  %.val = load i32, ptr %i.d, align 8, !tbaa !116 ; 4 uses
  store i32 %.val, ptr %i.a, align 4, !tbaa !7
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %6, 4
  br i1 %.not46, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %5, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.038 = phi i32 [ %i.e, %bb.d ], [ %.val, %bb.b ] ; 5 uses
  %i.f = icmp ne ptr %3, null
  %i.g = icmp ne ptr %4, null
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.h = load i64, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not47 = icmp eq i64 %i.h, 4
  br i1 %.not47, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.h, i64 4) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 4 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !11
  br label %.thread

bb.h:                                             ; preds = %bb.f
  store i32 %.val, ptr %3, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.not48 = icmp eq i32 %.038, %.val
  br i1 %.not48, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = tail call i32 @je_narenas_total_get() #15
  %.not49 = icmp ult i32 %.038, %i.i
  br i1 %.not49, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.j = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7 ; 2 uses
  %i.k = icmp ugt i32 %i.j, 2
  br i1 %i.k, label %percpu_arena_ind_limit.exit, label %bb.l

percpu_arena_ind_limit.exit:                      ; preds = %bb.k
  %i.l = icmp eq i32 %i.j, 4
  %i.m = load i32, ptr @je_ncpus, align 4         ; 3 uses
  %i.n = icmp ugt i32 %i.m, 1
  %or.cond.i = and i1 %i.l, %i.n
  %i.o = lshr i32 %i.m, 1
  %spec.select65 = add nuw i32 %i.o, 1
  %.0.i = select i1 %or.cond.i, i32 %spec.select65, i32 %i.m
  %i.p = icmp ult i32 %.038, %.0.i
  br i1 %i.p, label %.thread, label %bb.l

bb.l:                                             ; preds = %percpu_arena_ind_limit.exit, %bb.k
  %i.q = zext i32 %.038 to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.q
  %i.s = load atomic ptr, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %arena_get.exit, label %arena_get.exit.thread, !prof !158

arena_get.exit:                                   ; preds = %bb.l
  %i.u = tail call ptr @je_arena_init(ptr noundef %0, i32 noundef %.038, ptr noundef nonnull @je_arena_config_default) #15 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread, label %arena_get.exit.thread

arena_get.exit.thread:                            ; preds = %bb.l, %arena_get.exit
  %.0.i5153 = phi ptr [ %i.u, %arena_get.exit ], [ %i.s, %bb.l ] ; 2 uses
  tail call void @je_arena_migrate(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %.0.i5153) #15
  %i.w = load i8, ptr %0, align 1, !tbaa !115, !range !52, !noundef !53
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.m, label %.thread

bb.m:                                             ; preds = %arena_get.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 872
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %.0.i5153) #15
  br label %.thread

.thread:                                          ; preds = %percpu_arena_ind_limit.exit, %bb.j, %arena_get.exit, %bb.i, %arena_get.exit.thread, %bb.m, %bb.g, %bb.c, %bb.a
  %.0 = phi i32 [ 11, %bb.a ], [ 0, %bb.i ], [ 22, %bb.g ], [ 22, %bb.c ], [ 0, %bb.m ], [ 0, %arena_get.exit.thread ], [ 1, %percpu_arena_ind_limit.exit ], [ 14, %bb.j ], [ 11, %arena_get.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 23) i32 @thread_allocated_ctl(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readnone captures(address_is_null) %5, i64 noundef %6) #9 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne i64 %6, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !11
  %i.f = icmp ne ptr %3, null
  %i.g = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.f, %i.g
  br i1 %or.cond3, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not = icmp eq i64 %i.h, 8
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.h, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 %i.e, ptr %3, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e, %bb.b
  %.019 = phi i32 [ 1, %bb.a ], [ 22, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 23) i32 @thread_allocatedp_ctl(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readnone captures(address_is_null) %5, i64 noundef %6) #9 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne i64 %6, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !159
  %i.e = icmp ne ptr %3, null
  %i.f = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.e, %i.f
  br i1 %or.cond3, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not = icmp eq i64 %i.g, 8
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.g, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.d, ptr %3, align 8, !tbaa !159
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e, %bb.b
  %.019 = phi i32 [ 1, %bb.a ], [ 22, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 23) i32 @thread_deallocated_ctl(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readnone captures(address_is_null) %5, i64 noundef %6) #9 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne i64 %6, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !11
  %i.f = icmp ne ptr %3, null
  %i.g = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.f, %i.g
  br i1 %or.cond3, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not = icmp eq i64 %i.h, 8
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.h, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 %i.e, ptr %3, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e, %bb.b
  %.019 = phi i32 [ 1, %bb.a ], [ 22, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 23) i32 @thread_deallocatedp_ctl(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readnone captures(address_is_null) %5, i64 noundef %6) #9 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne i64 %6, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !159
  %i.e = icmp ne ptr %3, null
  %i.f = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.e, %i.f
  br i1 %or.cond3, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %4, align 8, !tbaa !11     ; 2 uses
  %.not = icmp eq i64 %i.g, 8
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.g, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.d, ptr %3, align 8, !tbaa !159
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e, %bb.b
  %.019 = phi i32 [ 1, %bb.a ], [ 22, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @thread_idle_ctl(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef readnone captures(address_is_null) %3, ptr nofree noundef readnone captures(address_is_null) %4, ptr nofree noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = icmp ne ptr %3, null
  %i.b = icmp ne ptr %4, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp ne ptr %5, null
  %or.cond3 = or i1 %or.cond, %i.c
  %i.d = icmp ne i64 %6, 0
  %or.cond5 = or i1 %or.cond3, %i.d
  br i1 %or.cond5, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !115, !range !52, !noundef !53
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @je_tcache_flush(ptr noundef nonnull %0) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load i32, ptr @je_opt_narenas, align 4, !tbaa !7
  %i.h = load i32, ptr @je_ncpus, align 4, !tbaa !7
  %i.i = shl i32 %i.h, 1
  %i.j = icmp ugt i32 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = tail call fastcc ptr @arena_choose(ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i1 noundef zeroext false, i1 noundef zeroext true) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @arena_choose(ptr noundef %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !59
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d, !prof !158

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %arena_choose_impl.exit, !prof !158

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #15
  br label %arena_choose_impl.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.j, !prof !158

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) #15 ; 7 uses
  %i.k = load i8, ptr %0, align 8, !tbaa !115, !range !52, !noundef !53
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !161  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not43.i = icmp eq ptr %i.p, %i.j
  br i1 %.not43.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #15
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d
  %.037.i = phi ptr [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %i.j, %bb.g ], [ %i.j, %bb.h ], [ %i.j, %bb.i ] ; 6 uses
  %i.q = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7 ; 2 uses
  %i.r = icmp ult i32 %i.q, 3
  br i1 %i.r, label %arena_choose_impl.exit, label %percpu_arena_ind_limit.exit.i

percpu_arena_ind_limit.exit.i:                    ; preds = %bb.j
  %i.s = getelementptr i8, ptr %.037.i, i64 78928 ; 2 uses
  %.037.val47.i = load i32, ptr %i.s, align 8, !tbaa !116
  %i.t = icmp eq i32 %i.q, 4
  %i.u = load i32, ptr @je_ncpus, align 4         ; 3 uses
  %i.v = icmp ugt i32 %i.u, 1
  %or.cond.i.i = and i1 %i.t, %i.v
  %i.w = lshr i32 %i.u, 1
  %spec.select.i = add nuw i32 %i.w, 1
  %.0.i.i = select i1 %or.cond.i.i, i32 %spec.select.i, i32 %i.u
  %i.x = icmp ult i32 %.037.val47.i, %.0.i.i
  br i1 %i.x, label %bb.k, label %arena_choose_impl.exit

bb.k:                                             ; preds = %percpu_arena_ind_limit.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.037.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !168
  %.not44.i = icmp eq ptr %i.z, %0
  br i1 %.not44.i, label %arena_choose_impl.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call i32 @sched_getcpu() #15       ; 3 uses
  %i.ab = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7
  %i.ac = icmp eq i32 %i.ab, 3
  br i1 %i.ac, label %percpu_arena_choose.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = load i32, ptr @je_ncpus, align 4, !tbaa !7
  %i.ae = lshr i32 %i.ad, 1                       ; 2 uses
  %i.af = icmp ult i32 %i.aa, %i.ae
  %i.ag = select i1 %i.af, i32 0, i32 %i.ae
  %spec.select.i.i = sub nuw i32 %i.aa, %i.ag
  br label %percpu_arena_choose.exit.i

percpu_arena_choose.exit.i:                       ; preds = %bb.m, %bb.l
  %.0.i46.i = phi i32 [ %i.aa, %bb.l ], [ %spec.select.i.i, %bb.m ] ; 4 uses
  %.037.val.i = load i32, ptr %i.s, align 8, !tbaa !116
  %.not45.i = icmp eq i32 %.037.val.i, %.0.i46.i
  br i1 %.not45.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %percpu_arena_choose.exit.i
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !64  ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 78928
  %.val.i.i = load i32, ptr %i.ai, align 8, !tbaa !116
  %.not.i49.i = icmp eq i32 %.val.i.i, %.0.i46.i
  br i1 %.not.i49.i, label %percpu_arena_update.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = zext i32 %.0.i46.i to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.aj
  %i.al = load atomic ptr, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.p, label %arena_get.exit.i.i, !prof !158

bb.p:                                             ; preds = %bb.o
  %i.an = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef %.0.i46.i, ptr noundef nonnull @je_arena_config_default) #15
  br label %arena_get.exit.i.i

arena_get.exit.i.i:                               ; preds = %bb.p, %bb.o
  %.0.i18.i.i = phi ptr [ %i.an, %bb.p ], [ %i.al, %bb.o ] ; 2 uses
  tail call void @je_arena_migrate(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, ptr noundef %.0.i18.i.i) #15
  %i.ao = load i8, ptr %0, align 8, !tbaa !115, !range !52, !noundef !53
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.q, label %percpu_arena_update.exit.i

bb.q:                                             ; preds = %arena_get.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.aq, ptr noundef %.0.i18.i.i) #15
  br label %percpu_arena_update.exit.i

percpu_arena_update.exit.i:                       ; preds = %bb.q, %arena_get.exit.i.i, %bb.n
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !64
  br label %bb.r

bb.r:                                             ; preds = %percpu_arena_update.exit.i, %percpu_arena_choose.exit.i
  %.1.i = phi ptr [ %i.as, %percpu_arena_update.exit.i ], [ %.037.i, %percpu_arena_choose.exit.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store ptr %0, ptr %i.at, align 8, !tbaa !168
  br label %arena_choose_impl.exit

arena_choose_impl.exit:                           ; preds = %bb.b, %bb.c, %bb.j, %percpu_arena_ind_limit.exit.i, %bb.k, %bb.r
  %.0.i = phi ptr [ %.037.i, %percpu_arena_ind_limit.exit.i ], [ %.037.i, %bb.j ], [ %.1.i, %bb.r ], [ %.037.i, %bb.k ], [ %i.f, %bb.c ], [ %i.d, %bb.b ]
  ret ptr %.0.i
}

declare void @je_arena_migrate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_tcache_arena_reassociate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @je_arena_choose_hard(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @je_tcache_arena_associate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sched_getcpu() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @thread_tcache_enabled_ctl(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val = load i8, ptr %0, align 1, !tbaa !115, !range !52, !noundef !53 ; 3 uses
  %i.b = trunc nuw i8 %.val to i1
  store i8 %.val, ptr %i.a, align 1, !tbaa !115
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not24 = icmp eq i64 %6, 1
  br i1 %.not24, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %5, align 1, !tbaa !115, !range !52, !noundef !53 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %.not.i = xor i1 %i.b, true                     ; 2 uses
  %or.cond.i = and i1 %.not.i, %i.d
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call zeroext i1 @je_tsd_tcache_data_init(ptr noundef nonnull %0) #15 ; 0 uses
  br label %tcache_enabled_set.exit

bb.e:                                             ; preds = %bb.c
  %or.cond4.i = or i1 %.not.i, %i.d
  br i1 %or.cond4.i, label %tcache_enabled_set.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @je_tcache_cleanup(ptr noundef nonnull %0) #15
  br label %tcache_enabled_set.exit

tcache_enabled_set.exit:                          ; preds = %bb.d, %bb.e, %bb.f
  store i8 %i.c, ptr %0, align 1, !tbaa !115
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %tcache_enabled_set.exit
  %i.f = icmp ne ptr %3, null
  %i.g = icmp ne ptr %4, null
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.h = load i64, ptr %4, align 8, !tbaa !11
  switch i64 %i.h, label %bb.j [
    i64 1, label %bb.k
    i64 0, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.i = phi i64 [ 0, %bb.i ], [ 1, %bb.h ]       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 1 %i.a, i64 %i.i, i1 false)
  store i64 %i.i, ptr %4, align 8, !tbaa !11
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  store i8 %.val, ptr %3, align 1, !tbaa !115
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.b, %bb.k, %bb.g
  %.019 = phi i32 [ 22, %bb.b ], [ 22, %bb.j ], [ 0, %bb.k ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 15) i32 @thread_tcache_flush_ctl(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef readnone captures(address_is_null) %3, ptr nofree noundef readnone captures(address_is_null) %4, ptr nofree noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !115, !range !52, !noundef !53
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %3, null
  %i.d = icmp ne ptr %4, null
  %or.cond = or i1 %i.c, %i.d
  %i.e = icmp ne ptr %5, null
  %or.cond3 = or i1 %or.cond, %i.e
  %i.f = icmp ne i64 %6, 0
  %or.cond5 = or i1 %or.cond3, %i.f
  br i1 %or.cond5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @je_tcache_flush(ptr noundef nonnull %0) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 14, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

declare zeroext i1 @je_tsd_tcache_data_init(ptr noundef) local_unnamed_addr #2

declare void @je_tcache_cleanup(ptr noundef) local_unnamed_addr #2

declare void @je_tsd_slow_update(ptr noundef) local_unnamed_addr #2

declare void @je_tcache_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @thread_peak_read_ctl(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne i64 %6, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.f, label %bb.b
end_hunk_0
