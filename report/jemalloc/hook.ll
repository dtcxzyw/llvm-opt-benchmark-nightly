Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/hook?download=true
inline.NumInlined: 18
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.malloc_mutex_s = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.mutex_prof_data_t, %struct.atomic_b_t, %union.pthread_mutex_t }
%struct.mutex_prof_data_t = type { %struct.nstime_t, %struct.nstime_t, i64, i64, i32, %struct.atomic_u32_t, i64, ptr, i64 }
%struct.nstime_t = type { i64 }
%struct.atomic_u32_t = type { i32 }
%struct.atomic_b_t = type { i8 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.seq_hooks_t = type { %struct.atomic_zu_t, [5 x %struct.atomic_zu_t] }
%struct.atomic_zu_t = type { i64 }
%struct.tsd_s = type { i8, i8, i8, i64, i64, i64, i64, %struct.te_data_s, i64, i64, ptr, i64, i64, i64, ptr, ptr, %struct.ticker_geom_s, i8, %struct.tsd_binshards_s, %struct.tsd_link_t, i8, %struct.peak_s, %struct.tcache_slow_s, %struct.rtree_ctx_s, %struct.atomic_u8_t, i64, i64, i64, i64, %struct.tcache_s, %struct.witness_tsd_s }
%struct.te_data_s = type { [7 x i64], [6 x i64] }
%struct.ticker_geom_s = type { i32, i32 }
%struct.tsd_binshards_s = type { [36 x i8] }
%struct.tsd_link_t = type { ptr, ptr }
%struct.peak_s = type { i64, i64 }
%struct.tcache_slow_s = type { %struct.anon.1, %struct.cache_bin_array_descriptor_s, ptr, i32, %struct.nstime_t, i32, i32, i32, [36 x %struct.cache_bin_fill_ctl_s], [36 x i8], [36 x i8], ptr, ptr }
%struct.anon.1 = type { ptr, ptr }
%struct.cache_bin_array_descriptor_s = type { %struct.anon.2, ptr }
%struct.anon.2 = type { ptr, ptr }
%struct.cache_bin_fill_ctl_s = type { i8, i8 }
%struct.rtree_ctx_s = type { [16 x %struct.rtree_ctx_cache_elm_s], [8 x %struct.rtree_ctx_cache_elm_s] }
%struct.rtree_ctx_cache_elm_s = type { i64, ptr }
%struct.atomic_u8_t = type { i8 }
%struct.tcache_s = type { ptr, [41 x %struct.cache_bin_s] }
%struct.cache_bin_s = type { ptr, %struct.cache_bin_stats_s, i16, i16, i16, %struct.cache_bin_info_s }
%struct.cache_bin_stats_s = type { i64 }
%struct.cache_bin_info_s = type { i16 }
%struct.witness_tsd_s = type { %struct.witness_list_t, i8 }
%struct.witness_list_t = type { ptr }

@hooks_mu = internal global %struct.malloc_mutex_s zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"hooks\00", align 1
@nhooks.0 = internal unnamed_addr global i32 0, align 4
@hooks = internal global [4 x %struct.seq_hooks_t] zeroinitializer, align 16
@hook_reentrantp.in_hook_global = internal global i8 1, align 1
@je_tsd_booted = external local_unnamed_addr global i8, align 1
@je_tsd_tls = external thread_local(initialexec) global %struct.tsd_s, align 8

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_hook_boot() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @je_malloc_mutex_init(ptr noundef nonnull @hooks_mu, ptr noundef nonnull @.str, i32 noundef 25, i32 noundef 0) #4
  ret i1 %i.a
}

declare zeroext i1 @je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noundef ptr @je_hook_install(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 72)) #4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.b

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.a
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 64) monotonic, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @hooks_mu) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %malloc_mutex_trylock_final.exit.i
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 56), align 8, !tbaa !18
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 56), align 8, !tbaa !18
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 48), align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 48), align 8, !tbaa !19
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 40), align 8, !tbaa !20
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 40), align 8, !tbaa !20
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.g = load atomic i64, ptr @hooks acquire, align 16 ; 2 uses
  %2 = and i64 %i.g, 1
  %.not.i.i6 = icmp eq i64 %2, 0
  br i1 %.not.i.i6, label %seq_try_load_hooks.exit.i, label %seq_try_load_hooks.exit.thread.i

seq_try_load_hooks.exit.thread.i:                 ; preds = %seq_try_load_hooks.exit.i, %malloc_mutex_lock.exit
  %.sroa.11.229.i = phi i64 [ %spec.select22.i, %seq_try_load_hooks.exit.i ], [ undef, %malloc_mutex_lock.exit ] ; 2 uses
  %i.h = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 48) acquire, align 16 ; 2 uses
  %3 = and i64 %i.h, 1
  %.not.i.1.i = icmp eq i64 %3, 0
  br i1 %.not.i.1.i, label %.preheader.i.1.i, label %seq_try_load_hooks.exit.1.i

