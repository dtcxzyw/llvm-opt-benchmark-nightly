inline.NumInlined: 35
inline.NumDeleted: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ticker_geom_s = type { i32, i32 }
%struct.tsd_link_t = type { ptr, ptr }
%struct.peak_s = type { i64, i64 }
%struct.activity_callback_thunk_s = type { ptr, ptr }
%struct.anon = type { ptr, ptr }
%struct.cache_bin_array_descriptor_s = type { %struct.anon.0, ptr }
%struct.anon.0 = type { ptr, ptr }
%struct.rtree_ctx_s = type { [16 x %struct.rtree_ctx_cache_elm_s], [8 x %struct.rtree_ctx_cache_elm_s] }
%struct.rtree_ctx_cache_elm_s = type { i64, ptr }
%struct.atomic_u8_t = type { i8 }
%struct.tcache_s = type { ptr, [76 x %struct.cache_bin_s] }
%struct.cache_bin_s = type { ptr, %struct.cache_bin_stats_s, i16, i16, i16 }
%struct.cache_bin_stats_s = type { i64 }
%struct.witness_list_t = type { ptr }
%struct.atomic_u32_t = type { i32 }
%struct.malloc_mutex_s = type { %union.anon }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.mutex_prof_data_t, %union.pthread_mutex_t, %struct.atomic_b_t }
%struct.mutex_prof_data_t = type { %struct.nstime_t, %struct.nstime_t, i64, i64, i32, %struct.atomic_u32_t, i64, ptr, i64 }
%struct.nstime_t = type { i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.atomic_b_t = type { i8 }

@je_tsd_tls = hidden thread_local(initialexec) global { i8, i8, [6 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i64, i64, i64, ptr, ptr, %struct.ticker_geom_s, i8, { <{ i8, [38 x i8] }> }, %struct.tsd_link_t, i8, [7 x i8], %struct.peak_s, %struct.activity_callback_thunk_s, { %struct.anon, %struct.cache_bin_array_descriptor_s, ptr, i32, [39 x i8], [39 x i8], [39 x i8], [7 x i8], ptr, ptr }, %struct.rtree_ctx_s, %struct.atomic_u8_t, [7 x i8], i64, i64, i64, i64, %struct.tcache_s, { %struct.witness_list_t, i8, [7 x i8] } } { i8 0, i8 0, [6 x i8] zeroinitializer, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, ptr null, i64 0, i64 0, i64 0, ptr null, ptr null, %struct.ticker_geom_s { i32 1000, i32 1000 }, i8 -1, { <{ i8, [38 x i8] }> } { <{ i8, [38 x i8] }> <{ i8 -1, [38 x i8] zeroinitializer }> }, %struct.tsd_link_t zeroinitializer, i8 0, [7 x i8] zeroinitializer, %struct.peak_s zeroinitializer, %struct.activity_callback_thunk_s zeroinitializer, { %struct.anon, %struct.cache_bin_array_descriptor_s, ptr, i32, [39 x i8], [39 x i8], [39 x i8], [7 x i8], ptr, ptr } zeroinitializer, %struct.rtree_ctx_s { [16 x %struct.rtree_ctx_cache_elm_s] [%struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }], [8 x %struct.rtree_ctx_cache_elm_s] [%struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }] }, %struct.atomic_u8_t { i8 6 }, [7 x i8] zeroinitializer, i64 0, i64 0, i64 0, i64 0, %struct.tcache_s zeroinitializer, { %struct.witness_list_t, i8, [7 x i8] } zeroinitializer }, align 8
@je_tsd_booted = hidden local_unnamed_addr global i8 0, align 1
@tsd_global_slow_count = internal global %struct.atomic_u32_t zeroinitializer, align 4
@tsd_nominal_tsds_lock = internal global %struct.malloc_mutex_s zeroinitializer, align 8
@.str = private unnamed_addr constant [22 x i8] c"tsd_nominal_tsds_lock\00", align 1
@tsd_nominal_tsds.0 = internal unnamed_addr global ptr null, align 8
@je_tsd_tsd = hidden global i32 0, align 4
@je_malloc_slow = external local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"<jemalloc>: Error setting tsd.\0A\00", align 1
@je_opt_abort = external local_unnamed_addr global i8, align 1

; Function Attrs: nounwind uwtable
define hidden void @je_tsd_global_slow_inc(ptr noundef %0) local_unnamed_addr #0 {
atomic_fetch_add_u32.exit:
  %i.a = atomicrmw add ptr @tsd_global_slow_count, i32 1 monotonic, align 4 ; 0 uses
  fence release
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 64)) #7
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %atomic_fetch_add_u32.exit
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @tsd_nominal_tsds_lock) #7
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 104) monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %atomic_fetch_add_u32.exit
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 56), align 8, !tbaa !11
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 56), align 8, !tbaa !11
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 48), align 8, !tbaa !18
  %.not.i.i.i = icmp eq ptr %i.e, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 48), align 8, !tbaa !18
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 40), align 8, !tbaa !19
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 40), align 8, !tbaa !19
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.c, %bb.b
  %i.h = load ptr, ptr @tsd_nominal_tsds.0, align 8, !tbaa !20 ; 2 uses
  %.not9.i = icmp eq ptr %i.h, null
  br i1 %.not9.i, label %tsd_force_recompute.exit, label %atomic_store_u8.exit.i

