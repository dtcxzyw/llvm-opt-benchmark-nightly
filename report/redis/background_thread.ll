inline.NumInlined: 92
inline.NumDeleted: 25
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.malloc_mutex_s = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.mutex_prof_data_t, %union.pthread_mutex_t, %struct.atomic_b_t }
%struct.mutex_prof_data_t = type { %struct.nstime_t, %struct.nstime_t, i64, i64, i32, %struct.atomic_u32_t, i64, ptr, i64 }
%struct.nstime_t = type { i64 }
%struct.atomic_u32_t = type { i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.atomic_b_t = type { i8 }
%struct.tsd_s = type { i8, i8, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i64, i64, i64, ptr, ptr, %struct.ticker_geom_s, i8, %struct.tsd_binshards_s, %struct.tsd_link_t, i8, %struct.peak_s, %struct.activity_callback_thunk_s, %struct.tcache_slow_s, %struct.rtree_ctx_s, %struct.atomic_u8_t, i64, i64, i64, i64, %struct.tcache_s, %struct.witness_tsd_s }
%struct.ticker_geom_s = type { i32, i32 }
%struct.tsd_binshards_s = type { [39 x i8] }
%struct.tsd_link_t = type { ptr, ptr }
%struct.peak_s = type { i64, i64 }
%struct.activity_callback_thunk_s = type { ptr, ptr }
%struct.tcache_slow_s = type { %struct.anon.9, %struct.cache_bin_array_descriptor_s, ptr, i32, [39 x i8], [39 x i8], [39 x i8], ptr, ptr }
%struct.anon.9 = type { ptr, ptr }
%struct.cache_bin_array_descriptor_s = type { %struct.anon.10, ptr }
%struct.anon.10 = type { ptr, ptr }
%struct.rtree_ctx_s = type { [16 x %struct.rtree_ctx_cache_elm_s], [8 x %struct.rtree_ctx_cache_elm_s] }
%struct.rtree_ctx_cache_elm_s = type { i64, ptr }
%struct.atomic_u8_t = type { i8 }
%struct.tcache_s = type { ptr, [76 x %struct.cache_bin_s] }
%struct.cache_bin_s = type { ptr, %struct.cache_bin_stats_s, i16, i16, i16 }
%struct.cache_bin_stats_s = type { i64 }
%struct.witness_tsd_s = type { %struct.witness_list_t, i8 }
%struct.witness_list_t = type { ptr }
%struct.atomic_p_t = type { ptr }
%struct.__sigset_t = type { [16 x i64] }
%struct.cpu_set_t = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.timespec = type { i64, i64 }

@je_opt_background_thread = hidden local_unnamed_addr global i8 0, align 1
@je_opt_max_background_threads = hidden local_unnamed_addr global i64 4096, align 8
@pthread_create_fptr = internal unnamed_addr global ptr null, align 8
@je_background_thread_lock = hidden global %struct.malloc_mutex_s zeroinitializer, align 8
@je_max_background_threads = hidden local_unnamed_addr global i64 0, align 8
@je_background_thread_info = hidden local_unnamed_addr global ptr null, align 8
@background_thread_enabled_at_fork = internal unnamed_addr global i8 0, align 1
@je_n_background_threads = hidden local_unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"background_thread_global\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"background_thread\00", align 1
@je_background_thread_enabled_state = hidden local_unnamed_addr global %struct.atomic_b_t zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"<jemalloc>: arena 0 background thread creation failed (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [93 x i8] c"<jemalloc>: background thread creation failed (%d), and signal mask restoration failed (%d)\0A\00", align 1
@je_opt_abort = external local_unnamed_addr global i8, align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"jemalloc_bg_thd\00", align 1
@je_opt_percpu_arena = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"<jemalloc>: background thread creation failed (%d)\0A\00", align 1
@je_tsd_tls = external thread_local(initialexec) global %struct.tsd_s, align 8
@je_arenas = external local_unnamed_addr global [0 x %struct.atomic_p_t], align 8
@nstime_zero = internal constant %struct.nstime_t zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @je_pthread_create_wrapper(ptr noalias noundef %0, ptr noundef %1, ptr noundef %2, ptr noalias noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @pthread_create_fptr, align 8, !tbaa !11
  %i.b = tail call i32 %i.a(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #12
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_background_thread_create(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 64)) #12
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %atomic_store_b.exit.i

atomic_store_b.exit.i:                            ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @je_background_thread_lock) #12
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 104) monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %atomic_store_b.exit.i, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 56), align 8, !tbaa !13
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 56), align 8, !tbaa !13
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 48), align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 48), align 8, !tbaa !19
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 40), align 8, !tbaa !20
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 40), align 8, !tbaa !20
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.b, %bb.c
  %i.g = tail call fastcc zeroext i1 @background_thread_create_locked(ptr noundef %0, i32 noundef %1)
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 104) monotonic, align 8
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_background_thread_lock, i64 64)) #12 ; 0 uses
  ret i1 %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @malloc_mutex_lock(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
tsdn_witness_tsdp_get.exit10:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.a) #12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.a, label %atomic_store_b.exit