.preheader.i.1.i:                                 ; preds = %seq_try_load_hooks.exit.thread.i
  %i.i = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 56) monotonic, align 8 ; 0 uses
  %i.j = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 64) monotonic, align 16 ; 0 uses
  %i.k = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 72) monotonic, align 8 ; 0 uses
  %i.l = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 80) monotonic, align 16 ; 0 uses
  %i.m = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 88) monotonic, align 8
  fence acquire
  %i.n = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 48) monotonic, align 16
  %.not12.i.1.i = icmp eq i64 %i.h, %i.n
  %spec.select22.1.i = select i1 %.not12.i.1.i, i64 %i.m, i64 %.sroa.11.229.i
  br label %seq_try_load_hooks.exit.1.i

seq_try_load_hooks.exit.1.i:                      ; preds = %.preheader.i.1.i, %seq_try_load_hooks.exit.thread.i
  %.sroa.11.2.1.i = phi i64 [ %.sroa.11.229.i, %seq_try_load_hooks.exit.thread.i ], [ %spec.select22.1.i, %.preheader.i.1.i ] ; 4 uses
  %i.o = trunc i64 %.sroa.11.2.1.i to i1
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %seq_try_load_hooks.exit.1.i
  %i.p = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 96) acquire, align 16 ; 2 uses
  %4 = and i64 %i.p, 1
  %.not.i.2.i = icmp eq i64 %4, 0
  br i1 %.not.i.2.i, label %.preheader.i.2.i, label %seq_try_load_hooks.exit.2.i

.preheader.i.2.i:                                 ; preds = %bb.e
  %i.q = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 104) monotonic, align 8 ; 0 uses
  %i.r = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 112) monotonic, align 16 ; 0 uses
  %i.s = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 120) monotonic, align 8 ; 0 uses
  %i.t = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 128) monotonic, align 16 ; 0 uses
  %i.u = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 136) monotonic, align 8
  fence acquire
  %i.v = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 96) monotonic, align 16
  %.not12.i.2.i = icmp eq i64 %i.p, %i.v
  %spec.select22.2.i = select i1 %.not12.i.2.i, i64 %i.u, i64 %.sroa.11.2.1.i
  br label %seq_try_load_hooks.exit.2.i

seq_try_load_hooks.exit.2.i:                      ; preds = %.preheader.i.2.i, %bb.e
  %.sroa.11.2.2.i = phi i64 [ %.sroa.11.2.1.i, %bb.e ], [ %spec.select22.2.i, %.preheader.i.2.i ] ; 3 uses
  %i.w = trunc i64 %.sroa.11.2.2.i to i1
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %seq_try_load_hooks.exit.2.i
  %i.x = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 144) acquire, align 16 ; 2 uses
  %5 = and i64 %i.x, 1
  %.not.i.3.i = icmp eq i64 %5, 0
  br i1 %.not.i.3.i, label %seq_try_load_hooks.exit.3.i, label %hook_install_locked.exit.thread

seq_try_load_hooks.exit.3.i:                      ; preds = %bb.f
  %i.y = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 152) monotonic, align 8 ; 0 uses
  %i.z = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 160) monotonic, align 16 ; 0 uses
  %i.aa = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 168) monotonic, align 8 ; 0 uses
  %i.ab = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 176) monotonic, align 16 ; 0 uses
  %i.ac = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 184) monotonic, align 8
  fence acquire
  %i.ad = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 144) monotonic, align 16
  %.not12.i.3.i = icmp eq i64 %i.x, %i.ad
  %spec.select22.3.i = select i1 %.not12.i.3.i, i64 %i.ac, i64 %.sroa.11.2.2.i ; 2 uses
  %.pre = trunc i64 %spec.select22.3.i to i1
  br i1 %.pre, label %hook_install_locked.exit.thread, label %bb.g

