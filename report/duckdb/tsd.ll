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
%struct.tcache_s = type { ptr, [73 x %struct.cache_bin_s] }
%struct.cache_bin_s = type { ptr, %struct.cache_bin_stats_s, i16, i16, i16, %struct.cache_bin_info_s }
%struct.cache_bin_stats_s = type { i64 }
%struct.cache_bin_info_s = type { i16 }
%struct.witness_list_t = type { ptr }
%struct.atomic_u32_t = type { i32 }
%struct.malloc_mutex_s = type { %union.anon }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.mutex_prof_data_t, %struct.atomic_b_t, %union.pthread_mutex_t }
%struct.mutex_prof_data_t = type { %struct.nstime_t, %struct.nstime_t, i64, i64, i32, %struct.atomic_u32_t, i64, ptr, i64 }
%struct.nstime_t = type { i64 }
%struct.atomic_b_t = type { i8 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

@duckdb_je_tsd_tls = thread_local global { i8, i8, i8, [5 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i64, i64, i64, ptr, ptr, %struct.ticker_geom_s, i8, { <{ i8, [35 x i8] }> }, [3 x i8], %struct.tsd_link_t, i8, [7 x i8], %struct.peak_s, %struct.activity_callback_thunk_s, { %struct.anon, %struct.cache_bin_array_descriptor_s, ptr, i32, i32, [36 x i8], [36 x i8], [36 x i8], [4 x i8], ptr, ptr }, %struct.rtree_ctx_s, %struct.atomic_u8_t, [7 x i8], i64, i64, i64, i64, %struct.tcache_s, { %struct.witness_list_t, i8, [7 x i8] } } { i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, ptr null, i64 0, i64 0, i64 0, ptr null, ptr null, %struct.ticker_geom_s { i32 1000, i32 1000 }, i8 -1, { <{ i8, [35 x i8] }> } { <{ i8, [35 x i8] }> <{ i8 -1, [35 x i8] zeroinitializer }> }, [3 x i8] zeroinitializer, %struct.tsd_link_t zeroinitializer, i8 0, [7 x i8] zeroinitializer, %struct.peak_s zeroinitializer, %struct.activity_callback_thunk_s zeroinitializer, { %struct.anon, %struct.cache_bin_array_descriptor_s, ptr, i32, i32, [36 x i8], [36 x i8], [36 x i8], [4 x i8], ptr, ptr } zeroinitializer, %struct.rtree_ctx_s { [16 x %struct.rtree_ctx_cache_elm_s] [%struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }], [8 x %struct.rtree_ctx_cache_elm_s] [%struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }, %struct.rtree_ctx_cache_elm_s { i64 1, ptr null }] }, %struct.atomic_u8_t { i8 6 }, [7 x i8] zeroinitializer, i64 0, i64 0, i64 0, i64 0, %struct.tcache_s zeroinitializer, { %struct.witness_list_t, i8, [7 x i8] } zeroinitializer }, align 8
@duckdb_je_tsd_booted = local_unnamed_addr global i8 0, align 1
@tsd_global_slow_count = internal global %struct.atomic_u32_t zeroinitializer, align 4
@tsd_nominal_tsds_lock = internal global %struct.malloc_mutex_s zeroinitializer, align 8
@.str = private unnamed_addr constant [22 x i8] c"tsd_nominal_tsds_lock\00", align 1
@tsd_nominal_tsds.0 = internal unnamed_addr global ptr null, align 8
@duckdb_je_tsd_tsd = global i32 0, align 4
@duckdb_je_malloc_slow = external local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"<jemalloc>: Error setting tsd.\0A\00", align 1
@duckdb_je_opt_abort = external local_unnamed_addr global i8, align 1

; Function Attrs: nounwind uwtable
define void @duckdb_je_tsd_global_slow_inc(ptr noundef %0) local_unnamed_addr #0 {
atomic_fetch_add_u32.exit:
  %i.a = atomicrmw add ptr @tsd_global_slow_count, i32 1 monotonic, align 4 ; 0 uses
  fence release
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 72)) #7
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %atomic_fetch_add_u32.exit
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @tsd_nominal_tsds_lock) #7
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 64) monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %atomic_fetch_add_u32.exit
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 56), align 8, !tbaa !7
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 56), align 8, !tbaa !7
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 48), align 8, !tbaa !14
  %.not.i.i.i = icmp eq ptr %i.e, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 48), align 8, !tbaa !14
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 40), align 8, !tbaa !15
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 40), align 8, !tbaa !15
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.c, %bb.b
  %i.h = load ptr, ptr @tsd_nominal_tsds.0, align 8, !tbaa !16 ; 2 uses
  %.not9.i = icmp eq ptr %i.h, null
  br i1 %.not9.i, label %tsd_force_recompute.exit, label %atomic_store_u8.exit.i

