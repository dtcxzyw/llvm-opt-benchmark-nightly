Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/thread_event_registry?download=true
inline.NumInlined: 40
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
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
%struct.te_base_cb_s = type { ptr, ptr, ptr, ptr }
%struct.atomic_p_t = type { ptr }
%struct.user_hook_object_s = type { ptr, i64, i8 }
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
%struct.te_ctx_s = type { i8, ptr, ptr, ptr, ptr }

@uevents_mu = internal global %struct.malloc_mutex_s zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"thread_events\00", align 1
@je_stats_interval_te_handler = external global %struct.te_base_cb_s, align 8
@je_tcache_gc_te_handler = external global %struct.te_base_cb_s, align 8
@je_peak_te_handler = external global %struct.te_base_cb_s, align 8
@user_alloc_handler0 = internal global %struct.te_base_cb_s { ptr @te_user_alloc_enabled0, ptr @te_user_new_event_wait_0, ptr @postponed_event_wait, ptr @te_user_alloc_handler_call0 }, align 8
@user_alloc_handler1 = internal global %struct.te_base_cb_s { ptr @te_user_alloc_enabled1, ptr @te_user_new_event_wait_1, ptr @postponed_event_wait, ptr @te_user_alloc_handler_call1 }, align 8
@user_alloc_handler2 = internal global %struct.te_base_cb_s { ptr @te_user_alloc_enabled2, ptr @te_user_new_event_wait_2, ptr @postponed_event_wait, ptr @te_user_alloc_handler_call2 }, align 8
@user_alloc_handler3 = internal global %struct.te_base_cb_s { ptr @te_user_alloc_enabled3, ptr @te_user_new_event_wait_3, ptr @postponed_event_wait, ptr @te_user_alloc_handler_call3 }, align 8
@je_te_alloc_handlers = hidden local_unnamed_addr global [7 x ptr] [ptr @je_stats_interval_te_handler, ptr @je_tcache_gc_te_handler, ptr @je_peak_te_handler, ptr @user_alloc_handler0, ptr @user_alloc_handler1, ptr @user_alloc_handler2, ptr @user_alloc_handler3], align 16
@user_dalloc_handler0 = internal global %struct.te_base_cb_s { ptr @te_user_dalloc_enabled0, ptr @te_user_new_event_wait_0, ptr @postponed_event_wait, ptr @te_user_dalloc_handler_call0 }, align 8
@user_dalloc_handler1 = internal global %struct.te_base_cb_s { ptr @te_user_dalloc_enabled1, ptr @te_user_new_event_wait_1, ptr @postponed_event_wait, ptr @te_user_dalloc_handler_call1 }, align 8
@user_dalloc_handler2 = internal global %struct.te_base_cb_s { ptr @te_user_dalloc_enabled2, ptr @te_user_new_event_wait_2, ptr @postponed_event_wait, ptr @te_user_dalloc_handler_call2 }, align 8
@user_dalloc_handler3 = internal global %struct.te_base_cb_s { ptr @te_user_dalloc_enabled3, ptr @te_user_new_event_wait_3, ptr @postponed_event_wait, ptr @te_user_dalloc_handler_call3 }, align 8
@je_te_dalloc_handlers = hidden local_unnamed_addr global [6 x ptr] [ptr @je_tcache_gc_te_handler, ptr @je_peak_te_handler, ptr @user_dalloc_handler0, ptr @user_dalloc_handler1, ptr @user_dalloc_handler2, ptr @user_dalloc_handler3], align 16
@uevent_obj_p = internal unnamed_addr global [4 x %struct.atomic_p_t] zeroinitializer, align 16
@uevents_storage = internal global [4 x %struct.user_hook_object_s] zeroinitializer, align 16
@je_tsd_tls = external thread_local(initialexec) global %struct.tsd_s, align 8

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_experimental_thread_events_boot() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @je_malloc_mutex_init(ptr noundef nonnull @uevents_mu, ptr noundef nonnull @.str, i32 noundef 4096, i32 noundef 0) #7
  ret i1 %i.a
}

