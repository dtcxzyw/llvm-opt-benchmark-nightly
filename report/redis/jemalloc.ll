inline.NumInlined: 520
inline.NumDeleted: 74
begin_hunk_0_@arena_choose:bb.a

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.k, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) ; 7 uses
  %i.k = load i8, ptr %0, align 8, !tbaa !104, !range !105, !noundef !106
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162  ; 2 uses
  %.not43.i = icmp eq ptr %i.p, null
  br i1 %.not43.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not44.i = icmp eq ptr %i.p, %i.j
  br i1 %.not44.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #20
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  tail call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e
  %.037.i = phi ptr [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.j, %bb.j ] ; 6 uses
  %i.q = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7 ; 2 uses
  %i.r = icmp ult i32 %i.q, 3
  br i1 %i.r, label %arena_choose_impl.exit, label %percpu_arena_ind_limit.exit.i

percpu_arena_ind_limit.exit.i:                    ; preds = %bb.k
  %i.s = getelementptr i8, ptr %.037.i, i64 78928 ; 2 uses
  %.037.val48.i = load i32, ptr %i.s, align 8, !tbaa !38
  %i.t = icmp eq i32 %i.q, 4
  %i.u = load i32, ptr @je_ncpus, align 4         ; 4 uses
  %i.v = icmp ugt i32 %i.u, 1
  %or.cond.i.i = and i1 %i.t, %i.v
  %i.w = and i32 %i.u, 1
  %i.x = lshr i32 %i.u, 1
  %spec.select.i = add nuw i32 %i.x, %i.w
  %.0.i47.i = select i1 %or.cond.i.i, i32 %spec.select.i, i32 %i.u
  %i.y = icmp ult i32 %.037.val48.i, %.0.i47.i
  br i1 %i.y, label %bb.l, label %arena_choose_impl.exit

bb.l:                                             ; preds = %percpu_arena_ind_limit.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.037.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !169
  %.not45.i = icmp eq ptr %i.aa, %0
  br i1 %.not45.i, label %arena_choose_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call i32 @sched_getcpu() #20       ; 3 uses
  %i.ac = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7
  %i.ad = icmp eq i32 %i.ac, 3
  br i1 %i.ad, label %percpu_arena_choose.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load i32, ptr @je_ncpus, align 4, !tbaa !7
  %i.af = lshr i32 %i.ae, 1                       ; 2 uses
  %i.ag = icmp ult i32 %i.ab, %i.af
  %i.ah = select i1 %i.ag, i32 0, i32 %i.af
  %spec.select.i.i = sub nuw i32 %i.ab, %i.ah
  br label %percpu_arena_choose.exit.i

percpu_arena_choose.exit.i:                       ; preds = %bb.n, %bb.m
  %.0.i.i = phi i32 [ %i.ab, %bb.m ], [ %spec.select.i.i, %bb.n ] ; 4 uses
  %.037.val.i = load i32, ptr %i.s, align 8, !tbaa !38
  %.not46.i = icmp eq i32 %.037.val.i, %.0.i.i
  br i1 %.not46.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %percpu_arena_choose.exit.i
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !36  ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 78928
  %.val.i.i = load i32, ptr %i.aj, align 8, !tbaa !38
  %.not.i50.i = icmp eq i32 %.val.i.i, %.0.i.i
  br i1 %.not.i50.i, label %percpu_arena_update.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = zext i32 %.0.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ak
  %i.am = load atomic ptr, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.q, label %arena_get.exit.i.i, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.ao = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef %.0.i.i, ptr noundef nonnull @je_arena_config_default), !inline_history !15
  br label %arena_get.exit.i.i

arena_get.exit.i.i:                               ; preds = %bb.q, %bb.p
  %.0.i18.i.i = phi ptr [ %i.ao, %bb.q ], [ %i.am, %bb.p ] ; 3 uses
  tail call void @je_arena_nthreads_dec(ptr noundef nonnull %i.ai, i1 noundef zeroext false) #20
  tail call void @je_arena_nthreads_inc(ptr noundef %.0.i18.i.i, i1 noundef zeroext false) #20
  store ptr %.0.i18.i.i, ptr %i.g, align 8, !tbaa !36
  %i.ap = tail call i32 @je_arena_nthreads_get(ptr noundef nonnull %i.ai, i1 noundef zeroext false) #20
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.r, label %je_arena_migrate.exit.i.i

bb.r:                                             ; preds = %arena_get.exit.i.i
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %i.ai, i1 noundef zeroext false, i1 noundef zeroext true) #20
  br label %je_arena_migrate.exit.i.i

je_arena_migrate.exit.i.i:                        ; preds = %bb.r, %arena_get.exit.i.i
  %i.ar = load i8, ptr %0, align 8, !tbaa !104, !range !105, !noundef !106
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.s, label %percpu_arena_update.exit.i

bb.s:                                             ; preds = %je_arena_migrate.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.au, ptr noundef nonnull %i.at, ptr noundef %.0.i18.i.i) #20
  br label %percpu_arena_update.exit.i