seq_try_load_hooks.exit.i:                        ; preds = %malloc_mutex_lock.exit
  %i.ae = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 8) monotonic, align 8 ; 0 uses
  %i.af = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 16) monotonic, align 16 ; 0 uses
  %i.ag = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 24) monotonic, align 8 ; 0 uses
  %i.ah = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 32) monotonic, align 16 ; 0 uses
  %i.ai = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 40) monotonic, align 8
  fence acquire
  %i.aj = load atomic i64, ptr @hooks monotonic, align 16
  %.not12.i.i = icmp eq i64 %i.g, %i.aj
  %spec.select22.i = select i1 %.not12.i.i, i64 %i.ai, i64 undef ; 3 uses
  %i.ak = trunc i64 %spec.select22.i to i1
  br i1 %i.ak, label %seq_try_load_hooks.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %seq_try_load_hooks.exit.i, %seq_try_load_hooks.exit.3.i, %seq_try_load_hooks.exit.2.i, %seq_try_load_hooks.exit.1.i
  %.sroa.11.2.lcssa.i = phi i64 [ %spec.select22.i, %seq_try_load_hooks.exit.i ], [ %.sroa.11.2.1.i, %seq_try_load_hooks.exit.1.i ], [ %.sroa.11.2.2.i, %seq_try_load_hooks.exit.2.i ], [ %spec.select22.3.i, %seq_try_load_hooks.exit.3.i ]
  %.lcssa.i = phi ptr [ @hooks, %seq_try_load_hooks.exit.i ], [ getelementptr inbounds nuw (i8, ptr @hooks, i64 48), %seq_try_load_hooks.exit.1.i ], [ getelementptr inbounds nuw (i8, ptr @hooks, i64 96), %seq_try_load_hooks.exit.2.i ], [ getelementptr inbounds nuw (i8, ptr @hooks, i64 144), %seq_try_load_hooks.exit.3.i ] ; 9 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !26
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !26
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !26
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !26
  %.sroa.11.32.insert.mask.i = and i64 %.sroa.11.2.lcssa.i, -256
  %.sroa.11.32.insert.insert.i = or disjoint i64 %.sroa.11.32.insert.mask.i, 1
  %i.al = load atomic i64, ptr %.lcssa.i monotonic, align 8 ; 2 uses
  %i.am = add i64 %i.al, 1
  store atomic i64 %i.am, ptr %.lcssa.i monotonic, align 8
  fence release
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  store atomic i64 %.sroa.0.0.copyload.i, ptr %i.an monotonic, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  store atomic i64 %.sroa.5.0.copyload.i, ptr %i.ao monotonic, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 24
  store atomic i64 %.sroa.7.0.copyload.i, ptr %i.ap monotonic, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 32
  store atomic i64 %.sroa.9.0.copyload.i, ptr %i.aq monotonic, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 40
  store atomic i64 %.sroa.11.32.insert.insert.i, ptr %i.ar monotonic, align 8
  %i.as = add i64 %i.al, 2
  store atomic i64 %i.as, ptr %.lcssa.i release, align 8
  %i.at = load atomic i32, ptr @nhooks.0 monotonic, align 4
  %i.au = add i32 %i.at, 1
  store atomic i32 %i.au, ptr @nhooks.0 monotonic, align 4
  tail call void @je_tsd_global_slow_inc(ptr noundef %0) #4
  br label %hook_install_locked.exit.thread

hook_install_locked.exit.thread:                  ; preds = %bb.f, %seq_try_load_hooks.exit.3.i, %bb.g
  %spec.select.i9 = phi ptr [ %.lcssa.i, %bb.g ], [ null, %seq_try_load_hooks.exit.3.i ], [ null, %bb.f ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 64) monotonic, align 8
  %i.av = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 72)) #4 ; 0 uses
  ret ptr %spec.select.i9
}

declare void @je_tsd_global_slow_inc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @je_hook_remove(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 72)) #4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.b

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.a
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 64) monotonic, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @hooks_mu) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %malloc_mutex_trylock_final.exit.i
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 56), align 8, !tbaa !18
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 56), align 8, !tbaa !18
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 48), align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 48), align 8, !tbaa !19
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 40), align 8, !tbaa !20
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 40), align 8, !tbaa !20
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.g = load atomic i64, ptr %1 acquire, align 8
  %2 = and i64 %i.g, 1
  %.not.i.i4 = icmp eq i64 %2, 0
  br i1 %.not.i.i4, label %.preheader.i.i, label %hook_remove_locked.exit

.preheader.i.i:                                   ; preds = %malloc_mutex_lock.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load atomic i64, ptr %i.j monotonic, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load atomic i64, ptr %i.l monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load atomic i64, ptr %i.p monotonic, align 8
  fence acquire
  %i.r = load atomic i64, ptr %1 monotonic, align 8 ; 0 uses
  %i.s = and i64 %i.q, -256
  br label %hook_remove_locked.exit