declare zeroext i1 @je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden range(i32 0, 3) i32 @je_te_user_event_enabled(i64 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr @uevent_obj_p, i64 %0
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  %brmerge = or i1 %1, %.not
  %not..not = icmp ne ptr %i.b, null
  %.mux = zext i1 %not..not to i32
  br i1 %brmerge, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !11, !range !16, !noundef !17
  %i.e = trunc nuw i8 %i.d to i1
  %spec.select = select i1 %i.e, i32 2, i32 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %.mux, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 23) i32 @je_te_register_user_handler(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.te_ctx_s, align 8           ; 9 uses
  %3 = alloca %struct.te_ctx_s, align 8           ; 9 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %te_recalculate_current_thread_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %.not15 = icmp eq ptr %i.a, null
  br i1 %.not15, label %te_recalculate_current_thread_data.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %te_recalculate_current_thread_data.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @uevents_mu, i64 72)) #7
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.e

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.d
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @uevents_mu, i64 64) monotonic, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @uevents_mu) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %malloc_mutex_trylock_final.exit.i
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @uevents_mu, i64 56), align 8, !tbaa !20
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @uevents_mu, i64 56), align 8, !tbaa !20
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @uevents_mu, i64 48), align 8, !tbaa !25
  %.not.i.i = icmp eq ptr %i.h, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @uevents_mu, i64 48), align 8, !tbaa !25
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @uevents_mu, i64 40), align 8, !tbaa !26
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @uevents_mu, i64 40), align 8, !tbaa !26
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.f, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.l = load atomic ptr, ptr @uevent_obj_p acquire, align 16 ; 4 uses
  %cond18.i = icmp eq ptr %i.l, null
  br i1 %cond18.i, label %bb.p, label %bb.h

bb.h:                                             ; preds = %malloc_mutex_lock.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = load ptr, ptr %1, align 8, !tbaa !18
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.i, label %user_object_eq.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !19
  %i.r = load i64, ptr %i.b, align 8, !tbaa !19
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %user_object_eq.exit.i, label %user_object_eq.exit.thread.i

user_object_eq.exit.i:                            ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load i8, ptr %i.t, align 8, !tbaa !11, !range !16, !noundef !17
  %i.v = load i8, ptr %i.k, align 8, !tbaa !11, !range !16, !noundef !17
  %i.w = icmp eq i8 %i.u, %i.v
  br i1 %i.w, label %bb.u, label %user_object_eq.exit.thread.i

user_object_eq.exit.thread.i:                     ; preds = %user_object_eq.exit.i, %bb.i, %bb.h
  %i.x = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @uevent_obj_p, i64 8) acquire, align 8 ; 4 uses
  %cond18.1.i = icmp eq ptr %i.x, null
  br i1 %cond18.1.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %user_object_eq.exit.thread.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !18
  %i.z = load ptr, ptr %1, align 8, !tbaa !18
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.k, label %user_object_eq.exit.thread.1.i

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !19
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !19
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %user_object_eq.exit.1.i, label %user_object_eq.exit.thread.1.i

user_object_eq.exit.1.i:                          ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !11, !range !16, !noundef !17
  %i.ah = load i8, ptr %i.k, align 8, !tbaa !11, !range !16, !noundef !17
  %i.ai = icmp eq i8 %i.ag, %i.ah
  br i1 %i.ai, label %bb.u, label %user_object_eq.exit.thread.1.i

user_object_eq.exit.thread.1.i:                   ; preds = %user_object_eq.exit.1.i, %bb.k, %bb.j
  %i.aj = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @uevent_obj_p, i64 16) acquire, align 16 ; 4 uses
  %cond18.2.i = icmp eq ptr %i.aj, null
  br i1 %cond18.2.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %user_object_eq.exit.thread.1.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.al = load ptr, ptr %1, align 8, !tbaa !18
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.m, label %user_object_eq.exit.thread.2.i

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !19
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !19
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %user_object_eq.exit.2.i, label %user_object_eq.exit.thread.2.i

