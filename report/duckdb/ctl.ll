inline.NumInlined: 880
inline.NumDeleted: 50
begin_hunk_0_@thread_tcache_max_ctl:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !155
  %i.d = getelementptr i8, ptr %i.c, i64 48
  %.val = load i32, ptr %i.d, align 8, !tbaa !157
  %i.e = add i32 %.val, -1
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !7    ; 3 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !7
  %i.i = icmp ne ptr %3, null
  %i.j = icmp ne ptr %4, null
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %4, align 8, !tbaa !7      ; 2 uses
  %.not = icmp eq i64 %i.k, 8
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.k, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !7
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  store i64 %i.h, ptr %3, align 8, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.not37 = icmp eq ptr %5, null
  br i1 %.not37, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not38 = icmp eq i64 %6, 8
  br i1 %.not38, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.l = load i64, ptr %5, align 8, !tbaa !7      ; 2 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.l, i64 8388608) ; 3 uses
  %i.m = icmp ult i64 %i.l, 4097
  br i1 %i.m, label %bb.h, label %bb.i, !prof !54

bb.h:                                             ; preds = %bb.g
  %i.n = add nuw nsw i64 %spec.store.select, 7
  %i.o = lshr i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !52
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !7
  br label %sz_s2u.exit

bb.i:                                             ; preds = %bb.g
  %i.u = shl nuw nsw i64 %spec.store.select, 1
  %i.v = add nsw i64 %i.u, -1
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.v, i1 true)
  %i.x = sub nsw i64 60, %i.w
  %notmask.i = shl nsw i64 -1, %i.x               ; 2 uses
  %i.y = xor i64 %notmask.i, -1
  %i.z = add nuw nsw i64 %spec.store.select, %i.y
  %i.aa = and i64 %i.z, %notmask.i
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.h, %bb.i
  %.0.i = phi i64 [ %i.t, %bb.h ], [ %i.aa, %bb.i ] ; 2 uses
  %.not39 = icmp eq i64 %.0.i, %i.h
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %sz_s2u.exit
  tail call void @duckdb_je_thread_tcache_max_set(ptr noundef nonnull %0, i64 noundef %.0.i) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.f, %bb.j, %sz_s2u.exit, %bb.e
  %.1 = phi i32 [ 22, %bb.c ], [ 22, %bb.f ], [ 0, %bb.j ], [ 0, %sz_s2u.exit ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 15) i32 @thread_tcache_flush_ctl(ptr noundef %0, ptr readnone captures(none) %1, i64 %2, ptr noundef readnone captures(address_is_null) %3, ptr noundef readnone captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !102, !range !46, !noundef !47
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
  tail call void @duckdb_je_tcache_flush(ptr noundef nonnull %0) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 14, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

declare void @duckdb_je_tcache_enabled_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @duckdb_je_thread_tcache_max_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

declare void @duckdb_je_tcache_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @thread_tcache_ncached_max_read_sizeclass_ctl(ptr noundef %0, ptr readnone captures(none) %1, i64 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4, ptr noundef readonly captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = icmp ne ptr %5, null
  %.not = icmp eq i64 %6, 8
  %or.cond27 = and i1 %i.c, %.not
  br i1 %or.cond27, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %5, align 8, !tbaa !7
  store i16 0, ptr %i.a, align 2, !tbaa !158
  %i.e = call zeroext i1 @duckdb_je_tcache_bin_ncached_max_read(ptr noundef %0, i64 noundef %i.d, ptr noundef nonnull %i.a) #14
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i16, ptr %i.a, align 2, !tbaa !158
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !7
  %i.h = icmp ne ptr %3, null
  %i.i = icmp ne ptr %4, null
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %4, align 8, !tbaa !7      ; 2 uses
  %.not26 = icmp eq i64 %i.j, 8
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select = call i64 @llvm.umin.i64(i64 %i.j, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.b, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !7
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.g, ptr %3, align 8, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.a, %bb.b, %bb.f, %bb.c
  %.021 = phi i32 [ 22, %bb.b ], [ 22, %bb.a ], [ 0, %bb.c ], [ 22, %bb.e ], [ 0, %bb.f ]
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @thread_tcache_ncached_max_write_ctl(ptr noundef %0, ptr readnone captures(none) %1, i64 %2, ptr noundef readnone captures(address_is_null) %3, ptr noundef readnone captures(address_is_null) %4, ptr noundef readonly captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = icmp ne ptr %3, null
  %i.b = icmp ne ptr %4, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %0, align 1, !tbaa !102, !range !46, !noundef !47
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %.not27 = icmp eq i64 %6, 8
  br i1 %.not27, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %5, align 8, !tbaa !38     ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %i.e, i32 noundef 0, i64 noundef 1000) #15 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.k, %i.j
  %i.m = tail call zeroext i1 @duckdb_je_tcache_bins_ncached_max_write(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef %i.l) #14
  %spec.select = select i1 %i.m, i32 22, i32 0
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.e, %bb.b, %bb.a, %bb.c
  %.3 = phi i32 [ 1, %bb.a ], [ 2, %bb.c ], [ 0, %bb.b ], [ %spec.select, %bb.h ], [ 22, %bb.e ], [ 0, %bb.g ], [ 22, %bb.f ], [ 22, %bb.d ]
  ret i32 %.3
}

declare zeroext i1 @duckdb_je_tcache_bin_ncached_max_read(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

declare zeroext i1 @duckdb_je_tcache_bins_ncached_max_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @thread_peak_read_ctl(ptr noundef %0, ptr readnone captures(none) %1, i64 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne i64 %6, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @duckdb_je_peak_event_update(ptr noundef %0) #14
  %i.d = tail call i64 @duckdb_je_peak_event_max(ptr noundef %0) #14 ; 2 uses
  store i64 %i.d, ptr %i.a, align 8, !tbaa !7
  %i.e = icmp ne ptr %3, null
  %i.f = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.e, %i.f
  br i1 %or.cond3, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %4, align 8, !tbaa !7      ; 2 uses
  %.not = icmp eq i64 %i.g, 8
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.g, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 %i.d, ptr %3, align 8, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e, %bb.b
  %.020 = phi i32 [ 1, %bb.a ], [ 22, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ]
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @thread_peak_reset_ctl(ptr noundef %0, ptr readnone captures(none) %1, i64 %2, ptr noundef readnone captures(address_is_null) %3, ptr noundef readnone captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = icmp ne ptr %3, null
  %i.b = icmp ne ptr %4, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp ne ptr %5, null
  %or.cond3 = or i1 %or.cond, %i.c
  %i.d = icmp ne i64 %6, 0
  %or.cond5 = or i1 %or.cond3, %i.d
  br i1 %or.cond5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @duckdb_je_peak_event_zero(ptr noundef %0) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare void @duckdb_je_peak_event_update(ptr noundef) local_unnamed_addr #2

declare i64 @duckdb_je_peak_event_max(ptr noundef) local_unnamed_addr #2

declare void @duckdb_je_peak_event_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @thread_prof_name_ctl(ptr readnone captures(none) %0, ptr readnone captures(none) %1, i64 %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4, ptr readnone captures(none) %5, i64 %6) #3 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @thread_prof_active_ctl(ptr readnone captures(none) %0, ptr readnone captures(none) %1, i64 %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4, ptr readnone captures(none) %5, i64 %6) #3 {
bb.a:
  ret i32 2
}

declare void @duckdb_je_arena_decay(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 23) i32 @config_cache_oblivious_ctl(ptr readnone captures(none) %0, ptr readnone captures(none) %1, i64 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #9 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne i64 %6, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 1, !tbaa !102
  %i.d = icmp ne ptr %3, null
  %i.e = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.d, %i.e
  br i1 %or.cond3, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %4, align 8, !tbaa !7
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.f
    i64 0, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = phi i64 [ 0, %bb.d ], [ 1, %bb.c ]       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 1 %i.a, i64 %i.g, i1 false)
  store i64 %i.g, ptr %4, align 8, !tbaa !7
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  store i8 1, ptr %3, align 1, !tbaa !102
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.a, %bb.f, %bb.b
  %.018 = phi i32 [ 1, %bb.a ], [ 22, %bb.e ], [ 0, %bb.f ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.018
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 23) i32 @config_debug_ctl(ptr readnone captures(none) %0, ptr readnone captures(none) %1, i64 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #9 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne i64 %6, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 1, !tbaa !102
  %i.d = icmp ne ptr %3, null
  %i.e = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.d, %i.e
  br i1 %or.cond3, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %4, align 8, !tbaa !7
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.f
    i64 0, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = phi i64 [ 0, %bb.d ], [ 1, %bb.c ]       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 1 %i.a, i64 %i.g, i1 false)
  store i64 %i.g, ptr %4, align 8, !tbaa !7
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  store i8 0, ptr %3, align 1, !tbaa !102
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.a, %bb.f, %bb.b
  %.018 = phi i32 [ 1, %bb.a ], [ 22, %bb.e ], [ 0, %bb.f ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.018
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 23) i32 @config_fill_ctl(ptr readnone captures(none) %0, ptr readnone captures(none) %1, i64 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #9 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne i64 %6, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 1, !tbaa !102
  %i.d = icmp ne ptr %3, null
  %i.e = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.d, %i.e
  br i1 %or.cond3, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %4, align 8, !tbaa !7
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.f
end_hunk_0
begin_hunk_1_@arena_i_initialized_ctl:bb.a
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne i64 %6, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !7    ; 4 uses
  %i.f = icmp ugt i64 %i.e, 4294967295
  br i1 %i.f, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #14
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.j, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !23
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !24
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !24
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.e, %bb.f
  %i.m = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 824
  %i.o = load i8, ptr %i.n, align 8, !tbaa !52
  %.not.i.i30 = icmp eq i8 %i.o, 0
  br i1 %.not.i.i30, label %tsd_fetch_impl.exit.i, label %bb.g, !prof !54

bb.g:                                             ; preds = %malloc_mutex_lock.exit
  %i.p = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.m, i1 noundef zeroext false) #14 ; 0 uses
  br label %tsd_fetch_impl.exit.i

tsd_fetch_impl.exit.i:                            ; preds = %bb.g, %malloc_mutex_lock.exit
  %i.q = load ptr, ptr @ctl_arenas, align 8, !tbaa !25 ; 2 uses
  %trunc = trunc nuw i64 %i.e to i32
  switch i32 %trunc, label %bb.i [
    i32 4096, label %arenas_i.exit
    i32 4097, label %bb.h
  ]

bb.h:                                             ; preds = %tsd_fetch_impl.exit.i
  br label %arenas_i.exit

bb.i:                                             ; preds = %tsd_fetch_impl.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !40
  %i.t = zext i32 %i.s to i64
  %i.u = icmp eq i64 %i.e, %i.t
  br i1 %i.u, label %arenas_i.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = add nuw nsw i64 %i.e, 2
  %i.w = and i64 %i.v, 4294967295
  br label %arenas_i.exit

arenas_i.exit:                                    ; preds = %tsd_fetch_impl.exit.i, %bb.h, %bb.i, %bb.j
  %.0.i.i.i = phi i64 [ 0, %tsd_fetch_impl.exit.i ], [ 0, %bb.i ], [ %i.w, %bb.j ], [ 1, %bb.h ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.0.i.i.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !36, !range !46, !noundef !47 ; 2 uses
  store i8 %i.ab, ptr %i.a, align 1, !tbaa !102
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14 ; 0 uses
  %i.ad = icmp ne ptr %3, null
  %i.ae = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.ad, %i.ae
  br i1 %or.cond3, label %bb.k, label %bb.o

bb.k:                                             ; preds = %arenas_i.exit
  %i.af = load i64, ptr %4, align 8, !tbaa !7
  switch i64 %i.af, label %bb.m [
    i64 1, label %bb.n
    i64 0, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ag = phi i64 [ 0, %bb.l ], [ 1, %bb.k ]      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 1 %i.a, i64 %i.ag, i1 false)
  store i64 %i.ag, ptr %4, align 8, !tbaa !7
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  store i8 %i.ab, ptr %3, align 1, !tbaa !102
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.a, %bb.b, %bb.n, %arenas_i.exit
  %.024 = phi i32 [ 14, %bb.b ], [ 1, %bb.a ], [ 22, %bb.m ], [ 0, %bb.n ], [ 0, %arenas_i.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.024
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 15) i32 @arena_i_decay_ctl(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 %2, ptr noundef readnone captures(address_is_null) %3, ptr noundef readnone captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = icmp ne ptr %3, null
  %i.b = icmp ne ptr %4, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp ne ptr %5, null
  %or.cond3 = or i1 %or.cond, %i.c
  %i.d = icmp ne i64 %6, 0
  %or.cond5 = or i1 %or.cond3, %i.d
  br i1 %or.cond5, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.g = icmp ugt i64 %i.f, 4294967295
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw i64 %i.f to i32
  tail call fastcc void @arena_i_decay(ptr noundef %0, i32 noundef %i.h, i1 noundef zeroext false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.a ], [ 14, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 15) i32 @arena_i_purge_ctl(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 %2, ptr noundef readnone captures(address_is_null) %3, ptr noundef readnone captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = icmp ne ptr %3, null
  %i.b = icmp ne ptr %4, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp ne ptr %5, null
  %or.cond3 = or i1 %or.cond, %i.c
  %i.d = icmp ne i64 %6, 0
  %or.cond5 = or i1 %or.cond3, %i.d
  br i1 %or.cond5, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.g = icmp ugt i64 %i.f, 4294967295
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw i64 %i.f to i32
  tail call fastcc void @arena_i_decay(ptr noundef %0, i32 noundef %i.h, i1 noundef zeroext true)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.a ], [ 14, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 15) i32 @arena_i_reset_ctl(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 %2, ptr noundef readnone captures(address_is_null) %3, ptr noundef readnone captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = icmp ne ptr %3, null
  %i.b = icmp ne ptr %4, null
  %or.cond.i = or i1 %i.a, %i.b
  %i.c = icmp ne ptr %5, null
  %or.cond3.i = or i1 %or.cond.i, %i.c
  %i.d = icmp ne i64 %6, 0
  %or.cond5.i = or i1 %or.cond3.i, %i.d
  br i1 %or.cond5.i, label %arena_i_reset_destroy_helper.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !7    ; 4 uses
  %i.g = icmp ugt i64 %i.f, 4294967295
  br i1 %i.g, label %arena_i_reset_destroy_helper.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw i64 %i.f to i32
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.f
  %i.j = load atomic ptr, ptr %i.i acquire, align 8 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %arena_i_reset_destroy_helper.exit.thread, label %bb.d, !prof !103

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.j, i64 78952
  %.val.i = load i32, ptr %i.l, align 8, !tbaa !113
  %i.m = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  %i.n = icmp ult i32 %.val.i, %i.m
  br i1 %i.n, label %arena_i_reset_destroy_helper.exit.thread, label %arena_i_reset_destroy_helper.exit

arena_i_reset_destroy_helper.exit:                ; preds = %bb.d
  tail call fastcc void @arena_reset_prepare_background_thread(ptr noundef %0, i32 noundef %i.h)
  tail call void @duckdb_je_arena_reset(ptr noundef %0, ptr noundef nonnull %i.j) #14
  %i.o = load atomic i8, ptr @duckdb_je_background_thread_enabled_state monotonic, align 1, !range !46, !noundef !47
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %arena_reset_finish_background_thread.exit

bb.e:                                             ; preds = %arena_i_reset_destroy_helper.exit
  %i.q = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !171
  %i.r = load i64, ptr @duckdb_je_max_background_threads, align 8, !tbaa !7
  %i.s = urem i64 %i.f, %i.r
  %i.t = getelementptr inbounds nuw [208 x i8], ptr %i.q, i64 %i.s ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 128 ; 2 uses
  %i.v = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.u) #14
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.w) #14
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  store atomic i8 1, ptr %i.x monotonic, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 112 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !18
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 104 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23
  %.not.i.i.i = icmp eq ptr %i.ac, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.ab, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !24
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !24
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.h, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store i32 1, ptr %i.ag, align 8, !tbaa !173
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  store atomic i8 0, ptr %i.ah monotonic, align 8
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.u) #14 ; 0 uses
  br label %arena_reset_finish_background_thread.exit

arena_reset_finish_background_thread.exit:        ; preds = %arena_i_reset_destroy_helper.exit, %malloc_mutex_lock.exit.i
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 64) monotonic, align 8
  %i.aj = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 72)) #14 ; 0 uses
  br label %arena_i_reset_destroy_helper.exit.thread

arena_i_reset_destroy_helper.exit.thread:         ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %arena_reset_finish_background_thread.exit
  %.0.i19 = phi i32 [ 0, %arena_reset_finish_background_thread.exit ], [ 1, %bb.a ], [ 14, %bb.c ], [ 14, %bb.b ], [ 14, %bb.d ]
  ret i32 %.0.i19
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 15) i32 @arena_i_destroy_ctl(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 %2, ptr noundef readnone captures(address_is_null) %3, ptr noundef readnone captures(address_is_null) %4, ptr noundef readnone captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #14
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !23
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !24
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.g = icmp ne ptr %3, null
  %i.h = icmp ne ptr %4, null
  %or.cond.i = or i1 %i.g, %i.h
  %i.i = icmp ne ptr %5, null
  %or.cond3.i = or i1 %or.cond.i, %i.i
  %i.j = icmp ne i64 %6, 0
  %or.cond5.i = or i1 %or.cond3.i, %i.j
  br i1 %or.cond5.i, label %arena_i_reset_destroy_helper.exit.thread, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !7    ; 6 uses
  %i.m = icmp ugt i64 %i.l, 4294967295
  br i1 %i.m, label %arena_i_reset_destroy_helper.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw i64 %i.l to i32                ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.l
  %i.p = load atomic ptr, ptr %i.o acquire, align 8 ; 8 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %arena_i_reset_destroy_helper.exit.thread, label %bb.g, !prof !103

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %i.p, i64 78952
  %.val.i = load i32, ptr %i.r, align 8, !tbaa !113
  %i.s = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  %i.t = icmp ult i32 %.val.i, %i.s
  br i1 %i.t, label %arena_i_reset_destroy_helper.exit.thread, label %arena_i_reset_destroy_helper.exit

arena_i_reset_destroy_helper.exit:                ; preds = %bb.g
  %i.u = tail call i32 @duckdb_je_arena_nthreads_get(ptr noundef nonnull %i.p, i1 noundef zeroext false) #14
  %.not32 = icmp eq i32 %i.u, 0
  br i1 %.not32, label %bb.h, label %arena_i_reset_destroy_helper.exit.thread

bb.h:                                             ; preds = %arena_i_reset_destroy_helper.exit
  %i.v = tail call i32 @duckdb_je_arena_nthreads_get(ptr noundef nonnull %i.p, i1 noundef zeroext true) #14
  %.not33 = icmp eq i32 %i.v, 0
  br i1 %.not33, label %bb.i, label %arena_i_reset_destroy_helper.exit.thread

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @arena_reset_prepare_background_thread(ptr noundef %0, i32 noundef %i.n)
  tail call void @duckdb_je_arena_reset(ptr noundef %0, ptr noundef nonnull %i.p) #14
  tail call void @duckdb_je_arena_decay(ptr noundef %0, ptr noundef nonnull %i.p, i1 noundef zeroext false, i1 noundef zeroext true) #14
  %i.w = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 824 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !52
  %.not.i.i34 = icmp eq i8 %i.y, 0
  br i1 %.not.i.i34, label %arenas_i.exit, label %bb.j, !prof !54

bb.j:                                             ; preds = %bb.i
  %i.z = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.w, i1 noundef zeroext false) #14 ; 0 uses
  br label %arenas_i.exit