atomic_store_u8.exit.i:                           ; preds = %malloc_mutex_lock.exit.i, %atomic_store_u8.exit.i
  %.010.i = phi ptr [ %i.m, %atomic_store_u8.exit.i ], [ %i.h, %malloc_mutex_lock.exit.i ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.010.i, i64 824
  store atomic i8 2, ptr %i.i monotonic, align 1
  fence seq_cst
  %i.j = getelementptr inbounds nuw i8, ptr %.010.i, i64 840
  store i64 0, ptr %i.j, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %.010.i, i64 856
  store i64 0, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 3 uses
  %i.n = load ptr, ptr @tsd_nominal_tsds.0, align 8, !tbaa !16
  %.not8.i = icmp eq ptr %i.m, %i.n
  %.not12.i = icmp eq ptr %i.m, null
  %.not.i = or i1 %.not12.i, %.not8.i
  br i1 %.not.i, label %tsd_force_recompute.exit, label %atomic_store_u8.exit.i

tsd_force_recompute.exit:                         ; preds = %atomic_store_u8.exit.i, %malloc_mutex_lock.exit.i
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 64) monotonic, align 8
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 72)) #7 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tsd_global_slow_dec(ptr noundef %0) local_unnamed_addr #0 {
atomic_fetch_sub_u32.exit:
  %i.a = atomicrmw sub ptr @tsd_global_slow_count, i32 1 monotonic, align 4 ; 0 uses
  fence release
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 72)) #7
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %atomic_fetch_sub_u32.exit
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @tsd_nominal_tsds_lock) #7
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 64) monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %atomic_fetch_sub_u32.exit
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 56), align 8, !tbaa !7
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 56), align 8, !tbaa !7
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 48), align 8, !tbaa !14
  %.not.i.i.i = icmp eq ptr %i.e, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 48), align 8, !tbaa !14
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 40), align 8, !tbaa !15
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 40), align 8, !tbaa !15
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.c, %bb.b
  %i.h = load ptr, ptr @tsd_nominal_tsds.0, align 8, !tbaa !16 ; 2 uses
  %.not9.i = icmp eq ptr %i.h, null
  br i1 %.not9.i, label %tsd_force_recompute.exit, label %atomic_store_u8.exit.i

atomic_store_u8.exit.i:                           ; preds = %malloc_mutex_lock.exit.i, %atomic_store_u8.exit.i
  %.010.i = phi ptr [ %i.m, %atomic_store_u8.exit.i ], [ %i.h, %malloc_mutex_lock.exit.i ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.010.i, i64 824
  store atomic i8 2, ptr %i.i monotonic, align 1
  fence seq_cst
  %i.j = getelementptr inbounds nuw i8, ptr %.010.i, i64 840
  store i64 0, ptr %i.j, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %.010.i, i64 856
  store i64 0, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 3 uses
  %i.n = load ptr, ptr @tsd_nominal_tsds.0, align 8, !tbaa !16
  %.not8.i = icmp eq ptr %i.m, %i.n
  %.not12.i = icmp eq ptr %i.m, null
  %.not.i = or i1 %.not12.i, %.not8.i
  br i1 %.not.i, label %tsd_force_recompute.exit, label %atomic_store_u8.exit.i

tsd_force_recompute.exit:                         ; preds = %atomic_store_u8.exit.i, %malloc_mutex_lock.exit.i
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 64) monotonic, align 8
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 72)) #7 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @duckdb_je_tsd_global_slow() local_unnamed_addr #1 {
atomic_load_u32.exit:
  %i.a = load atomic i32, ptr @tsd_global_slow_count monotonic, align 4
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tsd_slow_update(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 824        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.b

bb.b:                                             ; preds = %atomic_exchange_u8.exit, %bb.a
  %.val.i = load i8, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %i.c = icmp ult i8 %.val.i, 3
  br i1 %i.c, label %bb.c, label %atomic_exchange_u8.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr @duckdb_je_malloc_slow, align 1, !tbaa !45, !range !46, !noundef !47
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %atomic_exchange_u8.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %0, align 1, !tbaa !45, !range !46, !noundef !47
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %tsd_local_slow.exit.i, label %atomic_exchange_u8.exit

tsd_local_slow.exit.i:                            ; preds = %bb.d
  %i.h = load i8, ptr %i.b, align 1, !tbaa !44
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
  br i1 %i.l, label %bb.b, label %bb.f

bb.f:                                             ; preds = %atomic_exchange_u8.exit
  tail call void @duckdb_je_te_recompute_fast_threshold(ptr noundef nonnull %0) #7
  ret void
}