atomic_store_u8.exit.i:                           ; preds = %malloc_mutex_lock.exit.i, %atomic_store_u8.exit.i
  %.010.i = phi ptr [ %i.m, %atomic_store_u8.exit.i ], [ %i.h, %malloc_mutex_lock.exit.i ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.010.i, i64 832
  store atomic i8 2, ptr %i.i monotonic, align 1
  fence seq_cst
  %i.j = getelementptr inbounds nuw i8, ptr %.010.i, i64 848
  store i64 0, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %.010.i, i64 864
  store i64 0, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24   ; 3 uses
  %i.n = load ptr, ptr @tsd_nominal_tsds.0, align 8, !tbaa !20
  %.not8.i = icmp eq ptr %i.m, %i.n
  %.not12.i = icmp eq ptr %i.m, null
  %.not.i = or i1 %.not12.i, %.not8.i
  br i1 %.not.i, label %tsd_force_recompute.exit, label %atomic_store_u8.exit.i

tsd_force_recompute.exit:                         ; preds = %atomic_store_u8.exit.i, %malloc_mutex_lock.exit.i
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 104) monotonic, align 8
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 64)) #7 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_tsd_global_slow_dec(ptr noundef %0) local_unnamed_addr #0 {
atomic_fetch_sub_u32.exit:
  %i.a = atomicrmw sub ptr @tsd_global_slow_count, i32 1 monotonic, align 4 ; 0 uses
  fence release
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 64)) #7
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %atomic_fetch_sub_u32.exit
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @tsd_nominal_tsds_lock) #7
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 104) monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %atomic_fetch_sub_u32.exit
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 56), align 8, !tbaa !11
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 56), align 8, !tbaa !11
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 48), align 8, !tbaa !18
  %.not.i.i.i = icmp eq ptr %i.e, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 48), align 8, !tbaa !18
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 40), align 8, !tbaa !19
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 40), align 8, !tbaa !19
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.c, %bb.b
  %i.h = load ptr, ptr @tsd_nominal_tsds.0, align 8, !tbaa !20 ; 2 uses
  %.not9.i = icmp eq ptr %i.h, null
  br i1 %.not9.i, label %tsd_force_recompute.exit, label %atomic_store_u8.exit.i

atomic_store_u8.exit.i:                           ; preds = %malloc_mutex_lock.exit.i, %atomic_store_u8.exit.i
  %.010.i = phi ptr [ %i.m, %atomic_store_u8.exit.i ], [ %i.h, %malloc_mutex_lock.exit.i ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.010.i, i64 832
  store atomic i8 2, ptr %i.i monotonic, align 1
  fence seq_cst
  %i.j = getelementptr inbounds nuw i8, ptr %.010.i, i64 848
  store i64 0, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %.010.i, i64 864
  store i64 0, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24   ; 3 uses
  %i.n = load ptr, ptr @tsd_nominal_tsds.0, align 8, !tbaa !20
  %.not8.i = icmp eq ptr %i.m, %i.n
  %.not12.i = icmp eq ptr %i.m, null
  %.not.i = or i1 %.not12.i, %.not8.i
  br i1 %.not.i, label %tsd_force_recompute.exit, label %atomic_store_u8.exit.i

tsd_force_recompute.exit:                         ; preds = %atomic_store_u8.exit.i, %malloc_mutex_lock.exit.i
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 104) monotonic, align 8
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 64)) #7 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @je_tsd_global_slow() local_unnamed_addr #1 {
atomic_load_u32.exit:
  %i.a = load atomic i32, ptr @tsd_global_slow_count monotonic, align 4
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define hidden void @je_tsd_slow_update(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 832        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.b

bb.b:                                             ; preds = %atomic_exchange_u8.exit, %bb.a
  %.val.i = load i8, ptr %i.a, align 8, !tbaa !48 ; 2 uses
  %i.c = icmp ult i8 %.val.i, 3
  br i1 %i.c, label %bb.c, label %atomic_exchange_u8.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr @je_malloc_slow, align 1, !tbaa !49, !range !50, !noundef !51
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %atomic_exchange_u8.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %0, align 8, !tbaa !49, !range !50, !noundef !51
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %tsd_local_slow.exit.i, label %atomic_exchange_u8.exit

tsd_local_slow.exit.i:                            ; preds = %bb.d
  %i.h = load i8, ptr %i.b, align 1, !tbaa !48
  %i.i = icmp sgt i8 %i.h, 0
  br i1 %i.i, label %atomic_exchange_u8.exit, label %bb.e

bb.e:                                             ; preds = %tsd_local_slow.exit.i
  %i.j = load atomic i32, ptr @tsd_global_slow_count monotonic, align 4
  %.not.i = icmp ne i32 %i.j, 0
  %spec.select.i = zext i1 %.not.i to i8
  br label %atomic_exchange_u8.exit

atomic_exchange_u8.exit:                          ; preds = %bb.b, %bb.c, %bb.d, %tsd_local_slow.exit.i, %bb.e
  %.0.i5 = phi i8 [ 1, %tsd_local_slow.exit.i ], [ 1, %bb.c ], [ %spec.select.i, %bb.e ], [ %.val.i, %bb.b ], [ 1, %bb.d ]
  %i.k = atomicrmw xchg ptr %i.a, i8 %.0.i5 acquire, align 1
  %i.l = icmp eq i8 %i.k, 2
  br i1 %i.l, label %bb.b, label %bb.f, !llvm.loop !52

bb.f:                                             ; preds = %atomic_exchange_u8.exit
  tail call void @je_te_recompute_fast_threshold(ptr noundef nonnull %0) #7
  ret void
}