hook_remove_locked.exit:                          ; preds = %malloc_mutex_lock.exit, %.preheader.i.i
  %.sroa.10.0.i = phi i64 [ 0, %malloc_mutex_lock.exit ], [ %i.s, %.preheader.i.i ]
  %.sroa.8.0.i = phi i64 [ undef, %malloc_mutex_lock.exit ], [ %i.o, %.preheader.i.i ]
  %.sroa.6.0.i = phi i64 [ undef, %malloc_mutex_lock.exit ], [ %i.m, %.preheader.i.i ]
  %.sroa.4.0.i = phi i64 [ undef, %malloc_mutex_lock.exit ], [ %i.k, %.preheader.i.i ]
  %.sroa.0.0.i = phi i64 [ undef, %malloc_mutex_lock.exit ], [ %i.i, %.preheader.i.i ]
  %i.t = load atomic i64, ptr %1 monotonic, align 8 ; 2 uses
  %i.u = add i64 %i.t, 1
  store atomic i64 %i.u, ptr %1 monotonic, align 8
  fence release
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store atomic i64 %.sroa.0.0.i, ptr %i.v monotonic, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store atomic i64 %.sroa.4.0.i, ptr %i.w monotonic, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  store atomic i64 %.sroa.6.0.i, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  store atomic i64 %.sroa.8.0.i, ptr %i.y monotonic, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  store atomic i64 %.sroa.10.0.i, ptr %i.z monotonic, align 8
  %i.aa = add i64 %i.t, 2
  store atomic i64 %i.aa, ptr %1 release, align 8
  %i.ab = load atomic i32, ptr @nhooks.0 monotonic, align 4
  %i.ac = add i32 %i.ab, -1
  store atomic i32 %i.ac, ptr @nhooks.0 monotonic, align 4
  tail call void @je_tsd_global_slow_dec(ptr noundef %0) #4
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 64) monotonic, align 8
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @hooks_mu, i64 72)) #4 ; 0 uses
  ret void
}

declare void @je_tsd_global_slow_dec(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @je_hook_invoke_alloc(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
atomic_load_u.exit:
  %i.a = load atomic i32, ptr @nhooks.0 monotonic, align 4
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.g, label %bb.a, !prof !21

bb.a:                                             ; preds = %atomic_load_u.exit
  %i.c = tail call fastcc ptr @hook_reentrantp()  ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !23, !range !24, !noundef !25
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 1, !tbaa !23
  %i.f = load atomic i64, ptr @hooks acquire, align 16 ; 2 uses
  %4 = and i64 %i.f, 1
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %.preheader.i, label %seq_try_load_hooks.exit.thread

.preheader.i:                                     ; preds = %bb.b
  %i.g = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 8) monotonic, align 8 ; 2 uses
  %i.h = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 16) monotonic, align 16 ; 0 uses
  %i.i = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 24) monotonic, align 8 ; 0 uses
  %i.j = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 32) monotonic, align 16
  %i.k = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 40) monotonic, align 8
  fence acquire
  %i.l = load atomic i64, ptr @hooks monotonic, align 16
  %.not12.i = icmp eq i64 %i.f, %i.l
  %i.m = trunc i64 %i.k to i1
  %.not = icmp ne i64 %i.g, 0
  %i.n = select i1 %.not12.i, i1 %i.m, i1 false
  %or.cond = select i1 %i.n, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %seq_try_load_hooks.exit.thread

bb.c:                                             ; preds = %.preheader.i
  %i.o = inttoptr i64 %i.j to ptr
  %i.p = inttoptr i64 %i.g to ptr
  tail call void %i.p(ptr noundef %i.o, i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #4
  br label %seq_try_load_hooks.exit.thread

seq_try_load_hooks.exit.thread:                   ; preds = %.preheader.i, %bb.b, %bb.c
  %i.q = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 48) acquire, align 16 ; 2 uses
  %5 = and i64 %i.q, 1
  %.not.i.1 = icmp eq i64 %5, 0
  br i1 %.not.i.1, label %.preheader.i.1, label %seq_try_load_hooks.exit.thread.1

.preheader.i.1:                                   ; preds = %seq_try_load_hooks.exit.thread
  %i.r = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 56) monotonic, align 8 ; 2 uses
  %i.s = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 64) monotonic, align 16 ; 0 uses
  %i.t = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 72) monotonic, align 8 ; 0 uses
  %i.u = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 80) monotonic, align 16
  %i.v = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 88) monotonic, align 8
  fence acquire
  %i.w = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 48) monotonic, align 16
  %.not12.i.1 = icmp eq i64 %i.q, %i.w
  %i.x = trunc i64 %i.v to i1
  %.not.1 = icmp ne i64 %i.r, 0
  %i.y = select i1 %.not12.i.1, i1 %i.x, i1 false
  %or.cond31 = select i1 %i.y, i1 %.not.1, i1 false
  br i1 %or.cond31, label %bb.d, label %seq_try_load_hooks.exit.thread.1

bb.d:                                             ; preds = %.preheader.i.1
  %i.z = inttoptr i64 %i.u to ptr
  %i.aa = inttoptr i64 %i.r to ptr
  tail call void %i.aa(ptr noundef %i.z, i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #4
  br label %seq_try_load_hooks.exit.thread.1

seq_try_load_hooks.exit.thread.1:                 ; preds = %bb.d, %.preheader.i.1, %seq_try_load_hooks.exit.thread
  %i.ab = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 96) acquire, align 16 ; 2 uses
  %6 = and i64 %i.ab, 1
  %.not.i.2 = icmp eq i64 %6, 0
  br i1 %.not.i.2, label %.preheader.i.2, label %seq_try_load_hooks.exit.thread.2