atomic_store_b.exit:                              ; preds = %tsdn_witness_tsdp_get.exit10
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %1) #12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  store atomic i8 1, ptr %i.c monotonic, align 1
  br label %bb.a

bb.a:                                             ; preds = %atomic_store_b.exit, %tsdn_witness_tsdp_get.exit10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  %.not.i = icmp eq ptr %i.h, %0
  br i1 %.not.i, label %mutex_owner_stats_update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.g, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !20
  br label %mutex_owner_stats_update.exit

mutex_owner_stats_update.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @background_thread_create_locked(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.__sigset_t, align 8         ; 4 uses
  %3 = alloca %struct.__sigset_t, align 8         ; 4 uses
  %i.a = zext i32 %1 to i64
  %i.b = load i64, ptr @je_max_background_threads, align 8, !tbaa !21
  %i.c = urem i64 %i.a, %i.b                      ; 2 uses
  %i.d = load ptr, ptr @je_background_thread_info, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw [208 x i8], ptr %i.d, i64 %i.c ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 5 uses
  %i.h = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.g) #12
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.b, label %atomic_store_b.exit.i

atomic_store_b.exit.i:                            ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.f) #12
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %bb.b

bb.b:                                             ; preds = %atomic_store_b.exit.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %i.n, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.m, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !20
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.b, %bb.c
  %i.r = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !24, !noundef !25
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %.critedge

bb.d:                                             ; preds = %malloc_mutex_lock.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 168 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !26
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.t, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 172
  store atomic i8 0, ptr %i.w release, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  tail call void @je_nstime_init(ptr noundef nonnull %i.x, i64 noundef 0) #12
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  tail call void @je_nstime_copy(ptr noundef nonnull %i.z, ptr noundef nonnull @nstime_zero) #12
  %i.aa = load i64, ptr @je_n_background_threads, align 8, !tbaa !21
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr @je_n_background_threads, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 160 ; 3 uses
  store atomic i8 0, ptr %i.ac monotonic, align 8
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #12 ; 0 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.i, label %bb.f

.critedge:                                        ; preds = %malloc_mutex_lock.exit, %bb.d
  %4 = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store atomic i8 0, ptr %4 monotonic, align 1
  %5 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #12 ; 0 uses
  br label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr @je_background_thread_info, align 8, !tbaa !22 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120 ; 2 uses
  %i.ag = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.af) #12
  %.not.i34 = icmp eq i32 %i.ag, 0
  br i1 %.not.i34, label %bb.g, label %atomic_store_b.exit.i35

atomic_store_b.exit.i35:                          ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ah) #12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  store atomic i8 1, ptr %i.ai monotonic, align 1
  br label %bb.g

bb.g:                                             ; preds = %atomic_store_b.exit.i35, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 112 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !13
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 104 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !19
  %.not.i.i36 = icmp eq ptr %i.an, %0
  br i1 %.not.i.i36, label %malloc_mutex_lock.exit37, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.am, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 96 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !20
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !20
  br label %malloc_mutex_lock.exit37

malloc_mutex_lock.exit37:                         ; preds = %bb.g, %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %6 = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.ar) #12 ; 0 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  store atomic i8 0, ptr %7 monotonic, align 1
  %i.as = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.af) #12 ; 0 uses
  br label %bb.r

bb.i:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.au = load i8, ptr %i.at, align 8, !tbaa !31
  %i.av = icmp eq i8 %i.au, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !31
  %i.ay = add i8 %i.ax, 1
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !31
  br i1 %i.av, label %bb.j, label %pre_reentrancy.exit

bb.j:                                             ; preds = %bb.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #12
  br label %pre_reentrancy.exit

pre_reentrancy.exit:                              ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.az = call i32 @sigfillset(ptr noundef nonnull %2) #12, !inline_history !32 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ba = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %2, ptr noundef nonnull %3) #12, !inline_history !32 ; 2 uses
  %.not.i39 = icmp eq i32 %i.ba, 0
  br i1 %.not.i39, label %bb.k, label %background_thread_create_signals_masked.exit