arenas_i.exit:                                    ; preds = %bb.i, %bb.j
  %i.aa = load ptr, ptr @ctl_arenas, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i8 1, ptr %i.ad, align 4, !tbaa !36
  tail call fastcc void @ctl_arena_refresh(ptr noundef %0, ptr noundef nonnull %i.p, ptr noundef %i.ac, i32 noundef %i.n, i1 noundef zeroext true)
  tail call void @duckdb_je_arena_destroy(ptr noundef %0, ptr noundef nonnull %i.p) #14
  %i.ae = load i8, ptr %i.x, align 8, !tbaa !52
  %.not.i.i35 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i35, label %tsd_fetch_impl.exit.i, label %bb.k, !prof !54

bb.k:                                             ; preds = %arenas_i.exit
  %i.af = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.w, i1 noundef zeroext false) #14 ; 0 uses
  br label %tsd_fetch_impl.exit.i

tsd_fetch_impl.exit.i:                            ; preds = %bb.k, %arenas_i.exit
  %i.ag = load ptr, ptr @ctl_arenas, align 8, !tbaa !25 ; 3 uses
  switch i32 %i.n, label %bb.m [
    i32 4096, label %arenas_i.exit36
    i32 4097, label %bb.l
  ]

bb.l:                                             ; preds = %tsd_fetch_impl.exit.i
  br label %arenas_i.exit36