user_object_eq.exit.2.i:                          ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !11, !range !16, !noundef !17
  %i.at = load i8, ptr %i.k, align 8, !tbaa !11, !range !16, !noundef !17
  %i.au = icmp eq i8 %i.as, %i.at
  br i1 %i.au, label %bb.u, label %user_object_eq.exit.thread.2.i

user_object_eq.exit.thread.2.i:                   ; preds = %user_object_eq.exit.2.i, %bb.m, %bb.l
  %i.av = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @uevent_obj_p, i64 24) acquire, align 8 ; 4 uses
  %cond18.3.i = icmp eq ptr %i.av, null
  br i1 %cond18.3.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %user_object_eq.exit.thread.2.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !18
  %i.ax = load ptr, ptr %1, align 8, !tbaa !18
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !19
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !19
  %i.bc = icmp eq i64 %i.ba, %i.bb
  br i1 %i.bc, label %user_object_eq.exit.3.i, label %bb.t

user_object_eq.exit.3.i:                          ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !11, !range !16, !noundef !17
  %i.bf = load i8, ptr %i.k, align 8, !tbaa !11, !range !16, !noundef !17
  %i.bg = icmp eq i8 %i.be, %i.bf
  br i1 %i.bg, label %bb.u, label %bb.t

bb.p:                                             ; preds = %user_object_eq.exit.thread.2.i, %user_object_eq.exit.thread.1.i, %user_object_eq.exit.thread.i, %malloc_mutex_lock.exit
  %.01428.lcssa.wide.i = phi i64 [ 0, %malloc_mutex_lock.exit ], [ 1, %user_object_eq.exit.thread.i ], [ 2, %user_object_eq.exit.thread.1.i ], [ 3, %user_object_eq.exit.thread.2.i ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @uevent_obj_p, i64 %.01428.lcssa.wide.i ; 2 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr @uevents_storage, i64 %.01428.lcssa.wide.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !27
  fence seq_cst
  store atomic ptr %i.bi, ptr %i.bh release, align 8
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @uevents_mu, i64 64) monotonic, align 8
  %i.bj = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @uevents_mu, i64 72)) #7 ; 0 uses
  %i.bk = load i8, ptr %i.k, align 8, !tbaa !11, !range !16, !noundef !17
  %i.bl = trunc nuw i8 %i.bk to i1                ; 2 uses
  %i.bm = icmp eq ptr %0, null
  br i1 %i.bm, label %bb.q, label %tsd_fetch_impl.exit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.bn = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 920
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !31
  %.not.i.i16 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i16, label %tsd_fetch_impl.exit.thread.i, label %tsd_fetch_impl.exit.i, !prof !32

tsd_fetch_impl.exit.i:                            ; preds = %bb.q
  %i.bq = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.bn, i1 noundef zeroext false) #7 ; 2 uses
  %.not.i17 = icmp eq ptr %i.bq, null
  br i1 %.not.i17, label %te_recalculate_current_thread_data.exit, label %tsd_fetch_impl.exit.thread.i

tsd_fetch_impl.exit.thread.i:                     ; preds = %tsd_fetch_impl.exit.i, %bb.q, %bb.p
  %i.br = phi ptr [ %i.bq, %tsd_fetch_impl.exit.i ], [ %0, %bb.p ], [ %i.bn, %bb.q ] ; 13 uses
  %i.bs = load atomic ptr, ptr %i.bh acquire, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !19 ; 6 uses
end_hunk_0
begin_hunk_1_@te_user_alloc_handler_call0:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !31
  %i.k = add i8 %i.j, 1
  store i8 %i.k, ptr %i.i, align 1, !tbaa !31
  br i1 %i.h, label %bb.b, label %pre_reentrancy.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #7
  br label %pre_reentrancy.exit.i