declare void @duckdb_je_te_recompute_fast_threshold(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @duckdb_je_tsd_state_set(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
atomic_load_u8.exit:
  %i.a = getelementptr i8, ptr %0, i64 824        ; 5 uses
  %i.b = load atomic i8, ptr %i.a monotonic, align 1
  %i.c = icmp ugt i8 %i.b, 2
  br i1 %i.c, label %atomic_store_u8.exit11, label %bb.f

atomic_store_u8.exit11:                           ; preds = %atomic_load_u8.exit
  store atomic i8 %1, ptr %i.a monotonic, align 1
  %i.d = icmp ult i8 %1, 3
  br i1 %i.d, label %bb.a, label %bb.r

bb.a:                                             ; preds = %atomic_store_u8.exit11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr %0, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !48
  %i.g = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 72)) #7
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @tsd_nominal_tsds_lock) #7
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 64) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 56), align 8, !tbaa !7
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 56), align 8, !tbaa !7
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 48), align 8, !tbaa !14
  %.not.i.i.i = icmp eq ptr %i.j, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 48), align 8, !tbaa !14
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 40), align 8, !tbaa !15
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 40), align 8, !tbaa !15
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.d, %bb.c
  %i.m = load ptr, ptr @tsd_nominal_tsds.0, align 8, !tbaa !16 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %tsd_add_nominal.exit, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 208 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48   ; 3 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  store ptr %i.p, ptr %i.r, align 8, !tbaa !20
  store ptr %i.q, ptr %i.o, align 8, !tbaa !48
  store ptr %i.p, ptr %i.f, align 8, !tbaa !48
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  store ptr %i.m, ptr %i.t, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  store ptr %0, ptr %i.u, align 8, !tbaa !20
  br label %tsd_add_nominal.exit

tsd_add_nominal.exit:                             ; preds = %malloc_mutex_lock.exit.i, %bb.e
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !20
  store ptr %i.v, ptr @tsd_nominal_tsds.0, align 8, !tbaa !16
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 64) monotonic, align 8
  %i.w = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 72)) #7 ; 0 uses
  br label %bb.r

bb.f:                                             ; preds = %atomic_load_u8.exit
  %i.x = icmp ugt i8 %1, 2
  br i1 %i.x, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.y = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 72)) #7
  %.not.i.i15 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @tsd_nominal_tsds_lock) #7
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 64) monotonic, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 56), align 8, !tbaa !7
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 56), align 8, !tbaa !7
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 48), align 8, !tbaa !14
  %.not.i.i.i16 = icmp eq ptr %i.ab, %0
  br i1 %.not.i.i.i16, label %malloc_mutex_lock.exit.i17, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 48), align 8, !tbaa !14
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 40), align 8, !tbaa !15
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 40), align 8, !tbaa !15
  br label %malloc_mutex_lock.exit.i17

malloc_mutex_lock.exit.i17:                       ; preds = %bb.j, %bb.i
  %i.ae = load ptr, ptr @tsd_nominal_tsds.0, align 8, !tbaa !16 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %malloc_mutex_lock.exit.i17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20 ; 2 uses
  store ptr %i.ah, ptr @tsd_nominal_tsds.0, align 8, !tbaa !16
  %i.ai = icmp eq ptr %i.ah, %0
  br i1 %i.ai, label %bb.l, label %.thread.i

.thread.i:                                        ; preds = %bb.k, %malloc_mutex_lock.exit.i17
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 208
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !48 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 200
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !20
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !20 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 208 ; 2 uses
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 200
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 200
  store ptr %0, ptr %i.au, align 8, !tbaa !20
  br label %atomic_store_u8.exit

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr @tsd_nominal_tsds.0, align 8, !tbaa !16
  br label %atomic_store_u8.exit

atomic_store_u8.exit:                             ; preds = %.thread.i, %bb.l
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 64) monotonic, align 8
  %i.av = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tsd_nominal_tsds_lock, i64 72)) #7 ; 0 uses
  store atomic i8 %1, ptr %i.a monotonic, align 1
  br label %bb.r

bb.m:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.n