bb.m:                                             ; preds = %tsd_fetch_impl.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !40
  %i.aj = zext i32 %i.ai to i64
  %i.ak = icmp eq i64 %i.l, %i.aj
  br i1 %i.ak, label %arenas_i.exit36, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = add nuw nsw i64 %i.l, 2
  %i.am = and i64 %i.al, 4294967295
  br label %arenas_i.exit36

arenas_i.exit36:                                  ; preds = %tsd_fetch_impl.exit.i, %bb.l, %bb.m, %bb.n
  %.0.i.i.i = phi i64 [ 0, %tsd_fetch_impl.exit.i ], [ 0, %bb.m ], [ %i.am, %bb.n ], [ 1, %bb.l ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0.i.i.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !29 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i8 0, ptr %i.aq, align 4, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !175
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !176
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !43 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.p, label %bb.o

bb.o:                                             ; preds = %arenas_i.exit36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !176
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !175
  store ptr %i.ap, ptr %i.aw, align 8, !tbaa !176
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !176
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !175 ; 2 uses
  store ptr %i.ba, ptr %i.as, align 8, !tbaa !176
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !176
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.au, ptr %i.bc, align 8, !tbaa !175
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.ap, ptr %i.bd, align 8, !tbaa !175
  %.pre = load ptr, ptr %i.ar, align 8, !tbaa !175
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %arenas_i.exit36
  %i.be = phi ptr [ %.pre, %bb.o ], [ %i.ap, %arenas_i.exit36 ]
  store ptr %i.be, ptr %i.at, align 8, !tbaa !43
  %i.bf = load atomic i8, ptr @duckdb_je_background_thread_enabled_state monotonic, align 1, !range !46, !noundef !47
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.q, label %arena_reset_finish_background_thread.exit

bb.q:                                             ; preds = %bb.p
  %i.bh = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !171
  %i.bi = load i64, ptr @duckdb_je_max_background_threads, align 8, !tbaa !7
  %i.bj = urem i64 %i.l, %i.bi
  %i.bk = getelementptr inbounds nuw [208 x i8], ptr %i.bh, i64 %i.bj ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 128 ; 2 uses
  %i.bm = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.bl) #14
  %.not.i.i37 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i37, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.bn) #14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  store atomic i8 1, ptr %i.bo monotonic, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 112 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !18
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 104 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !23
  %.not.i.i.i = icmp eq ptr %i.bt, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %0, ptr %i.bs, align 8, !tbaa !23
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 96 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !24
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !24
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.t, %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 168
  store i32 1, ptr %i.bx, align 8, !tbaa !173
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  store atomic i8 0, ptr %i.by monotonic, align 8
  %i.bz = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bl) #14 ; 0 uses
  br label %arena_reset_finish_background_thread.exit