pre_reentrancy.exit.i:                            ; preds = %bb.b, %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void %i.l(i1 noundef zeroext true, i64 noundef %i.d, i64 noundef %i.f) #7, !inline_history !40
  %i.m = load i8, ptr %i.i, align 1, !tbaa !31
  %i.n = add i8 %i.m, -1                          ; 2 uses
  store i8 %i.n, ptr %i.i, align 1, !tbaa !31
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.c, label %handler_wrapper.exit

bb.c:                                             ; preds = %pre_reentrancy.exit.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #7
  br label %handler_wrapper.exit

handler_wrapper.exit:                             ; preds = %pre_reentrancy.exit.i, %bb.c
  ret void
}

declare void @je_tsd_slow_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal range(i32 0, 2) i32 @te_user_alloc_enabled1() #2 {
bb.a:
  %i.a = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @uevent_obj_p, i64 8) acquire, align 8
  %.not.i = icmp ne ptr %i.a, null
  %.mux.i = zext i1 %.not.i to i32
  ret i32 %.mux.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal i64 @te_user_new_event_wait_1(ptr nofree readnone captures(none) %0) #2 {
bb.a:
  %i.a = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @uevent_obj_p, i64 8) acquire, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define internal void @te_user_alloc_handler_call1(ptr noundef %0) #0 {
bb.a:
  %i.a = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @uevent_obj_p, i64 8) acquire, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29
  %i.g = load i8, ptr %i.b, align 8, !tbaa !31
  %i.h = icmp eq i8 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !31
  %i.k = add i8 %i.j, 1
  store i8 %i.k, ptr %i.i, align 1, !tbaa !31
  br i1 %i.h, label %bb.b, label %pre_reentrancy.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #7
  br label %pre_reentrancy.exit.i

pre_reentrancy.exit.i:                            ; preds = %bb.b, %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void %i.l(i1 noundef zeroext true, i64 noundef %i.d, i64 noundef %i.f) #7, !inline_history !40
  %i.m = load i8, ptr %i.i, align 1, !tbaa !31
  %i.n = add i8 %i.m, -1                          ; 2 uses
  store i8 %i.n, ptr %i.i, align 1, !tbaa !31
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.c, label %handler_wrapper.exit

bb.c:                                             ; preds = %pre_reentrancy.exit.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #7
  br label %handler_wrapper.exit

handler_wrapper.exit:                             ; preds = %pre_reentrancy.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal range(i32 0, 2) i32 @te_user_alloc_enabled2() #2 {
bb.a:
  %i.a = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @uevent_obj_p, i64 16) acquire, align 16
  %.not.i = icmp ne ptr %i.a, null
  %.mux.i = zext i1 %.not.i to i32
  ret i32 %.mux.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal i64 @te_user_new_event_wait_2(ptr nofree readnone captures(none) %0) #2 {
bb.a:
  %i.a = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @uevent_obj_p, i64 16) acquire, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define internal void @te_user_alloc_handler_call2(ptr noundef %0) #0 {
bb.a:
  %i.a = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @uevent_obj_p, i64 16) acquire, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29
  %i.g = load i8, ptr %i.b, align 8, !tbaa !31
  %i.h = icmp eq i8 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !31
  %i.k = add i8 %i.j, 1
  store i8 %i.k, ptr %i.i, align 1, !tbaa !31
  br i1 %i.h, label %bb.b, label %pre_reentrancy.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #7
  br label %pre_reentrancy.exit.i

pre_reentrancy.exit.i:                            ; preds = %bb.b, %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void %i.l(i1 noundef zeroext true, i64 noundef %i.d, i64 noundef %i.f) #7, !inline_history !40
  %i.m = load i8, ptr %i.i, align 1, !tbaa !31
  %i.n = add i8 %i.m, -1                          ; 2 uses
  store i8 %i.n, ptr %i.i, align 1, !tbaa !31
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.c, label %handler_wrapper.exit

