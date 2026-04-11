inline.NumInlined: 79
inline.NumDeleted: 47
begin_hunk_0_@je_pac_decay_ms_set:bb.a
  %i.a = icmp eq i32 %2, 1                        ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 62224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %.sink13.i = select i1 %i.a, i64 56, i64 19496
  %.sink12.v.i = select i1 %i.a, i64 58648, i64 60432
  %.sink12.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sink12.v.i ; 9 uses
  %.sink.idx.i = select i1 %i.a, i64 0, i64 24
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink.idx.i
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.sink13.i
  %i.e = tail call zeroext i1 @je_decay_ms_valid(i64 noundef %3) #9 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 64 ; 2 uses
  %i.g = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.f) #9
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %.sink12.i) #9
  %i.h = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 104
  store atomic i8 1, ptr %i.h monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 56 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !56
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %.not.i.i = icmp eq ptr %i.m, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr %i.l, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !61
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !61
end_hunk_0
begin_hunk_1_@je_pac_decay_ms_set:bb.a
malloc_mutex_lock.exit:                           ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @je_nstime_init_update(ptr noundef nonnull %5) #9
  call void @je_decay_reinit(ptr noundef nonnull %.sink12.i, ptr noundef nonnull %5, i64 noundef %3) #9
  %i.q = call zeroext i1 @je_pac_maybe_decay_purge(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %.sink12.i, ptr noundef %.sink.i, ptr noundef nonnull %i.d, i32 noundef %4) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 104
  store atomic i8 0, ptr %i.r monotonic, align 1
  %i.s = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
end_hunk_1