arena_reset_finish_background_thread.exit:        ; preds = %bb.p, %malloc_mutex_lock.exit.i
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 64) monotonic, align 8
  %i.ca = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @duckdb_je_background_thread_lock, i64 72)) #14 ; 0 uses
  br label %arena_i_reset_destroy_helper.exit.thread

arena_i_reset_destroy_helper.exit.thread:         ; preds = %bb.g, %bb.f, %bb.e, %malloc_mutex_lock.exit, %arena_i_reset_destroy_helper.exit, %bb.h, %arena_reset_finish_background_thread.exit
  %.0 = phi i32 [ 14, %arena_i_reset_destroy_helper.exit ], [ 0, %arena_reset_finish_background_thread.exit ], [ 14, %bb.h ], [ 1, %malloc_mutex_lock.exit ], [ 14, %bb.f ], [ 14, %bb.e ], [ 14, %bb.g ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  %i.cb = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14 ; 0 uses
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @arena_i_dss_ctl(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4, ptr noundef readonly captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !38
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #14
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.e, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !23
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !24
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !24
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %.not58 = icmp eq i64 %6, 8
  br i1 %.not58, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %5, align 8, !tbaa !38     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !7    ; 5 uses
end_hunk_1
begin_hunk_2_@arena_i_dirty_decay_ms_ctl:bb.a
  br i1 %i.c, label %arena_i_decay_ms_ctl_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %.val
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %arena_i_decay_ms_ctl_impl.exit, label %arena_get.exit.i, !prof !103

arena_get.exit.i:                                 ; preds = %bb.b
  %i.g = icmp ne ptr %3, null
  %i.h = icmp ne ptr %4, null
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %arena_get.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = tail call i64 @duckdb_je_arena_decay_ms_get(ptr noundef nonnull %i.e, i32 noundef 1) #14 ; 2 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !7
  %i.j = load i64, ptr %4, align 8, !tbaa !7      ; 2 uses
  %.not.i = icmp eq i64 %i.j, 8
  br i1 %.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  store i64 %i.i, ptr %3, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select.i, i1 false)
  store i64 %spec.select.i, ptr %4, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %arena_i_decay_ms_ctl_impl.exit

bb.e:                                             ; preds = %.thread.i, %arena_get.exit.i
  %.not40.i = icmp eq ptr %5, null
  br i1 %.not40.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not41.i = icmp eq i64 %6, 8
  br i1 %.not41.i, label %bb.g, label %arena_i_decay_ms_ctl_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.k = load i64, ptr %5, align 8, !tbaa !7
  %i.l = tail call zeroext i1 @duckdb_je_arena_decay_ms_set(ptr noundef %0, ptr noundef nonnull %i.e, i32 noundef 1, i64 noundef %i.k) #14
  br i1 %i.l, label %arena_i_decay_ms_ctl_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  br label %arena_i_decay_ms_ctl_impl.exit

arena_i_decay_ms_ctl_impl.exit:                   ; preds = %bb.a, %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i32 [ 22, %bb.d ], [ 14, %bb.a ], [ 14, %bb.g ], [ 22, %bb.f ], [ 0, %bb.h ], [ 14, %bb.b ]
  ret i32 %.1.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @arena_i_muzzy_decay_ms_ctl(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4, ptr noundef readonly captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.b, align 8, !tbaa !7   ; 2 uses
  %i.c = icmp ugt i64 %.val, 4294967295
  br i1 %i.c, label %arena_i_decay_ms_ctl_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %.val
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %arena_i_decay_ms_ctl_impl.exit, label %arena_get.exit.i, !prof !103

arena_get.exit.i:                                 ; preds = %bb.b
  %i.g = icmp ne ptr %3, null
  %i.h = icmp ne ptr %4, null
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %arena_get.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = tail call i64 @duckdb_je_arena_decay_ms_get(ptr noundef nonnull %i.e, i32 noundef 2) #14 ; 2 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !7
  %i.j = load i64, ptr %4, align 8, !tbaa !7      ; 2 uses
  %.not.i = icmp eq i64 %i.j, 8
  br i1 %.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  store i64 %i.i, ptr %3, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select.i, i1 false)
  store i64 %spec.select.i, ptr %4, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %arena_i_decay_ms_ctl_impl.exit

bb.e:                                             ; preds = %.thread.i, %arena_get.exit.i
  %.not40.i = icmp eq ptr %5, null
  br i1 %.not40.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not41.i = icmp eq i64 %6, 8
  br i1 %.not41.i, label %bb.g, label %arena_i_decay_ms_ctl_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.k = load i64, ptr %5, align 8, !tbaa !7
  %i.l = tail call zeroext i1 @duckdb_je_arena_decay_ms_set(ptr noundef %0, ptr noundef nonnull %i.e, i32 noundef 2, i64 noundef %i.k) #14
  br i1 %i.l, label %arena_i_decay_ms_ctl_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  br label %arena_i_decay_ms_ctl_impl.exit

arena_i_decay_ms_ctl_impl.exit:                   ; preds = %bb.a, %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i32 [ 22, %bb.d ], [ 14, %bb.a ], [ 14, %bb.g ], [ 22, %bb.f ], [ 0, %bb.h ], [ 14, %bb.b ]
  ret i32 %.1.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @arena_i_extent_hooks_ctl(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4, ptr noundef readonly captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %7 = alloca %struct.arena_config_s, align 8     ; 5 uses
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #14
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.e, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !23
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !24
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !24
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !7    ; 3 uses
  %i.j = icmp ugt i64 %i.i, 4294967295
  br i1 %i.j, label %bb.s, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.k = trunc nuw i64 %i.i to i32                ; 3 uses
  %i.l = tail call i32 @duckdb_je_narenas_total_get() #14
  %i.m = icmp ugt i32 %i.l, %i.k
  br i1 %i.m, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.i
  %i.o = load atomic ptr, ptr %i.n acquire, align 8 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %arena_get.exit, !prof !103

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr @duckdb_je_narenas_auto, align 4, !tbaa !3
  %.not91 = icmp ugt i32 %i.q, %i.k
  br i1 %.not91, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  store ptr @duckdb_je_ehooks_default_extent_hooks, ptr %i.a, align 8, !tbaa !177
  %i.r = icmp ne ptr %3, null
  %i.s = icmp ne ptr %4, null
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr %4, align 8, !tbaa !7      ; 2 uses
  %.not92 = icmp eq i64 %i.t, 8
  br i1 %.not92, label %bb.j, label %.thread108.sink.split

bb.j:                                             ; preds = %bb.i
  store ptr @duckdb_je_ehooks_default_extent_hooks, ptr %3, align 8, !tbaa !177
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.not93 = icmp eq ptr %5, null
  br i1 %.not93, label %.thread104, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not94 = icmp eq i64 %6, 8
  br i1 %.not94, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  %i.u = load ptr, ptr %5, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) @duckdb_je_arena_config_default, i64 16, i1 false), !tbaa.struct !179
  store ptr %i.u, ptr %7, align 8, !tbaa !180
  %i.v = call ptr @duckdb_je_arena_init(ptr noundef %0, i32 noundef %i.k, ptr noundef nonnull %7) #14
  %i.w = icmp eq ptr %i.v, null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br i1 %i.w, label %.sink.split, label %.thread104