bb.n:                                             ; preds = %atomic_exchange_u8.exit.i, %bb.m
  %.val.i.i = load i8, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %i.ax = icmp ult i8 %.val.i.i, 3
  br i1 %i.ax, label %bb.o, label %atomic_exchange_u8.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ay = load i8, ptr @duckdb_je_malloc_slow, align 1, !tbaa !45, !range !46, !noundef !47
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %atomic_exchange_u8.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = load i8, ptr %0, align 1, !tbaa !45, !range !46, !noundef !47
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %tsd_local_slow.exit.i.i, label %atomic_exchange_u8.exit.i

tsd_local_slow.exit.i.i:                          ; preds = %bb.p
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !44
  %i.bd = icmp sgt i8 %i.bc, 0
  br i1 %i.bd, label %atomic_exchange_u8.exit.i, label %bb.q

bb.q:                                             ; preds = %tsd_local_slow.exit.i.i
  %i.be = load atomic i32, ptr @tsd_global_slow_count monotonic, align 4
  %.not.i.i18 = icmp ne i32 %i.be, 0
  %spec.select.i.i = zext i1 %.not.i.i18 to i8
  br label %atomic_exchange_u8.exit.i

atomic_exchange_u8.exit.i:                        ; preds = %bb.q, %tsd_local_slow.exit.i.i, %bb.p, %bb.o, %bb.n
  %.0.i5.i = phi i8 [ 1, %tsd_local_slow.exit.i.i ], [ 1, %bb.o ], [ %spec.select.i.i, %bb.q ], [ %.val.i.i, %bb.n ], [ 1, %bb.p ]
  %i.bf = atomicrmw xchg ptr %i.a, i8 %.0.i5.i acquire, align 1
  %i.bg = icmp eq i8 %i.bf, 2
  br i1 %i.bg, label %bb.n, label %duckdb_je_tsd_slow_update.exit

duckdb_je_tsd_slow_update.exit:                   ; preds = %atomic_exchange_u8.exit.i
  tail call void @duckdb_je_te_recompute_fast_threshold(ptr noundef nonnull %0) #7
  br label %bb.r