declare void @je_te_recompute_fast_threshold(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @je_tsd_state_set(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
atomic_load_u8.exit:
  %i.a = getelementptr i8, ptr %0, i64 832        ; 5 uses
  %i.b = load atomic i8, ptr %i.a monotonic, align 1
  %i.c = icmp ugt i8 %i.b, 2
  br i1 %i.c, label %atomic_store_u8.exit11, label %bb.f

atomic_store_u8.exit11:                           ; preds = %atomic_load_u8.exit
  store atomic i8 %1, ptr %i.a monotonic, align 1
  %i.d = icmp ult i8 %1, 3
  br i1 %i.d, label %bb.a, label %bb.r

bb.a:                                             ; preds = %atomic_store_u8.exit11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr %0, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !54
  %i.g = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 64)) #7
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @tsd_nominal_tsds_lock) #7
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 104) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 56), align 8, !tbaa !11
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 56), align 8, !tbaa !11
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 48), align 8, !tbaa !18
  %.not.i.i.i = icmp eq ptr %i.j, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 48), align 8, !tbaa !18
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 40), align 8, !tbaa !19
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 40), align 8, !tbaa !19
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.d, %bb.c
  %i.m = load ptr, ptr @tsd_nominal_tsds.0, align 8, !tbaa !20 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %tsd_add_nominal.exit, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 208 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54   ; 3 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  store ptr %i.p, ptr %i.r, align 8, !tbaa !24
  store ptr %i.q, ptr %i.o, align 8, !tbaa !54
  store ptr %i.p, ptr %i.f, align 8, !tbaa !54
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  store ptr %i.m, ptr %i.t, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  store ptr %0, ptr %i.u, align 8, !tbaa !24
  br label %tsd_add_nominal.exit

tsd_add_nominal.exit:                             ; preds = %malloc_mutex_lock.exit.i, %bb.e
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !24
  store ptr %i.v, ptr @tsd_nominal_tsds.0, align 8, !tbaa !20
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 104) monotonic, align 8
  %i.w = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 64)) #7 ; 0 uses
  br label %bb.r

bb.f:                                             ; preds = %atomic_load_u8.exit
  %i.x = icmp ugt i8 %1, 2
  br i1 %i.x, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.y = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 64)) #7
  %.not.i.i15 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @tsd_nominal_tsds_lock) #7
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 104) monotonic, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 56), align 8, !tbaa !11
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 56), align 8, !tbaa !11
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 48), align 8, !tbaa !18
  %.not.i.i.i16 = icmp eq ptr %i.ab, %0
  br i1 %.not.i.i.i16, label %malloc_mutex_lock.exit.i17, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 48), align 8, !tbaa !18
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 40), align 8, !tbaa !19
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 40), align 8, !tbaa !19
  br label %malloc_mutex_lock.exit.i17

malloc_mutex_lock.exit.i17:                       ; preds = %bb.j, %bb.i
  %i.ae = load ptr, ptr @tsd_nominal_tsds.0, align 8, !tbaa !20 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %malloc_mutex_lock.exit.i17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !24 ; 2 uses
  store ptr %i.ah, ptr @tsd_nominal_tsds.0, align 8, !tbaa !20
  %i.ai = icmp eq ptr %i.ah, %0
  br i1 %i.ai, label %bb.l, label %.thread.i

.thread.i:                                        ; preds = %bb.k, %malloc_mutex_lock.exit.i17
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 208
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !54 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !54 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 200
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !24
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 208 ; 2 uses
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !54
  store ptr %i.am, ptr %i.an, align 8, !tbaa !54
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 200
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 200
  store ptr %0, ptr %i.au, align 8, !tbaa !24
  br label %atomic_store_u8.exit

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr @tsd_nominal_tsds.0, align 8, !tbaa !20
  br label %atomic_store_u8.exit

atomic_store_u8.exit:                             ; preds = %.thread.i, %bb.l
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 104) monotonic, align 8
  %i.av = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 64)) #7 ; 0 uses
  store atomic i8 %1, ptr %i.a monotonic, align 1
end_hunk_0