arena_get.exit:                                   ; preds = %bb.f
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.q, label %bb.n

bb.n:                                             ; preds = %arena_get.exit
  %.not89 = icmp eq i64 %6, 8
  br i1 %.not89, label %bb.o, label %.sink.split

bb.o:                                             ; preds = %bb.n
  %i.x = load ptr, ptr %5, align 8, !tbaa !177
  %i.y = tail call ptr @duckdb_je_arena_set_extent_hooks(ptr noundef %0, ptr noundef nonnull %i.o, ptr noundef %i.x) #14 ; 2 uses
  store ptr %i.y, ptr %i.a, align 8, !tbaa !177
  %i.z = icmp ne ptr %3, null
  %i.aa = icmp ne ptr %4, null
  %or.cond4 = and i1 %i.z, %i.aa
  br i1 %or.cond4, label %bb.p, label %.thread104

bb.p:                                             ; preds = %bb.o
  %i.ab = load i64, ptr %4, align 8, !tbaa !7     ; 2 uses
  %.not90 = icmp eq i64 %i.ab, 8
  br i1 %.not90, label %.thread104.sink.split, label %.thread108.sink.split

bb.q:                                             ; preds = %arena_get.exit
  %i.ac = tail call ptr @duckdb_je_arena_get_ehooks(ptr noundef nonnull %i.o) #14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load atomic ptr, ptr %i.ad acquire, align 8 ; 2 uses
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !177
  %i.af = icmp ne ptr %3, null
  %i.ag = icmp ne ptr %4, null
  %or.cond6 = and i1 %i.af, %i.ag
  br i1 %or.cond6, label %bb.r, label %.thread104