.preheader.i.2:                                   ; preds = %seq_try_load_hooks.exit.thread.1
  %i.ac = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 104) monotonic, align 8 ; 2 uses
  %i.ad = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 112) monotonic, align 16 ; 0 uses
  %i.ae = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 120) monotonic, align 8 ; 0 uses
  %i.af = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 128) monotonic, align 16
  %i.ag = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 136) monotonic, align 8
  fence acquire
  %i.ah = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 96) monotonic, align 16
  %.not12.i.2 = icmp eq i64 %i.ab, %i.ah
  %i.ai = trunc i64 %i.ag to i1
  %.not.2 = icmp ne i64 %i.ac, 0
  %i.aj = select i1 %.not12.i.2, i1 %i.ai, i1 false
  %or.cond32 = select i1 %i.aj, i1 %.not.2, i1 false
  br i1 %or.cond32, label %bb.e, label %seq_try_load_hooks.exit.thread.2

bb.e:                                             ; preds = %.preheader.i.2
  %i.ak = inttoptr i64 %i.af to ptr
  %i.al = inttoptr i64 %i.ac to ptr
  tail call void %i.al(ptr noundef %i.ak, i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #4
  br label %seq_try_load_hooks.exit.thread.2

seq_try_load_hooks.exit.thread.2:                 ; preds = %bb.e, %.preheader.i.2, %seq_try_load_hooks.exit.thread.1
  %i.am = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 144) acquire, align 16 ; 2 uses
  %7 = and i64 %i.am, 1
  %.not.i.3 = icmp eq i64 %7, 0
  br i1 %.not.i.3, label %.preheader.i.3, label %seq_try_load_hooks.exit.thread.3

.preheader.i.3:                                   ; preds = %seq_try_load_hooks.exit.thread.2
  %i.an = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 152) monotonic, align 8 ; 2 uses
  %i.ao = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 160) monotonic, align 16 ; 0 uses
  %i.ap = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 168) monotonic, align 8 ; 0 uses
  %i.aq = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 176) monotonic, align 16
  %i.ar = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 184) monotonic, align 8
  fence acquire
  %i.as = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 144) monotonic, align 16
  %.not12.i.3 = icmp eq i64 %i.am, %i.as
  %i.at = trunc i64 %i.ar to i1
  %.not.3 = icmp ne i64 %i.an, 0
  %i.au = select i1 %.not12.i.3, i1 %i.at, i1 false
  %or.cond33 = select i1 %i.au, i1 %.not.3, i1 false
  br i1 %or.cond33, label %bb.f, label %seq_try_load_hooks.exit.thread.3

bb.f:                                             ; preds = %.preheader.i.3
  %i.av = inttoptr i64 %i.aq to ptr
  %i.aw = inttoptr i64 %i.an to ptr
  tail call void %i.aw(ptr noundef %i.av, i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #4
  br label %seq_try_load_hooks.exit.thread.3

seq_try_load_hooks.exit.thread.3:                 ; preds = %bb.f, %.preheader.i.3, %seq_try_load_hooks.exit.thread.2
  store i8 0, ptr %i.c, align 1, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %seq_try_load_hooks.exit.thread.3, %bb.a, %atomic_load_u.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @hook_reentrantp() unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @je_tsd_booted, align 1, !tbaa !23, !range !24, !noundef !25
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %tsdn_in_hookp_get.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 920
  %i.e = load i8, ptr %i.d, align 8, !tbaa !27
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %tsdn_fetch.exit.thread8, label %tsdn_fetch.exit, !prof !21

tsdn_fetch.exit:                                  ; preds = %bb.b
  %i.f = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false) #4 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %tsdn_in_hookp_get.exit, label %tsdn_fetch.exit.thread8

tsdn_fetch.exit.thread8:                          ; preds = %bb.b, %tsdn_fetch.exit
  %.0.i10 = phi ptr [ %i.f, %tsdn_fetch.exit ], [ %i.c, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i10, i64 272
  br label %tsdn_in_hookp_get.exit

tsdn_in_hookp_get.exit:                           ; preds = %bb.a, %tsdn_fetch.exit, %tsdn_fetch.exit.thread8
  %.0.i5 = phi ptr [ %i.h, %tsdn_fetch.exit.thread8 ], [ null, %tsdn_fetch.exit ], [ null, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %.0.i5, null
  %hook_reentrantp.in_hook_global. = select i1 %.not, ptr @hook_reentrantp.in_hook_global, ptr %.0.i5
  ret ptr %hook_reentrantp.in_hook_global.
}

; Function Attrs: nounwind uwtable
define hidden void @je_hook_invoke_dalloc(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
atomic_load_u.exit:
  %i.a = load atomic i32, ptr @nhooks.0 monotonic, align 4
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.g, label %bb.a, !prof !21

bb.a:                                             ; preds = %atomic_load_u.exit
  %i.c = tail call fastcc ptr @hook_reentrantp()  ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !23, !range !24, !noundef !25
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 1, !tbaa !23
  %i.f = load atomic i64, ptr @hooks acquire, align 16 ; 2 uses
  %3 = and i64 %i.f, 1
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %.preheader.i, label %seq_try_load_hooks.exit.thread

.preheader.i:                                     ; preds = %bb.b
  %i.g = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 8) monotonic, align 8 ; 0 uses
  %i.h = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 16) monotonic, align 16 ; 2 uses
  %i.i = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 24) monotonic, align 8 ; 0 uses
  %i.j = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 32) monotonic, align 16
  %i.k = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 40) monotonic, align 8
  fence acquire
  %i.l = load atomic i64, ptr @hooks monotonic, align 16
  %.not12.i = icmp eq i64 %i.f, %i.l
  %i.m = trunc i64 %i.k to i1
  %.not = icmp ne i64 %i.h, 0
  %i.n = select i1 %.not12.i, i1 %i.m, i1 false
  %or.cond = select i1 %i.n, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %seq_try_load_hooks.exit.thread