bb.r:                                             ; preds = %atomic_store_u8.exit, %duckdb_je_tsd_slow_update.exit, %atomic_store_u8.exit11, %tsd_add_nominal.exit
  tail call void @duckdb_je_te_recompute_fast_threshold(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @duckdb_je_tsd_fetch_slow(ptr noundef returned %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 7 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !44
  switch i8 %i.b, label %bb.ah [
    i8 4, label %bb.ac
    i8 2, label %bb.b
    i8 6, label %bb.g
    i8 3, label %bb.w
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.c

thread-pre-split:                                 ; preds = %atomic_exchange_u8.exit.i
  %.val.i.i.pr = load i8, ptr %i.a, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.b
  %.val.i.i = phi i8 [ %.val.i.i.pr, %thread-pre-split ], [ 2, %bb.b ] ; 2 uses
  %i.d = icmp ult i8 %.val.i.i, 3
  br i1 %i.d, label %bb.d, label %atomic_exchange_u8.exit.i

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr @duckdb_je_malloc_slow, align 1, !tbaa !45, !range !46, !noundef !47
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %atomic_exchange_u8.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i8, ptr %0, align 1, !tbaa !45, !range !46, !noundef !47
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %tsd_local_slow.exit.i.i, label %atomic_exchange_u8.exit.i

tsd_local_slow.exit.i.i:                          ; preds = %bb.e
  %i.i = load i8, ptr %i.c, align 1, !tbaa !44
  %i.j = icmp sgt i8 %i.i, 0
  br i1 %i.j, label %atomic_exchange_u8.exit.i, label %bb.f

bb.f:                                             ; preds = %tsd_local_slow.exit.i.i
  %i.k = load atomic i32, ptr @tsd_global_slow_count monotonic, align 4
  %.not.i.i = icmp ne i32 %i.k, 0
  %spec.select.i.i = zext i1 %.not.i.i to i8
  br label %atomic_exchange_u8.exit.i

atomic_exchange_u8.exit.i:                        ; preds = %bb.f, %tsd_local_slow.exit.i.i, %bb.e, %bb.d, %bb.c
  %.0.i5.i = phi i8 [ 1, %tsd_local_slow.exit.i.i ], [ 1, %bb.d ], [ %spec.select.i.i, %bb.f ], [ %.val.i.i, %bb.c ], [ 1, %bb.e ]
  %i.l = atomicrmw xchg ptr %i.a, i8 %.0.i5.i acquire, align 1
  %i.m = icmp eq i8 %i.l, 2
  br i1 %i.m, label %thread-pre-split, label %duckdb_je_tsd_slow_update.exit

duckdb_je_tsd_slow_update.exit:                   ; preds = %atomic_exchange_u8.exit.i
  tail call void @duckdb_je_te_recompute_fast_threshold(ptr noundef nonnull %0) #7
  br label %bb.ah

bb.g:                                             ; preds = %bb.a
  br i1 %1, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load i8, ptr @duckdb_je_tsd_booted, align 1, !tbaa !45, !range !46, !noundef !47
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.i, label %bb.ah

bb.i:                                             ; preds = %bb.h
  tail call void @duckdb_je_tsd_state_set(ptr noundef nonnull %0, i8 noundef zeroext 0)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.j

bb.j:                                             ; preds = %atomic_exchange_u8.exit.i34, %bb.i
  %.val.i.i33 = load i8, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %i.q = icmp ult i8 %.val.i.i33, 3
  br i1 %i.q, label %bb.k, label %atomic_exchange_u8.exit.i34

bb.k:                                             ; preds = %bb.j
  %i.r = load i8, ptr @duckdb_je_malloc_slow, align 1, !tbaa !45, !range !46, !noundef !47
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %atomic_exchange_u8.exit.i34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load i8, ptr %0, align 1, !tbaa !45, !range !46, !noundef !47
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %tsd_local_slow.exit.i.i36, label %atomic_exchange_u8.exit.i34

tsd_local_slow.exit.i.i36:                        ; preds = %bb.l
  %i.v = load i8, ptr %i.p, align 1, !tbaa !44
  %i.w = icmp sgt i8 %i.v, 0
  br i1 %i.w, label %atomic_exchange_u8.exit.i34, label %bb.m

bb.m:                                             ; preds = %tsd_local_slow.exit.i.i36
  %i.x = load atomic i32, ptr @tsd_global_slow_count monotonic, align 4
  %.not.i.i37 = icmp ne i32 %i.x, 0
  %spec.select.i.i38 = zext i1 %.not.i.i37 to i8
  br label %atomic_exchange_u8.exit.i34

atomic_exchange_u8.exit.i34:                      ; preds = %bb.m, %tsd_local_slow.exit.i.i36, %bb.l, %bb.k, %bb.j
  %.0.i5.i35 = phi i8 [ 1, %tsd_local_slow.exit.i.i36 ], [ 1, %bb.k ], [ %spec.select.i.i38, %bb.m ], [ %.val.i.i33, %bb.j ], [ 1, %bb.l ]
  %i.y = atomicrmw xchg ptr %i.a, i8 %.0.i5.i35 acquire, align 1
  %i.z = icmp eq i8 %i.y, 2
  br i1 %i.z, label %bb.j, label %duckdb_je_tsd_slow_update.exit39

duckdb_je_tsd_slow_update.exit39:                 ; preds = %atomic_exchange_u8.exit.i34
  tail call void @duckdb_je_te_recompute_fast_threshold(ptr noundef nonnull %0) #7
  %i.aa = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %.not.i30 = icmp eq ptr %i.aa, %0
  br i1 %.not.i30, label %bb.o, label %bb.n, !prof !49

bb.n:                                             ; preds = %duckdb_je_tsd_slow_update.exit39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2640) %i.aa, ptr noundef nonnull align 8 dereferenceable(2640) %0, i64 2640, i1 false), !tbaa.struct !50
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %duckdb_je_tsd_slow_update.exit39
  %i.ab = load i32, ptr @duckdb_je_tsd_tsd, align 4, !tbaa !3
  %i.ac = tail call i32 @pthread_setspecific(i32 noundef %i.ab, ptr noundef nonnull %i.aa) #7
  %.not3.i31 = icmp eq i32 %i.ac, 0
  br i1 %.not3.i31, label %tsd_set.exit32, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @duckdb_je_malloc_write(ptr noundef nonnull @.str.1) #7
  %i.ad = load i8, ptr @duckdb_je_opt_abort, align 1, !tbaa !45, !range !46, !noundef !47
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.q, label %tsd_set.exit32

bb.q:                                             ; preds = %bb.p
  tail call void @abort() #8
  unreachable

tsd_set.exit32:                                   ; preds = %bb.o, %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 440
  tail call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %i.af) #7
  %i.ag = ptrtoint ptr %0 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !19
  tail call void @duckdb_je_tsd_te_init(ptr noundef nonnull %0) #7
  tail call void @duckdb_je_tsd_san_init(ptr noundef nonnull %0) #7
  %i.ai = tail call zeroext i1 @duckdb_je_tsd_tcache_enabled_data_init(ptr noundef nonnull %0) #7 ; 0 uses
  br label %bb.ah