bb.c:                                             ; preds = %pre_reentrancy.exit.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #7
  br label %handler_wrapper.exit

handler_wrapper.exit:                             ; preds = %pre_reentrancy.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal range(i32 0, 2) i32 @te_user_alloc_enabled3() #2 {
bb.a:
  %i.a = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @uevent_obj_p, i64 24) acquire, align 8
  %.not.i = icmp ne ptr %i.a, null
  %.mux.i = zext i1 %.not.i to i32
  ret i32 %.mux.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal i64 @te_user_new_event_wait_3(ptr nofree readnone captures(none) %0) #2 {
bb.a:
  %i.a = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @uevent_obj_p, i64 24) acquire, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define internal void @te_user_alloc_handler_call3(ptr noundef %0) #0 {
bb.a:
  %i.a = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @uevent_obj_p, i64 24) acquire, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29
  %i.g = load i8, ptr %i.b, align 8, !tbaa !31
  %i.h = icmp eq i8 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !31
  %i.k = add i8 %i.j, 1
  store i8 %i.k, ptr %i.i, align 1, !tbaa !31
  br i1 %i.h, label %bb.b, label %pre_reentrancy.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #7
  br label %pre_reentrancy.exit.i

pre_reentrancy.exit.i:                            ; preds = %bb.b, %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void %i.l(i1 noundef zeroext true, i64 noundef %i.d, i64 noundef %i.f) #7, !inline_history !40
  %i.m = load i8, ptr %i.i, align 1, !tbaa !31
  %i.n = add i8 %i.m, -1                          ; 2 uses
  store i8 %i.n, ptr %i.i, align 1, !tbaa !31
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.c, label %handler_wrapper.exit

bb.c:                                             ; preds = %pre_reentrancy.exit.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #7
  br label %handler_wrapper.exit

handler_wrapper.exit:                             ; preds = %pre_reentrancy.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal range(i32 0, 3) i32 @te_user_dalloc_enabled0() #2 {
bb.a:
  %i.a = load atomic ptr, ptr @uevent_obj_p acquire, align 16 ; 3 uses
  %.not.i.not = icmp eq ptr %i.a, null
  %not..not.i = icmp ne ptr %i.a, null
  %.mux.i = zext i1 %not..not.i to i32
  br i1 %.not.i.not, label %je_te_user_event_enabled.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !11, !range !16, !noundef !17
  %i.d = trunc nuw i8 %i.c to i1
  %spec.select.i = select i1 %i.d, i32 2, i32 1
  br label %je_te_user_event_enabled.exit

je_te_user_event_enabled.exit:                    ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %.mux.i, %bb.a ], [ %spec.select.i, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @te_user_dalloc_handler_call0(ptr noundef %0) #0 {
bb.a:
  %i.a = load atomic ptr, ptr @uevent_obj_p acquire, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29
  %i.g = load i8, ptr %i.b, align 8, !tbaa !31
  %i.h = icmp eq i8 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !31
  %i.k = add i8 %i.j, 1
  store i8 %i.k, ptr %i.i, align 1, !tbaa !31
  br i1 %i.h, label %bb.b, label %pre_reentrancy.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #7
  br label %pre_reentrancy.exit.i

pre_reentrancy.exit.i:                            ; preds = %bb.b, %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void %i.l(i1 noundef zeroext false, i64 noundef %i.d, i64 noundef %i.f) #7, !inline_history !40
  %i.m = load i8, ptr %i.i, align 1, !tbaa !31
  %i.n = add i8 %i.m, -1                          ; 2 uses
  store i8 %i.n, ptr %i.i, align 1, !tbaa !31
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.c, label %handler_wrapper.exit

bb.c:                                             ; preds = %pre_reentrancy.exit.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #7
  br label %handler_wrapper.exit

handler_wrapper.exit:                             ; preds = %pre_reentrancy.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal range(i32 0, 3) i32 @te_user_dalloc_enabled1() #2 {
bb.a:
  %i.a = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @uevent_obj_p, i64 8) acquire, align 8 ; 3 uses
  %.not.i.not = icmp eq ptr %i.a, null
  %not..not.i = icmp ne ptr %i.a, null
  %.mux.i = zext i1 %not..not.i to i32
  br i1 %.not.i.not, label %je_te_user_event_enabled.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !11, !range !16, !noundef !17
  %i.d = trunc nuw i8 %i.c to i1
  %spec.select.i = select i1 %i.d, i32 2, i32 1
  br label %je_te_user_event_enabled.exit