bb.c:                                             ; preds = %.preheader.i
  %i.o = inttoptr i64 %i.j to ptr
  %i.p = inttoptr i64 %i.h to ptr
  tail call void %i.p(ptr noundef %i.o, i32 noundef %0, ptr noundef %1, ptr noundef %2) #4
  br label %seq_try_load_hooks.exit.thread

seq_try_load_hooks.exit.thread:                   ; preds = %.preheader.i, %bb.b, %bb.c
  %i.q = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 48) acquire, align 16 ; 2 uses
  %4 = and i64 %i.q, 1
  %.not.i.1 = icmp eq i64 %4, 0
  br i1 %.not.i.1, label %.preheader.i.1, label %seq_try_load_hooks.exit.thread.1

.preheader.i.1:                                   ; preds = %seq_try_load_hooks.exit.thread
  %i.r = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 56) monotonic, align 8 ; 0 uses
  %i.s = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 64) monotonic, align 16 ; 2 uses
  %i.t = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 72) monotonic, align 8 ; 0 uses
  %i.u = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 80) monotonic, align 16
  %i.v = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 88) monotonic, align 8
  fence acquire
  %i.w = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 48) monotonic, align 16
  %.not12.i.1 = icmp eq i64 %i.q, %i.w
  %i.x = trunc i64 %i.v to i1
  %.not.1 = icmp ne i64 %i.s, 0
  %i.y = select i1 %.not12.i.1, i1 %i.x, i1 false
  %or.cond30 = select i1 %i.y, i1 %.not.1, i1 false
  br i1 %or.cond30, label %bb.d, label %seq_try_load_hooks.exit.thread.1

bb.d:                                             ; preds = %.preheader.i.1
  %i.z = inttoptr i64 %i.u to ptr
  %i.aa = inttoptr i64 %i.s to ptr
  tail call void %i.aa(ptr noundef %i.z, i32 noundef %0, ptr noundef %1, ptr noundef %2) #4
  br label %seq_try_load_hooks.exit.thread.1

seq_try_load_hooks.exit.thread.1:                 ; preds = %bb.d, %.preheader.i.1, %seq_try_load_hooks.exit.thread
  %i.ab = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 96) acquire, align 16 ; 2 uses
  %5 = and i64 %i.ab, 1
  %.not.i.2 = icmp eq i64 %5, 0
  br i1 %.not.i.2, label %.preheader.i.2, label %seq_try_load_hooks.exit.thread.2

.preheader.i.2:                                   ; preds = %seq_try_load_hooks.exit.thread.1
  %i.ac = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 104) monotonic, align 8 ; 0 uses
  %i.ad = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 112) monotonic, align 16 ; 2 uses
  %i.ae = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 120) monotonic, align 8 ; 0 uses
  %i.af = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 128) monotonic, align 16
  %i.ag = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 136) monotonic, align 8
  fence acquire
  %i.ah = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 96) monotonic, align 16
  %.not12.i.2 = icmp eq i64 %i.ab, %i.ah
  %i.ai = trunc i64 %i.ag to i1
  %.not.2 = icmp ne i64 %i.ad, 0
  %i.aj = select i1 %.not12.i.2, i1 %i.ai, i1 false
  %or.cond31 = select i1 %i.aj, i1 %.not.2, i1 false
  br i1 %or.cond31, label %bb.e, label %seq_try_load_hooks.exit.thread.2

bb.e:                                             ; preds = %.preheader.i.2
  %i.ak = inttoptr i64 %i.af to ptr
  %i.al = inttoptr i64 %i.ad to ptr
  tail call void %i.al(ptr noundef %i.ak, i32 noundef %0, ptr noundef %1, ptr noundef %2) #4
  br label %seq_try_load_hooks.exit.thread.2