bb.k:                                             ; preds = %pre_reentrancy.exit
  %i.bb = inttoptr i64 %i.c to ptr
  %i.bc = load ptr, ptr @pthread_create_fptr, align 8, !tbaa !11, !noalias !33
  %i.bd = call i32 %i.bc(ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull @background_thread_entry, ptr noundef %i.bb) #12, !inline_history !37 ; 3 uses
  %i.be = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %3, ptr noundef null) #12, !inline_history !32 ; 2 uses
  %.not12.i = icmp eq i32 %i.be, 0
  br i1 %.not12.i, label %background_thread_create_signals_masked.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.3, i32 noundef %i.bd, i32 noundef %i.be) #12, !inline_history !32
  %i.bf = load i8, ptr @je_opt_abort, align 1, !tbaa !38, !range !24, !noundef !25
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.m, label %background_thread_create_signals_masked.exit

bb.m:                                             ; preds = %bb.l
  call void @abort() #13, !inline_history !32
  unreachable

background_thread_create_signals_masked.exit:     ; preds = %pre_reentrancy.exit, %bb.k, %bb.l
  %.0.i = phi i32 [ %i.ba, %pre_reentrancy.exit ], [ %i.bd, %bb.l ], [ %i.bd, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.bh = load i8, ptr %i.aw, align 1, !tbaa !31
  %i.bi = add i8 %i.bh, -1                        ; 2 uses
  store i8 %i.bi, ptr %i.aw, align 1, !tbaa !31
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.n, label %post_reentrancy.exit

bb.n:                                             ; preds = %background_thread_create_signals_masked.exit
  call void @je_tsd_slow_update(ptr noundef nonnull %0) #12
  br label %post_reentrancy.exit

post_reentrancy.exit:                             ; preds = %background_thread_create_signals_masked.exit, %bb.n
  %.not30.not = icmp eq i32 %.0.i, 0
  br i1 %.not30.not, label %bb.r, label %bb.o

bb.o:                                             ; preds = %post_reentrancy.exit
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.2, i32 noundef %.0.i) #12
  %i.bk = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.g) #12
  %.not.i40 = icmp eq i32 %i.bk, 0
  br i1 %.not.i40, label %bb.p, label %atomic_store_b.exit.i41

atomic_store_b.exit.i41:                          ; preds = %bb.o
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.f) #12
  store atomic i8 1, ptr %i.ac monotonic, align 1
  br label %bb.p

bb.p:                                             ; preds = %atomic_store_b.exit.i41, %bb.o
  %i.bl = load i64, ptr %i.j, align 8, !tbaa !13
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.j, align 8, !tbaa !13
  %i.bn = load ptr, ptr %i.m, align 8, !tbaa !19
  %.not.i.i42 = icmp eq ptr %i.bn, %0
  br i1 %.not.i.i42, label %malloc_mutex_lock.exit43, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %0, ptr %i.m, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !20
  %i.bq = add i64 %i.bp, 1
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !20
  br label %malloc_mutex_lock.exit43