je_te_user_event_enabled.exit:                    ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %.mux.i, %bb.a ], [ %spec.select.i, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @te_user_dalloc_handler_call1(ptr noundef %0) #0 {
bb.a:
  %i.a = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @uevent_obj_p, i64 8) acquire, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29
  %i.g = load i8, ptr %i.b, align 8, !tbaa !31
  %i.h = icmp eq i8 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !31
  %i.k = add i8 %i.j, 1
  store i8 %i.k, ptr %i.i, align 1, !tbaa !31
  br i1 %i.h, label %bb.b, label %pre_reentrancy.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #7
  br label %pre_reentrancy.exit.i

pre_reentrancy.exit.i:                            ; preds = %bb.b, %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void %i.l(i1 noundef zeroext false, i64 noundef %i.d, i64 noundef %i.f) #7, !inline_history !40
  %i.m = load i8, ptr %i.i, align 1, !tbaa !31
  %i.n = add i8 %i.m, -1                          ; 2 uses
  store i8 %i.n, ptr %i.i, align 1, !tbaa !31
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.c, label %handler_wrapper.exit

bb.c:                                             ; preds = %pre_reentrancy.exit.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #7
  br label %handler_wrapper.exit

handler_wrapper.exit:                             ; preds = %pre_reentrancy.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal range(i32 0, 3) i32 @te_user_dalloc_enabled2() #2 {
bb.a:
  %i.a = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @uevent_obj_p, i64 16) acquire, align 16 ; 3 uses
  %.not.i.not = icmp eq ptr %i.a, null
  %not..not.i = icmp ne ptr %i.a, null
  %.mux.i = zext i1 %not..not.i to i32
  br i1 %.not.i.not, label %je_te_user_event_enabled.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !11, !range !16, !noundef !17
  %i.d = trunc nuw i8 %i.c to i1
  %spec.select.i = select i1 %i.d, i32 2, i32 1
  br label %je_te_user_event_enabled.exit

je_te_user_event_enabled.exit:                    ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %.mux.i, %bb.a ], [ %spec.select.i, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @te_user_dalloc_handler_call2(ptr noundef %0) #0 {
bb.a:
  %i.a = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @uevent_obj_p, i64 16) acquire, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29
  %i.g = load i8, ptr %i.b, align 8, !tbaa !31
  %i.h = icmp eq i8 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !31
  %i.k = add i8 %i.j, 1
  store i8 %i.k, ptr %i.i, align 1, !tbaa !31
  br i1 %i.h, label %bb.b, label %pre_reentrancy.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #7
  br label %pre_reentrancy.exit.i

pre_reentrancy.exit.i:                            ; preds = %bb.b, %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void %i.l(i1 noundef zeroext false, i64 noundef %i.d, i64 noundef %i.f) #7, !inline_history !40
  %i.m = load i8, ptr %i.i, align 1, !tbaa !31
  %i.n = add i8 %i.m, -1                          ; 2 uses
  store i8 %i.n, ptr %i.i, align 1, !tbaa !31
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.c, label %handler_wrapper.exit