bb.r:                                             ; preds = %bb.g
  tail call void @duckdb_je_tsd_state_set(ptr noundef nonnull %0, i8 noundef zeroext 3)
  %i.aj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %.not.i27 = icmp eq ptr %i.aj, %0
  br i1 %.not.i27, label %bb.t, label %bb.s, !prof !49

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2640) %i.aj, ptr noundef nonnull align 8 dereferenceable(2640) %0, i64 2640, i1 false), !tbaa.struct !50
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ak = load i32, ptr @duckdb_je_tsd_tsd, align 4, !tbaa !3
  %i.al = tail call i32 @pthread_setspecific(i32 noundef %i.ak, ptr noundef nonnull %i.aj) #7
  %.not3.i28 = icmp eq i32 %i.al, 0
  br i1 %.not3.i28, label %tsd_set.exit29, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @duckdb_je_malloc_write(ptr noundef nonnull @.str.1) #7
  %i.am = load i8, ptr @duckdb_je_opt_abort, align 1, !tbaa !45, !range !46, !noundef !47
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.v, label %tsd_set.exit29

bb.v:                                             ; preds = %bb.u
  tail call void @abort() #8
  unreachable

tsd_set.exit29:                                   ; preds = %bb.t, %bb.u
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 440
  tail call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %i.ao) #7
  store i8 0, ptr %0, align 1, !tbaa !45
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ap, align 1, !tbaa !44
  %i.aq = ptrtoint ptr %0 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !19
  tail call void @duckdb_je_tsd_te_init(ptr noundef nonnull %0) #7
  tail call void @duckdb_je_tsd_san_init(ptr noundef nonnull %0) #7
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 1, ptr %i.as, align 2, !tbaa !44
  br label %bb.ah

bb.w:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !44
  %i.av = add i8 %i.au, 1                         ; 2 uses
  store i8 %i.av, ptr %i.at, align 1, !tbaa !44
  %i.aw = icmp ne i8 %i.av, -128
  %or.cond.not = select i1 %1, i1 %i.aw, i1 false
  br i1 %or.cond.not, label %bb.ah, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @duckdb_je_tsd_state_set(ptr noundef nonnull %0, i8 noundef zeroext 0)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !44
  %i.az = add i8 %i.ay, -1
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !44
  br label %bb.y

bb.y:                                             ; preds = %atomic_exchange_u8.exit.i41, %bb.x
  %.val.i.i40 = load i8, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %i.ba = icmp ult i8 %.val.i.i40, 3
  br i1 %i.ba, label %bb.z, label %atomic_exchange_u8.exit.i41

bb.z:                                             ; preds = %bb.y
  %i.bb = load i8, ptr @duckdb_je_malloc_slow, align 1, !tbaa !45, !range !46, !noundef !47
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %atomic_exchange_u8.exit.i41, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bd = load i8, ptr %0, align 1, !tbaa !45, !range !46, !noundef !47
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %tsd_local_slow.exit.i.i43, label %atomic_exchange_u8.exit.i41

tsd_local_slow.exit.i.i43:                        ; preds = %bb.aa
  %i.bf = load i8, ptr %i.ax, align 1, !tbaa !44
  %i.bg = icmp sgt i8 %i.bf, 0
  br i1 %i.bg, label %atomic_exchange_u8.exit.i41, label %bb.ab

bb.ab:                                            ; preds = %tsd_local_slow.exit.i.i43
  %i.bh = load atomic i32, ptr @tsd_global_slow_count monotonic, align 4
  %.not.i.i44 = icmp ne i32 %i.bh, 0
  %spec.select.i.i45 = zext i1 %.not.i.i44 to i8
  br label %atomic_exchange_u8.exit.i41

atomic_exchange_u8.exit.i41:                      ; preds = %bb.ab, %tsd_local_slow.exit.i.i43, %bb.aa, %bb.z, %bb.y
  %.0.i5.i42 = phi i8 [ 1, %tsd_local_slow.exit.i.i43 ], [ 1, %bb.z ], [ %spec.select.i.i45, %bb.ab ], [ %.val.i.i40, %bb.y ], [ 1, %bb.aa ]
  %i.bi = atomicrmw xchg ptr %i.a, i8 %.0.i5.i42 acquire, align 1
  %i.bj = icmp eq i8 %i.bi, 2
  br i1 %i.bj, label %bb.y, label %duckdb_je_tsd_slow_update.exit46