seq_try_load_hooks.exit.thread.2:                 ; preds = %bb.e, %.preheader.i.2, %seq_try_load_hooks.exit.thread.1
  %i.am = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 144) acquire, align 16 ; 2 uses
  %6 = and i64 %i.am, 1
  %.not.i.3 = icmp eq i64 %6, 0
  br i1 %.not.i.3, label %.preheader.i.3, label %seq_try_load_hooks.exit.thread.3

.preheader.i.3:                                   ; preds = %seq_try_load_hooks.exit.thread.2
  %i.an = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 152) monotonic, align 8 ; 0 uses
  %i.ao = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 160) monotonic, align 16 ; 2 uses
  %i.ap = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 168) monotonic, align 8 ; 0 uses
  %i.aq = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 176) monotonic, align 16
  %i.ar = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 184) monotonic, align 8
  fence acquire
  %i.as = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 144) monotonic, align 16
  %.not12.i.3 = icmp eq i64 %i.am, %i.as
  %i.at = trunc i64 %i.ar to i1
  %.not.3 = icmp ne i64 %i.ao, 0
  %i.au = select i1 %.not12.i.3, i1 %i.at, i1 false
  %or.cond32 = select i1 %i.au, i1 %.not.3, i1 false
  br i1 %or.cond32, label %bb.f, label %seq_try_load_hooks.exit.thread.3

bb.f:                                             ; preds = %.preheader.i.3
  %i.av = inttoptr i64 %i.aq to ptr
  %i.aw = inttoptr i64 %i.ao to ptr
  tail call void %i.aw(ptr noundef %i.av, i32 noundef %0, ptr noundef %1, ptr noundef %2) #4
  br label %seq_try_load_hooks.exit.thread.3

seq_try_load_hooks.exit.thread.3:                 ; preds = %bb.f, %.preheader.i.3, %seq_try_load_hooks.exit.thread.2
  store i8 0, ptr %i.c, align 1, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %seq_try_load_hooks.exit.thread.3, %bb.a, %atomic_load_u.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_hook_invoke_expand(i32 noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
atomic_load_u.exit:
  %i.a = load atomic i32, ptr @nhooks.0 monotonic, align 4
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.g, label %bb.a, !prof !21

bb.a:                                             ; preds = %atomic_load_u.exit
  %i.c = tail call fastcc ptr @hook_reentrantp()  ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !23, !range !24, !noundef !25
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 1, !tbaa !23
  %i.f = load atomic i64, ptr @hooks acquire, align 16 ; 2 uses
  %6 = and i64 %i.f, 1
  %.not.i = icmp eq i64 %6, 0
  br i1 %.not.i, label %.preheader.i, label %seq_try_load_hooks.exit.thread

.preheader.i:                                     ; preds = %bb.b
  %i.g = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 8) monotonic, align 8 ; 0 uses
  %i.h = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 16) monotonic, align 16 ; 0 uses
  %i.i = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 24) monotonic, align 8 ; 2 uses
  %i.j = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 32) monotonic, align 16
  %i.k = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 40) monotonic, align 8
  fence acquire
  %i.l = load atomic i64, ptr @hooks monotonic, align 16
  %.not12.i = icmp eq i64 %i.f, %i.l
  %i.m = trunc i64 %i.k to i1
  %.not = icmp ne i64 %i.i, 0
  %i.n = select i1 %.not12.i, i1 %i.m, i1 false
  %or.cond = select i1 %i.n, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %seq_try_load_hooks.exit.thread

bb.c:                                             ; preds = %.preheader.i
  %i.o = inttoptr i64 %i.j to ptr
  %i.p = inttoptr i64 %i.i to ptr
  tail call void %i.p(ptr noundef %i.o, i32 noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #4
  br label %seq_try_load_hooks.exit.thread

seq_try_load_hooks.exit.thread:                   ; preds = %.preheader.i, %bb.b, %bb.c
  %i.q = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 48) acquire, align 16 ; 2 uses
  %7 = and i64 %i.q, 1
  %.not.i.1 = icmp eq i64 %7, 0
  br i1 %.not.i.1, label %.preheader.i.1, label %seq_try_load_hooks.exit.thread.1

.preheader.i.1:                                   ; preds = %seq_try_load_hooks.exit.thread
  %i.r = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 56) monotonic, align 8 ; 0 uses
  %i.s = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 64) monotonic, align 16 ; 0 uses
  %i.t = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 72) monotonic, align 8 ; 2 uses
  %i.u = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 80) monotonic, align 16
  %i.v = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 88) monotonic, align 8
  fence acquire
  %i.w = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 48) monotonic, align 16
  %.not12.i.1 = icmp eq i64 %i.q, %i.w
  %i.x = trunc i64 %i.v to i1
  %.not.1 = icmp ne i64 %i.t, 0
  %i.y = select i1 %.not12.i.1, i1 %i.x, i1 false
  %or.cond33 = select i1 %i.y, i1 %.not.1, i1 false
  br i1 %or.cond33, label %bb.d, label %seq_try_load_hooks.exit.thread.1