percpu_arena_update.exit.i:                       ; preds = %bb.s, %je_arena_migrate.exit.i.i, %bb.o
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !36
  br label %bb.t

bb.t:                                             ; preds = %percpu_arena_update.exit.i, %percpu_arena_choose.exit.i
  %.1.i = phi ptr [ %i.av, %percpu_arena_update.exit.i ], [ %.037.i, %percpu_arena_choose.exit.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store ptr %0, ptr %i.aw, align 8, !tbaa !169
  br label %arena_choose_impl.exit

arena_choose_impl.exit:                           ; preds = %bb.a, %bb.c, %bb.d, %bb.k, %percpu_arena_ind_limit.exit.i, %bb.l, %bb.t
  %.0.i = phi ptr [ %1, %bb.a ], [ %.037.i, %percpu_arena_ind_limit.exit.i ], [ %.037.i, %bb.k ], [ %.1.i, %bb.t ], [ %.037.i, %bb.l ], [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.0.i
}

declare i64 @je_arena_fill_small_fresh(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define internal void @jemalloc_constructor() #1 {
bb.a:
  %i.a = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard() ; 0 uses
  br label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_jemalloc_prefork() #1 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.c = load i8, ptr %i.b, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 19 uses
  %i.e = load atomic i32, ptr @narenas_total acquire, align 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 2704
  tail call void @je_witness_prefork(ptr noundef nonnull %i.f) #20
  tail call void @je_ctl_prefork(ptr noundef %.0.i) #20
  tail call void @je_tcache_prefork(ptr noundef %.0.i) #20
  tail call void @je_malloc_mutex_prefork(ptr noundef %.0.i, ptr noundef nonnull @je_arenas_lock) #20
  tail call void @je_background_thread_prefork0(ptr noundef %.0.i) #20
  tail call void @je_prof_prefork0(ptr noundef %.0.i) #20
  tail call void @je_background_thread_prefork1(ptr noundef %.0.i) #20
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.split.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %tsd_fetch_impl.exit
  %wide.trip.count = zext i32 %i.e to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.041.us = phi i32 [ %i.j, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %arena_get.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %arena_get.exit.thread.us ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 10 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %arena_get.exit.thread.us, label %arena_get.exit.us, !prof !11

arena_get.exit.us:                                ; preds = %bb.c
  switch i32 %.041.us, label %default.unreachable [
    i32 0, label %bb.l
    i32 1, label %bb.k
    i32 2, label %bb.j
    i32 3, label %bb.i
    i32 4, label %bb.h
    i32 5, label %bb.g
    i32 6, label %bb.f
    i32 7, label %bb.e
    i32 8, label %bb.d
  ]

bb.d:                                             ; preds = %arena_get.exit.us
  tail call void @je_arena_prefork8(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread.us

bb.e:                                             ; preds = %arena_get.exit.us
  tail call void @je_arena_prefork7(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread.us

bb.f:                                             ; preds = %arena_get.exit.us
  tail call void @je_arena_prefork6(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread.us

bb.g:                                             ; preds = %arena_get.exit.us
  tail call void @je_arena_prefork5(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread.us

bb.h:                                             ; preds = %arena_get.exit.us
  tail call void @je_arena_prefork4(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread.us

bb.i:                                             ; preds = %arena_get.exit.us
  tail call void @je_arena_prefork3(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread.us

bb.j:                                             ; preds = %arena_get.exit.us
  tail call void @je_arena_prefork2(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread.us

bb.k:                                             ; preds = %arena_get.exit.us
  tail call void @je_arena_prefork1(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread.us

bb.l:                                             ; preds = %arena_get.exit.us
  tail call void @je_arena_prefork0(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread.us

arena_get.exit.thread.us:                         ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !170

._crit_edge.us:                                   ; preds = %arena_get.exit.thread.us
  %i.j = add nuw nsw i32 %.041.us, 1              ; 2 uses
  %exitcond44.not = icmp eq i32 %i.j, 9
  br i1 %exitcond44.not, label %.split.us, label %.preheader.us, !llvm.loop !171

default.unreachable:                              ; preds = %arena_get.exit.us
  unreachable

.split.us:                                        ; preds = %._crit_edge.us, %tsd_fetch_impl.exit
  tail call void @je_prof_prefork1(ptr noundef %.0.i) #20
  tail call void @je_stats_prefork(ptr noundef %.0.i) #20
  tail call void @je_tsd_prefork(ptr noundef %.0.i) #20
  ret void
}

declare void @je_witness_prefork(ptr noundef) local_unnamed_addr #4

declare void @je_ctl_prefork(ptr noundef) local_unnamed_addr #4

declare void @je_tcache_prefork(ptr noundef) local_unnamed_addr #4

declare void @je_malloc_mutex_prefork(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_background_thread_prefork0(ptr noundef) local_unnamed_addr #4

declare void @je_prof_prefork0(ptr noundef) local_unnamed_addr #4

declare void @je_background_thread_prefork1(ptr noundef) local_unnamed_addr #4

declare void @je_arena_prefork0(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_arena_prefork1(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_arena_prefork2(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_arena_prefork3(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_arena_prefork4(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_arena_prefork5(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_arena_prefork6(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_arena_prefork7(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_arena_prefork8(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_prof_prefork1(ptr noundef) local_unnamed_addr #4

declare void @je_stats_prefork(ptr noundef) local_unnamed_addr #4

declare void @je_tsd_prefork(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @je_jemalloc_postfork_parent() #1 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.c = load i8, ptr %i.b, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 9 uses
  tail call void @je_tsd_postfork_parent(ptr noundef %.0.i) #20
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 2704
  tail call void @je_witness_postfork_parent(ptr noundef nonnull %i.e) #20
  tail call void @je_stats_postfork_parent(ptr noundef %.0.i) #20
  %i.f = load atomic i32, ptr @narenas_total acquire, align 4 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %tsd_fetch_impl.exit
  %wide.trip.count = zext i32 %i.f to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %arena_get.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %arena_get.exit.thread ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %arena_get.exit.thread, label %arena_get.exit, !prof !11

arena_get.exit:                                   ; preds = %.lr.ph
  tail call void @je_arena_postfork_parent(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

arena_get.exit.thread:                            ; preds = %.lr.ph, %arena_get.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !172

._crit_edge:                                      ; preds = %arena_get.exit.thread, %tsd_fetch_impl.exit
  tail call void @je_prof_postfork_parent(ptr noundef %.0.i) #20
  tail call void @je_background_thread_postfork_parent(ptr noundef %.0.i) #20
  tail call void @je_malloc_mutex_postfork_parent(ptr noundef %.0.i, ptr noundef nonnull @je_arenas_lock) #20
  tail call void @je_tcache_postfork_parent(ptr noundef %.0.i) #20
  tail call void @je_ctl_postfork_parent(ptr noundef %.0.i) #20
  ret void
}

declare void @je_tsd_postfork_parent(ptr noundef) local_unnamed_addr #4

declare void @je_witness_postfork_parent(ptr noundef) local_unnamed_addr #4

declare void @je_stats_postfork_parent(ptr noundef) local_unnamed_addr #4

declare void @je_arena_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_prof_postfork_parent(ptr noundef) local_unnamed_addr #4

declare void @je_background_thread_postfork_parent(ptr noundef) local_unnamed_addr #4

declare void @je_malloc_mutex_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_tcache_postfork_parent(ptr noundef) local_unnamed_addr #4

declare void @je_ctl_postfork_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @je_jemalloc_postfork_child() #1 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.c = load i8, ptr %i.b, align 8, !tbaa !14
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 9 uses
  tail call void @je_tsd_postfork_child(ptr noundef %.0.i) #20
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 2704
  tail call void @je_witness_postfork_child(ptr noundef nonnull %i.e) #20
  tail call void @je_stats_postfork_child(ptr noundef %.0.i) #20
  %i.f = load atomic i32, ptr @narenas_total acquire, align 4 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %tsd_fetch_impl.exit
  %wide.trip.count = zext i32 %i.f to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %arena_get.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %arena_get.exit.thread ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %arena_get.exit.thread, label %arena_get.exit, !prof !11

arena_get.exit:                                   ; preds = %.lr.ph
  tail call void @je_arena_postfork_child(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

arena_get.exit.thread:                            ; preds = %.lr.ph, %arena_get.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !173

._crit_edge:                                      ; preds = %arena_get.exit.thread, %tsd_fetch_impl.exit
  tail call void @je_prof_postfork_child(ptr noundef %.0.i) #20
  tail call void @je_background_thread_postfork_child(ptr noundef %.0.i) #20
  tail call void @je_malloc_mutex_postfork_child(ptr noundef %.0.i, ptr noundef nonnull @je_arenas_lock) #20
  tail call void @je_tcache_postfork_child(ptr noundef %.0.i) #20
  tail call void @je_ctl_postfork_child(ptr noundef %.0.i) #20
  ret void
}

declare void @je_tsd_postfork_child(ptr noundef) local_unnamed_addr #4

declare void @je_witness_postfork_child(ptr noundef) local_unnamed_addr #4

declare void @je_stats_postfork_child(ptr noundef) local_unnamed_addr #4

declare void @je_arena_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_prof_postfork_child(ptr noundef) local_unnamed_addr #4

declare void @je_background_thread_postfork_child(ptr noundef) local_unnamed_addr #4

declare void @je_malloc_mutex_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_tcache_postfork_child(ptr noundef) local_unnamed_addr #4

declare void @je_ctl_postfork_child(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @je_get_defrag_hint(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %1) #20
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef null, ptr noundef nonnull %1, i64 noundef %i.a)
  %.fca.1.extract.i.i = extractvalue { i64, i32 } %i.b, 1
  %i.c = and i32 %.fca.1.extract.i.i, 256
  %.not = icmp eq i32 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.not, label %iget_defrag_hint.exit, label %bb.b, !prof !11
end_hunk_0