duckdb_je_tsd_slow_update.exit46:                 ; preds = %atomic_exchange_u8.exit.i41
  tail call void @duckdb_je_te_recompute_fast_threshold(ptr noundef nonnull %0) #7
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 440
  tail call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %i.bk) #7
  %i.bl = ptrtoint ptr %0 to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !19
  tail call void @duckdb_je_tsd_te_init(ptr noundef nonnull %0) #7
  tail call void @duckdb_je_tsd_san_init(ptr noundef nonnull %0) #7
  %i.bn = tail call zeroext i1 @duckdb_je_tsd_tcache_enabled_data_init(ptr noundef nonnull %0) #7 ; 0 uses
  br label %bb.ah

bb.ac:                                            ; preds = %bb.a
  tail call void @duckdb_je_tsd_state_set(ptr noundef nonnull %0, i8 noundef zeroext 5)
  %i.bo = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %.not.i = icmp eq ptr %i.bo, %0
  br i1 %.not.i, label %bb.ae, label %bb.ad, !prof !49

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2640) %i.bo, ptr noundef nonnull align 8 dereferenceable(2640) %0, i64 2640, i1 false), !tbaa.struct !50
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bp = load i32, ptr @duckdb_je_tsd_tsd, align 4, !tbaa !3
  %i.bq = tail call i32 @pthread_setspecific(i32 noundef %i.bp, ptr noundef nonnull %i.bo) #7
  %.not3.i = icmp eq i32 %i.bq, 0
  br i1 %.not3.i, label %tsd_set.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @duckdb_je_malloc_write(ptr noundef nonnull @.str.1) #7
  %i.br = load i8, ptr @duckdb_je_opt_abort, align 1, !tbaa !45, !range !46, !noundef !47
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.ag, label %tsd_set.exit

bb.ag:                                            ; preds = %bb.af
  tail call void @abort() #8
  unreachable

tsd_set.exit:                                     ; preds = %bb.ae, %bb.af
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 440
  tail call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %i.bt) #7
  store i8 0, ptr %0, align 1, !tbaa !45
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.bu, align 1, !tbaa !44
  %i.bv = ptrtoint ptr %0 to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !19
  tail call void @duckdb_je_tsd_te_init(ptr noundef nonnull %0) #7
  tail call void @duckdb_je_tsd_san_init(ptr noundef nonnull %0) #7
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.w, %duckdb_je_tsd_slow_update.exit46, %duckdb_je_tsd_slow_update.exit, %tsd_set.exit, %tsd_set.exit29, %tsd_set.exit32, %bb.h
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define ptr @duckdb_je_malloc_tsd_malloc(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, 63
  %i.b = and i64 %i.a, -64
  %i.c = tail call ptr @duckdb_je_a0malloc(i64 noundef %i.b) #7
  ret ptr %i.c
}

declare ptr @duckdb_je_a0malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @duckdb_je_malloc_tsd_dalloc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @duckdb_je_a0dalloc(ptr noundef %0) #7
  ret void
}

declare void @duckdb_je_a0dalloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @duckdb_je_tsd_cleanup(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.b = load i8, ptr %i.a, align 8, !tbaa !44
  switch i8 %i.b, label %bb.g [
    i8 6, label %tsd_set.exit
    i8 3, label %bb.b
    i8 5, label %bb.b
    i8 0, label %bb.b
    i8 1, label %bb.b
    i8 4, label %tsd_set.exit
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  tail call void @duckdb_je_prof_tdata_cleanup(ptr noundef nonnull %0) #7
  tail call void @duckdb_je_iarena_cleanup(ptr noundef nonnull %0) #7
  tail call void @duckdb_je_arena_cleanup(ptr noundef nonnull %0) #7
  tail call void @duckdb_je_tcache_cleanup(ptr noundef nonnull %0) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2624
  tail call void @duckdb_je_witnesses_cleanup(ptr noundef nonnull %i.c) #7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.d, align 1, !tbaa !44
  tail call void @duckdb_je_tsd_state_set(ptr noundef nonnull %0, i8 noundef zeroext 4)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %.not.i = icmp eq ptr %i.e, %0
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !49

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2640) %i.e, ptr noundef nonnull align 8 dereferenceable(2640) %0, i64 2640, i1 false), !tbaa.struct !50
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = load i32, ptr @duckdb_je_tsd_tsd, align 4, !tbaa !3
  %i.g = tail call i32 @pthread_setspecific(i32 noundef %i.f, ptr noundef nonnull %i.e) #7
  %.not3.i = icmp eq i32 %i.g, 0
  br i1 %.not3.i, label %tsd_set.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @duckdb_je_malloc_write(ptr noundef nonnull @.str.1) #7
  %i.h = load i8, ptr @duckdb_je_opt_abort, align 1, !tbaa !45, !range !46, !noundef !47
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.f, label %tsd_set.exit