bb.d:                                             ; preds = %.preheader.i.1
  %i.z = inttoptr i64 %i.u to ptr
  %i.aa = inttoptr i64 %i.t to ptr
  tail call void %i.aa(ptr noundef %i.z, i32 noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #4
  br label %seq_try_load_hooks.exit.thread.1

seq_try_load_hooks.exit.thread.1:                 ; preds = %bb.d, %.preheader.i.1, %seq_try_load_hooks.exit.thread
  %i.ab = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 96) acquire, align 16 ; 2 uses
  %8 = and i64 %i.ab, 1
  %.not.i.2 = icmp eq i64 %8, 0
  br i1 %.not.i.2, label %.preheader.i.2, label %seq_try_load_hooks.exit.thread.2

.preheader.i.2:                                   ; preds = %seq_try_load_hooks.exit.thread.1
  %i.ac = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 104) monotonic, align 8 ; 0 uses
  %i.ad = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 112) monotonic, align 16 ; 0 uses
  %i.ae = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 120) monotonic, align 8 ; 2 uses
  %i.af = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 128) monotonic, align 16
  %i.ag = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 136) monotonic, align 8
  fence acquire
  %i.ah = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 96) monotonic, align 16
  %.not12.i.2 = icmp eq i64 %i.ab, %i.ah
  %i.ai = trunc i64 %i.ag to i1
  %.not.2 = icmp ne i64 %i.ae, 0
  %i.aj = select i1 %.not12.i.2, i1 %i.ai, i1 false
  %or.cond34 = select i1 %i.aj, i1 %.not.2, i1 false
  br i1 %or.cond34, label %bb.e, label %seq_try_load_hooks.exit.thread.2

bb.e:                                             ; preds = %.preheader.i.2
  %i.ak = inttoptr i64 %i.af to ptr
  %i.al = inttoptr i64 %i.ae to ptr
  tail call void %i.al(ptr noundef %i.ak, i32 noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #4
  br label %seq_try_load_hooks.exit.thread.2

seq_try_load_hooks.exit.thread.2:                 ; preds = %bb.e, %.preheader.i.2, %seq_try_load_hooks.exit.thread.1
  %i.am = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 144) acquire, align 16 ; 2 uses
  %9 = and i64 %i.am, 1
  %.not.i.3 = icmp eq i64 %9, 0
  br i1 %.not.i.3, label %.preheader.i.3, label %seq_try_load_hooks.exit.thread.3

.preheader.i.3:                                   ; preds = %seq_try_load_hooks.exit.thread.2
  %i.an = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 152) monotonic, align 8 ; 0 uses
  %i.ao = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 160) monotonic, align 16 ; 0 uses
  %i.ap = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 168) monotonic, align 8 ; 2 uses
  %i.aq = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 176) monotonic, align 16
  %i.ar = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 184) monotonic, align 8
  fence acquire
  %i.as = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @hooks, i64 144) monotonic, align 16
  %.not12.i.3 = icmp eq i64 %i.am, %i.as
  %i.at = trunc i64 %i.ar to i1
  %.not.3 = icmp ne i64 %i.ap, 0
  %i.au = select i1 %.not12.i.3, i1 %i.at, i1 false
  %or.cond35 = select i1 %i.au, i1 %.not.3, i1 false
  br i1 %or.cond35, label %bb.f, label %seq_try_load_hooks.exit.thread.3

bb.f:                                             ; preds = %.preheader.i.3
  %i.av = inttoptr i64 %i.aq to ptr
  %i.aw = inttoptr i64 %i.ap to ptr
  tail call void %i.aw(ptr noundef %i.av, i32 noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #4
  br label %seq_try_load_hooks.exit.thread.3

seq_try_load_hooks.exit.thread.3:                 ; preds = %bb.f, %.preheader.i.3, %seq_try_load_hooks.exit.thread.2
  store i8 0, ptr %i.c, align 1, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %seq_try_load_hooks.exit.thread.3, %bb.a, %atomic_load_u.exit
  ret void
}

declare void @je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

declare ptr @je_tsd_fetch_slow(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!"", !12, i64 0}
!14 = !{!"", !9, i64 0}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!"p1 _ZTS6tsdn_s", !15, i64 0}
!17 = !{!"", !13, i64 0, !13, i64 8, !12, i64 16, !12, i64 24, !9, i64 32, !14, i64 36, !12, i64 40, !16, i64 48, !12, i64 56}
!18 = !{!17, !12, i64 56}
!19 = !{!17, !16, i64 48}
!20 = !{!17, !12, i64 40}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = !{!"_Bool", !8, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{i8 0, i8 2}
!25 = !{}
!26 = !{!15, !15, i64 0}
!27 = !{!8, !8, i64 0}
end_hunk_0