bb.r:                                             ; preds = %bb.q
  %i.ah = load i64, ptr %4, align 8, !tbaa !7     ; 2 uses
  %.not88 = icmp eq i64 %i.ah, 8
  br i1 %.not88, label %.thread104.sink.split, label %.thread108.sink.split

.thread108.sink.split:                            ; preds = %bb.r, %bb.p, %bb.i
  %.sink = phi i64 [ %i.ab, %bb.p ], [ %i.t, %bb.i ], [ %i.ah, %bb.r ]
  %spec.select96 = tail call i64 @llvm.umin.i64(i64 %.sink, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select96, i1 false)
  store i64 %spec.select96, ptr %4, align 8, !tbaa !7
  br label %.sink.split

.thread104.sink.split:                            ; preds = %bb.r, %bb.p
  %.sink124 = phi ptr [ %i.y, %bb.p ], [ %i.ae, %bb.r ]
  store ptr %.sink124, ptr %3, align 8, !tbaa !177
  br label %.thread104

.thread104:                                       ; preds = %.thread104.sink.split, %bb.o, %bb.m, %bb.q, %bb.k
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.l, %bb.n, %bb.g, %.thread108.sink.split, %.thread104
  %.5.ph = phi i32 [ 0, %.thread104 ], [ 22, %bb.n ], [ 14, %bb.g ], [ 14, %bb.m ], [ 22, %bb.l ], [ 22, %.thread108.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.e, %malloc_mutex_lock.exit
  %.5 = phi i32 [ 14, %malloc_mutex_lock.exit ], [ 14, %bb.e ], [ %.5.ph, %.sink.split ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  %i.ai = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14 ; 0 uses
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @arena_i_retain_grow_limit_ctl(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4, ptr noundef readonly captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load i8, ptr @duckdb_je_opt_retain, align 1, !tbaa !102, !range !46, !noundef !47
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #14
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.h, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !23
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !24
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 40), align 8, !tbaa !24
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !7    ; 3 uses
  %i.m = icmp ugt i64 %i.l, 4294967295
  br i1 %i.m, label %arena_get.exit.thread, label %bb.f

bb.f:                                             ; preds = %malloc_mutex_lock.exit
  %i.n = trunc nuw i64 %i.l to i32
  %i.o = tail call i32 @duckdb_je_narenas_total_get() #14
  %i.p = icmp ugt i32 %i.o, %i.n
  br i1 %i.p, label %bb.g, label %arena_get.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.l
  %i.r = load atomic ptr, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %arena_get.exit.thread, label %arena_get.exit, !prof !103

arena_get.exit:                                   ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %.not40 = icmp eq ptr %5, null
  br i1 %.not40, label %bb.j, label %bb.h

bb.h:                                             ; preds = %arena_get.exit
  %.not41 = icmp eq i64 %6, 8
  br i1 %.not41, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr %5, align 8, !tbaa !7
  store i64 %i.t, ptr %i.b, align 8, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %arena_get.exit
  %. = phi ptr [ %i.b, %bb.i ], [ null, %arena_get.exit ]
  %i.u = call zeroext i1 @duckdb_je_arena_retain_grow_limit_get_set(ptr noundef %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.a, ptr noundef %.) #14
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne ptr %4, null
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.x = load i64, ptr %4, align 8, !tbaa !7      ; 2 uses
  %.not42 = icmp eq i64 %i.x, 8
  br i1 %.not42, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %spec.select = call i64 @llvm.umin.i64(i64 %i.x, i64 8) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %3, ptr nonnull align 8 %i.a, i64 %spec.select, i1 false)
  store i64 %spec.select, ptr %4, align 8, !tbaa !7
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.y = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.y, ptr %3, align 8, !tbaa !7
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.j, %bb.k, %bb.n, %bb.h
  %.2 = phi i32 [ 22, %bb.h ], [ 22, %bb.m ], [ 0, %bb.k ], [ 0, %bb.n ], [ 14, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %arena_get.exit.thread

arena_get.exit.thread:                            ; preds = %bb.g, %bb.f, %bb.o, %malloc_mutex_lock.exit
  %.3 = phi i32 [ %.2, %bb.o ], [ 14, %malloc_mutex_lock.exit ], [ 14, %bb.f ], [ 14, %bb.g ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  %i.z = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %arena_get.exit.thread
  %.0 = phi i32 [ %.3, %arena_get.exit.thread ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @arena_i_name_ctl(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 %2, ptr noundef readonly captures(address_is_null) %3, ptr noundef readonly captures(address_is_null) %4, ptr noundef readonly captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 72)) #14
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @ctl_mtx) #14
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 56), align 8, !tbaa !18
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 48), align 8, !tbaa !23
end_hunk_2