bb.c:                                             ; preds = %pre_reentrancy.exit.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #7
  br label %handler_wrapper.exit

handler_wrapper.exit:                             ; preds = %pre_reentrancy.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal range(i32 0, 3) i32 @te_user_dalloc_enabled3() #2 {
bb.a:
  %i.a = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @uevent_obj_p, i64 24) acquire, align 8 ; 3 uses
  %.not.i.not = icmp eq ptr %i.a, null
  %not..not.i = icmp ne ptr %i.a, null
  %.mux.i = zext i1 %not..not.i to i32
  br i1 %.not.i.not, label %je_te_user_event_enabled.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !11, !range !16, !noundef !17
  %i.d = trunc nuw i8 %i.c to i1
  %spec.select.i = select i1 %i.d, i32 2, i32 1
  br label %je_te_user_event_enabled.exit

je_te_user_event_enabled.exit:                    ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %.mux.i, %bb.a ], [ %spec.select.i, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @te_user_dalloc_handler_call3(ptr noundef %0) #0 {
bb.a:
  %i.a = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @uevent_obj_p, i64 24) acquire, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29
  %i.g = load i8, ptr %i.b, align 8, !tbaa !31
  %i.h = icmp eq i8 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !31
  %i.k = add i8 %i.j, 1
  store i8 %i.k, ptr %i.i, align 1, !tbaa !31
  br i1 %i.h, label %bb.b, label %pre_reentrancy.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #7
  br label %pre_reentrancy.exit.i

pre_reentrancy.exit.i:                            ; preds = %bb.b, %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void %i.l(i1 noundef zeroext false, i64 noundef %i.d, i64 noundef %i.f) #7, !inline_history !40
  %i.m = load i8, ptr %i.i, align 1, !tbaa !31
  %i.n = add i8 %i.m, -1                          ; 2 uses
  store i8 %i.n, ptr %i.i, align 1, !tbaa !31
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.c, label %handler_wrapper.exit

bb.c:                                             ; preds = %pre_reentrancy.exit.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #7
  br label %handler_wrapper.exit

handler_wrapper.exit:                             ; preds = %pre_reentrancy.exit.i, %bb.c
  ret void
}

declare void @je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare void @je_te_recompute_fast_threshold(ptr noundef) local_unnamed_addr #1

declare ptr @je_tsd_fetch_slow(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

declare void @je_te_adjust_thresholds_helper(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !15, i64 16}
!12 = !{!"user_hook_object_s", !13, i64 0, !14, i64 8, !15, i64 16}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"long", !9, i64 0}
!15 = !{!"_Bool", !9, i64 0}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = !{!12, !13, i64 0}
!19 = !{!12, !14, i64 8}
!20 = !{!21, !14, i64 56}
!21 = !{!"", !22, i64 0, !22, i64 8, !14, i64 16, !14, i64 24, !8, i64 32, !23, i64 36, !14, i64 40, !24, i64 48, !14, i64 56}
!22 = !{!"", !14, i64 0}
!23 = !{!"", !8, i64 0}
!24 = !{!"p1 _ZTS6tsdn_s", !13, i64 0}
!25 = !{!21, !24, i64 48}
!26 = !{!21, !14, i64 40}
!27 = !{i64 0, i64 8, !28, i64 8, i64 8, !29, i64 16, i64 1, !30}
!28 = !{!13, !13, i64 0}
!29 = !{!14, !14, i64 0}
!30 = !{!15, !15, i64 0}
!31 = !{!9, !9, i64 0}
!32 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!33 = !{!34, !15, i64 0}
!34 = !{!"te_ctx_s", !15, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32}
!35 = !{!"p1 long", !13, i64 0}
!36 = !{!34, !35, i64 8}
!37 = !{!34, !35, i64 16}
!38 = !{!34, !35, i64 24}
!39 = !{!34, !35, i64 32}
!40 = distinct !{null}
end_hunk_1