malloc_mutex_lock.exit43:                         ; preds = %bb.p, %bb.q
  store i32 0, ptr %i.t, align 8, !tbaa !26
  %i.br = load i64, ptr @je_n_background_threads, align 8, !tbaa !21
  %i.bs = add i64 %i.br, -1
  store i64 %i.bs, ptr @je_n_background_threads, align 8, !tbaa !21
  store atomic i8 0, ptr %i.ac monotonic, align 8
  %i.bt = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #12 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %malloc_mutex_lock.exit43, %post_reentrancy.exit, %.critedge, %malloc_mutex_lock.exit37
  %.1 = phi i1 [ false, %malloc_mutex_lock.exit37 ], [ true, %malloc_mutex_lock.exit43 ], [ false, %.critedge ], [ false, %post_reentrancy.exit ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_background_threads_enable(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @je_max_background_threads, align 8, !tbaa !21 ; 11 uses
  %i.b = alloca i8, i64 %i.a, align 16            ; 6 uses
  %.not49 = icmp eq i64 %i.a, 0
  br i1 %.not49, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.c = add i64 %i.a, -1                         ; 2 uses
  %i.d = and i64 %i.c, 4294967295
  %i.e = icmp eq i64 %i.d, 4294967295
  %i.f = icmp ugt i64 %i.c, 4294967295
  %i.g = or i1 %i.e, %i.f
  br i1 %i.g, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check63 = icmp ult i64 %i.a, 32
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.a, 24
  %n.vec = and i64 %i.a, 8589934560               ; 5 uses
  %i.h = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <16 x i8> zeroinitializer, ptr %i.i, align 16, !tbaa !38
  store <16 x i8> zeroinitializer, ptr %i.j, align 16, !tbaa !38
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.a, 8589934584             ; 4 uses
  %i.l = trunc i64 %n.vec65 to i32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next67, %vec.epilog.vector.body ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %index66
  store <8 x i8> zeroinitializer, ptr %i.m, align 8, !tbaa !38
  %index.next67 = add nuw i64 %index66, 8         ; 2 uses
  %i.n = icmp eq i64 %index.next67, %n.vec65
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n68 = icmp eq i64 %i.a, %n.vec65
  br i1 %cmp.n68, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec65, %vec.epilog.middle.block ]
  %.03340.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  store i8 1, ptr %i.b, align 16, !tbaa !38
  %i.o = tail call i32 @je_narenas_total_get() #12 ; 4 uses
  %i.p = icmp ugt i32 %i.o, 1
  br i1 %i.p, label %.lr.ph44.preheader, label %._crit_edge45

.lr.ph44.preheader:                               ; preds = %._crit_edge
  %wide.trip.count = zext i32 %i.o to i64
  %.pre57 = load i64, ptr @je_max_background_threads, align 8, !tbaa !21
  br label %.lr.ph44

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.q = phi i64 [ %i.t, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %.03340 = phi i32 [ %i.s, %.lr.ph ], [ %.03340.ph, %.lr.ph.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.q
  store i8 0, ptr %i.r, align 1, !tbaa !38
  %i.s = add i32 %.03340, 1                       ; 2 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = icmp ugt i64 %i.a, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !45

.lr.ph44:                                         ; preds = %.lr.ph44.preheader, %bb.f
  %i.v = phi i64 [ %.pre57, %.lr.ph44.preheader ], [ %i.bg, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph44.preheader ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %.03242 = phi i32 [ 0, %.lr.ph44.preheader ], [ %.1, %bb.f ] ; 3 uses
  %i.w = urem i64 %indvars.iv, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !38, !range !24, !noundef !25
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph44
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv
  %i.ab = load atomic ptr, ptr %i.aa acquire, align 8
  %i.ac = icmp eq ptr %i.ab, null
  %.pre = load i64, ptr @je_max_background_threads, align 8, !tbaa !21 ; 2 uses
  br i1 %i.ac, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr @je_background_thread_info, align 8, !tbaa !22
  %i.ae = urem i64 %indvars.iv, %.pre
  %i.af = getelementptr inbounds nuw [208 x i8], ptr %i.ad, i64 %i.ae ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 120 ; 2 uses
  %i.ah = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ag) #12
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.d, label %atomic_store_b.exit.i

atomic_store_b.exit.i:                            ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ai) #12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  store atomic i8 1, ptr %i.aj monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %atomic_store_b.exit.i, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 112 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !13
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 104 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %i.ao, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr %i.an, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 96 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !20
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.d, %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 168
  store i32 1, ptr %i.as, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 172
  store atomic i8 0, ptr %i.at release, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 176
  tail call void @je_nstime_init(ptr noundef nonnull %i.au, i64 noundef 0) #12
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 184
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  tail call void @je_nstime_copy(ptr noundef nonnull %i.aw, ptr noundef nonnull @nstime_zero) #12
  %i.ax = load i64, ptr @je_n_background_threads, align 8, !tbaa !21
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr @je_n_background_threads, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  store atomic i8 0, ptr %i.az monotonic, align 8
  %i.ba = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ag) #12 ; 0 uses
  %i.bb = load i64, ptr @je_max_background_threads, align 8, !tbaa !21 ; 3 uses
  %i.bc = urem i64 %indvars.iv, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bc
  store i8 1, ptr %i.bd, align 1, !tbaa !38
  %i.be = add i32 %.03242, 1                      ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %.not = icmp eq i64 %i.bb, %i.bf
  br i1 %.not, label %._crit_edge45, label %bb.f

bb.f:                                             ; preds = %malloc_mutex_lock.exit, %.lr.ph44, %bb.b
  %i.bg = phi i64 [ %i.v, %.lr.ph44 ], [ %.pre, %bb.b ], [ %i.bb, %malloc_mutex_lock.exit ]
  %.1 = phi i32 [ %.03242, %.lr.ph44 ], [ %.03242, %bb.b ], [ %i.be, %malloc_mutex_lock.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge45, label %.lr.ph44, !llvm.loop !46

._crit_edge45:                                    ; preds = %malloc_mutex_lock.exit, %bb.f, %._crit_edge
  %i.bh = tail call fastcc zeroext i1 @background_thread_create_locked(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.bi = icmp eq i32 %i.o, 0
  %or.cond.not = or i1 %i.bi, %i.bh
  br i1 %or.cond.not, label %.loopexit, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %._crit_edge45
  %wide.trip.count55 = zext i32 %i.o to i64
  br label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph47.preheader, %bb.h
  %indvars.iv52 = phi i64 [ 0, %.lr.ph47.preheader ], [ %indvars.iv.next53, %bb.h ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv52
  %i.bk = load atomic ptr, ptr %i.bj acquire, align 8 ; 2 uses
  %.not38 = icmp eq ptr %i.bk, null
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph47
end_hunk_0