bb.f:                                             ; preds = %bb.e
  tail call void @abort() #8
  unreachable

bb.g:                                             ; preds = %bb.a
  unreachable

tsd_set.exit:                                     ; preds = %bb.e, %bb.d, %bb.a, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @duckdb_je_malloc_tsd_boot0() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @duckdb_je_malloc_mutex_init(ptr noundef nonnull @tsd_nominal_tsds_lock, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #7
  br i1 %i.a, label %tsd_fetch_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_key_create(ptr noundef nonnull @duckdb_je_tsd_tsd, ptr noundef nonnull @duckdb_je_tsd_cleanup) #7
  %.not.i.not = icmp eq i32 %i.b, 0
  br i1 %.not.i.not, label %bb.c, label %tsd_fetch_impl.exit

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr @duckdb_je_tsd_booted, align 1, !tbaa !45
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 824
  %i.e = load i8, ptr %i.d, align 8, !tbaa !44
  %.not.i2 = icmp eq i8 %i.e, 0
  br i1 %.not.i2, label %tsd_fetch_impl.exit, label %bb.d, !prof !60

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false) ; 0 uses
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi ptr [ %i.c, %bb.c ], [ null, %bb.a ], [ %i.c, %bb.d ], [ null, %bb.b ]
  ret ptr %.0
}

declare zeroext i1 @duckdb_je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @duckdb_je_malloc_tsd_boot1() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 824      ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !44
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.b, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) ; 0 uses
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.c

bb.c:                                             ; preds = %atomic_exchange_u8.exit.i, %tsd_fetch_impl.exit
  %.val.i.i = load i8, ptr %i.b, align 8, !tbaa !44 ; 2 uses
  %i.f = icmp ult i8 %.val.i.i, 3
  br i1 %i.f, label %bb.d, label %atomic_exchange_u8.exit.i

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr @duckdb_je_malloc_slow, align 1, !tbaa !45, !range !46, !noundef !47
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = load i8, ptr %i.a, align 8, !range !46
  %i.j = trunc nuw i8 %i.i to i1
  %.not4 = xor i1 %i.j, true
  %or.cond.not = select i1 %i.h, i1 true, i1 %.not4
  %i.k = load i8, ptr %i.e, align 1
  %i.l = icmp sgt i8 %i.k, 0
  %or.cond3 = select i1 %or.cond.not, i1 true, i1 %i.l
  br i1 %or.cond3, label %atomic_exchange_u8.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load atomic i32, ptr @tsd_global_slow_count monotonic, align 4
  %.not.i.i = icmp ne i32 %i.m, 0
  %spec.select.i.i = zext i1 %.not.i.i to i8
  br label %atomic_exchange_u8.exit.i

atomic_exchange_u8.exit.i:                        ; preds = %bb.e, %bb.d, %bb.c
  %.0.i5.i = phi i8 [ %.val.i.i, %bb.c ], [ 1, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.n = atomicrmw xchg ptr %i.b, i8 %.0.i5.i acquire, align 1
  %i.o = icmp eq i8 %i.n, 2
  br i1 %i.o, label %bb.c, label %duckdb_je_tsd_slow_update.exit

duckdb_je_tsd_slow_update.exit:                   ; preds = %atomic_exchange_u8.exit.i
  tail call void @duckdb_je_te_recompute_fast_threshold(ptr noundef nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tsd_prefork(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @duckdb_je_malloc_mutex_prefork(ptr noundef %0, ptr noundef nonnull @tsd_nominal_tsds_lock) #7
  ret void
}

declare void @duckdb_je_malloc_mutex_prefork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @duckdb_je_tsd_postfork_parent(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @duckdb_je_malloc_mutex_postfork_parent(ptr noundef %0, ptr noundef nonnull @tsd_nominal_tsds_lock) #7
  ret void
}

declare void @duckdb_je_malloc_mutex_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @duckdb_je_tsd_postfork_child(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @duckdb_je_malloc_mutex_postfork_child(ptr noundef %0, ptr noundef nonnull @tsd_nominal_tsds_lock) #7
  store ptr null, ptr @tsd_nominal_tsds.0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.b = load i8, ptr %i.a, align 8, !tbaa !44
  %i.c = icmp ult i8 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr %0, ptr %i.d, align 8, !tbaa !20
end_hunk_0
