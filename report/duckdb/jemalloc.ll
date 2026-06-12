inline.NumInlined: 641
inline.NumDeleted: 71
begin_hunk_0_@duckdb_je_batch_alloc:bb.a
.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %cache_bin_low_water_adjust.exit
  %i.gu = add i64 %spec.select.i129197, %.0101
  %i.gv = add i64 %spec.select.i129197, %.1
  br label %.critedge119

.critedge119:                                     ; preds = %bb.ae, %mallocx_tcache_get.exit.thread, %mallocx_tcache_get.exit, %tcache_get_from_ind.exit.thread178, %tcache_get_from_ind.exit, %.loopexit, %bb.ai
  %.1102 = phi i64 [ %i.gu, %.loopexit ], [ %.0101, %tcache_get_from_ind.exit.thread178 ], [ %.0101, %bb.ai ], [ %.0101, %tcache_get_from_ind.exit ], [ %.0101, %mallocx_tcache_get.exit ], [ %.0101, %mallocx_tcache_get.exit.thread ], [ %.0101, %bb.ae ] ; 2 uses
  %.297 = phi ptr [ %.196, %.loopexit ], [ %.095, %tcache_get_from_ind.exit.thread178 ], [ %.095, %bb.ai ], [ %.095, %tcache_get_from_ind.exit ], [ %.095, %mallocx_tcache_get.exit ], [ %.095, %mallocx_tcache_get.exit.thread ], [ %.095, %bb.ae ] ; 2 uses
  %.2 = phi i64 [ %i.gv, %.loopexit ], [ %.1, %tcache_get_from_ind.exit.thread178 ], [ %.1, %bb.ai ], [ %.1, %tcache_get_from_ind.exit ], [ %.1, %mallocx_tcache_get.exit ], [ %.1, %mallocx_tcache_get.exit.thread ], [ %.1, %bb.ae ] ; 4 uses
  %i.gw = mul i64 %.1102, %storemerge.i           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i8 1, ptr %4, align 8, !tbaa !109
  store <4 x ptr> %i.dh, ptr %i.df, align 8, !tbaa !159
  %i.gx = load i64, ptr %i.de, align 8, !tbaa !23 ; 2 uses
  %i.gy = add i64 %i.gx, %i.gw
  store i64 %i.gy, ptr %i.de, align 8, !tbaa !23
  %i.gz = load i64, ptr %i.dg, align 8, !tbaa !23
  %i.ha = sub i64 %i.gz, %i.gx
  %i.hb = icmp ult i64 %i.gw, %i.ha
  br i1 %i.hb, label %te_event_advance.exit, label %bb.al, !prof !9

bb.al:                                            ; preds = %.critedge119
  call void @duckdb_je_te_event_trigger(ptr noundef nonnull %.0.i133153, ptr noundef nonnull %4) #21
  br label %te_event_advance.exit

te_event_advance.exit:                            ; preds = %.critedge119, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.hc = icmp ult i64 %.1102, %i.dj
  br i1 %i.hc, label %bb.am, label %select.unfold

bb.am:                                            ; preds = %te_event_advance.exit
  %i.hd = call noalias ptr @duckdb_je_mallocx(i64 noundef %2, i32 noundef %3) #24 ; 2 uses
  %.not115 = icmp eq ptr %i.hd, null
  br i1 %.not115, label %.critedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.he = add i64 %.2, 1
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2
  store ptr %i.hd, ptr %i.hf, align 8, !tbaa !92
  br label %select.unfold

select.unfold:                                    ; preds = %bb.an, %te_event_advance.exit, %arena_get_from_ind.exit
  %.5 = phi ptr [ %.4, %bb.an ], [ %.4, %te_event_advance.exit ], [ null, %arena_get_from_ind.exit ]
  %i.hg = phi i1 [ true, %bb.an ], [ true, %te_event_advance.exit ], [ false, %arena_get_from_ind.exit ]
  %.398 = phi ptr [ %.297, %bb.an ], [ %.297, %te_event_advance.exit ], [ %.095, %arena_get_from_ind.exit ]
  %.6 = phi i64 [ %i.he, %bb.an ], [ %.2, %te_event_advance.exit ], [ %.094, %arena_get_from_ind.exit ] ; 2 uses
  br i1 %i.hg, label %bb.r, label %.critedge

.critedge:                                        ; preds = %bb.am, %bb.v, %select.unfold, %bb.r, %sz_s2u_compute.exit29.i, %bb.j, %bb.e, %tsd_fetch_impl.exit, %aligned_usize_get.exit, %tsd_fetch_impl.exit.thread
  %.7 = phi i64 [ 0, %tsd_fetch_impl.exit.thread ], [ 0, %aligned_usize_get.exit ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %tsd_fetch_impl.exit ], [ 0, %sz_s2u_compute.exit29.i ], [ %.2, %bb.am ], [ %.094, %bb.v ], [ %.6, %select.unfold ], [ %.094, %bb.r ]
  ret i64 %.7
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @arena_choose(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null, ret: address, provenance) %1) unnamed_addr #11 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %arena_choose_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !10
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.e, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.d = load atomic ptr, ptr @duckdb_je_arenas acquire, align 64 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %arena_choose_impl.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @duckdb_je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default), !inline_history !11
  br label %arena_choose_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %arena_choose_impl.exit, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @duckdb_je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) ; 7 uses
  %i.k = load i8, ptr %0, align 8, !tbaa !95, !range !96, !noundef !97
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %arena_choose_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !156  ; 2 uses
  %.not30.i = icmp eq ptr %i.p, null
  br i1 %.not30.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not31.i = icmp eq ptr %i.p, %i.j
  br i1 %.not31.i, label %arena_choose_impl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @duckdb_je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #21
  br label %arena_choose_impl.exit

bb.j:                                             ; preds = %bb.g
  tail call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #21
  br label %arena_choose_impl.exit

arena_choose_impl.exit:                           ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j
  %.0.i = phi ptr [ %1, %bb.a ], [ %i.j, %bb.j ], [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.0.i
}

declare i64 @duckdb_je_arena_fill_small_fresh(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define internal void @jemalloc_constructor() #2 {
bb.a:
  %i.a = tail call i64 @sysconf(i32 noundef 84) #21 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  %i.c = trunc i64 %i.a to i32
  %i.d = select i1 %i.b, i32 1, i32 %i.c          ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 (...) @duckdb_malloc_ncpus() #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.in = phi i32 [ %i.f, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %.0 = zext i32 %.0.in to i64                    ; 2 uses
  %i.g = icmp eq i32 %.0.in, 0
  %spec.store.select = select i1 %i.g, i64 1, i64 %.0
  %i.h = lshr i64 %.0, 4
  %spec.store.select1 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @duckdb_je_JE_MALLOC_CONF_BUFFER, i64 noundef 200, ptr noundef nonnull @.str.78, i64 noundef 1000, i64 noundef 1000, i64 noundef %spec.store.select, i64 noundef %spec.store.select1) #21 ; 0 uses
  store ptr @duckdb_je_JE_MALLOC_CONF_BUFFER, ptr @duckdb_je_malloc_conf, align 8, !tbaa !160
  %i.j = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %malloc_init.exit, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.l = tail call fastcc zeroext i1 @malloc_init_hard() ; 0 uses
  br label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.d, %bb.c
  ret void
}

declare i32 @duckdb_malloc_ncpus(...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define void @duckdb_je_jemalloc_prefork() #2 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 824
  %i.c = load i8, ptr %i.b, align 8, !tbaa !10
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #21
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 19 uses
  %i.e = load atomic i32, ptr @narenas_total acquire, align 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 2624
  tail call void @duckdb_je_witness_prefork(ptr noundef nonnull %i.f) #21
  tail call void @duckdb_je_ctl_prefork(ptr noundef %.0.i) #21
  tail call void @duckdb_je_tcache_prefork(ptr noundef %.0.i) #21
  tail call void @duckdb_je_malloc_mutex_prefork(ptr noundef %.0.i, ptr noundef nonnull @duckdb_je_arenas_lock) #21
  tail call void @duckdb_je_background_thread_prefork0(ptr noundef %.0.i) #21
  tail call void @duckdb_je_prof_prefork0(ptr noundef %.0.i) #21
  tail call void @duckdb_je_background_thread_prefork1(ptr noundef %.0.i) #21
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
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 10 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %arena_get.exit.thread.us, label %arena_get.exit.us, !prof !7

arena_get.exit.us:                                ; preds = %bb.c
  switch i32 %.041.us, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
  ]

bb.d:                                             ; preds = %arena_get.exit.us
  tail call void @duckdb_je_arena_prefork0(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread.us

bb.e:                                             ; preds = %arena_get.exit.us
  tail call void @duckdb_je_arena_prefork1(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread.us

bb.f:                                             ; preds = %arena_get.exit.us
  tail call void @duckdb_je_arena_prefork2(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread.us

bb.g:                                             ; preds = %arena_get.exit.us
  tail call void @duckdb_je_arena_prefork3(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread.us

bb.h:                                             ; preds = %arena_get.exit.us
  tail call void @duckdb_je_arena_prefork4(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread.us

bb.i:                                             ; preds = %arena_get.exit.us
  tail call void @duckdb_je_arena_prefork5(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread.us

bb.j:                                             ; preds = %arena_get.exit.us
  tail call void @duckdb_je_arena_prefork6(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread.us

bb.k:                                             ; preds = %arena_get.exit.us
  tail call void @duckdb_je_arena_prefork7(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread.us

bb.l:                                             ; preds = %arena_get.exit.us
  tail call void @duckdb_je_arena_prefork8(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread.us

default.unreachable:                              ; preds = %arena_get.exit.us
  unreachable

arena_get.exit.thread.us:                         ; preds = %bb.c, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

._crit_edge.us:                                   ; preds = %arena_get.exit.thread.us
  %i.j = add nuw nsw i32 %.041.us, 1              ; 2 uses
  %exitcond44.not = icmp eq i32 %i.j, 9
  br i1 %exitcond44.not, label %.split.us, label %.preheader.us

.split.us:                                        ; preds = %._crit_edge.us, %tsd_fetch_impl.exit
  tail call void @duckdb_je_prof_prefork1(ptr noundef %.0.i) #21
  tail call void @duckdb_je_stats_prefork(ptr noundef %.0.i) #21
  tail call void @duckdb_je_tsd_prefork(ptr noundef %.0.i) #21
  ret void
}

declare void @duckdb_je_witness_prefork(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_ctl_prefork(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_tcache_prefork(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_malloc_mutex_prefork(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_background_thread_prefork0(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_prof_prefork0(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_background_thread_prefork1(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_arena_prefork0(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_arena_prefork1(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_arena_prefork2(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_arena_prefork3(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_arena_prefork4(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_arena_prefork5(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_arena_prefork6(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_arena_prefork7(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_arena_prefork8(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_prof_prefork1(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_stats_prefork(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_tsd_prefork(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @duckdb_je_jemalloc_postfork_parent() #2 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 824
  %i.c = load i8, ptr %i.b, align 8, !tbaa !10
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #21
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 9 uses
  tail call void @duckdb_je_tsd_postfork_parent(ptr noundef %.0.i) #21
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 2624
  tail call void @duckdb_je_witness_postfork_parent(ptr noundef nonnull %i.e) #21
  tail call void @duckdb_je_stats_postfork_parent(ptr noundef %.0.i) #21
  %i.f = load atomic i32, ptr @narenas_total acquire, align 4 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %tsd_fetch_impl.exit
  %wide.trip.count = zext i32 %i.f to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %arena_get.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %arena_get.exit.thread ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %arena_get.exit.thread, label %arena_get.exit, !prof !7

arena_get.exit:                                   ; preds = %.lr.ph
  tail call void @duckdb_je_arena_postfork_parent(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread

arena_get.exit.thread:                            ; preds = %.lr.ph, %arena_get.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %arena_get.exit.thread, %tsd_fetch_impl.exit
  tail call void @duckdb_je_prof_postfork_parent(ptr noundef %.0.i) #21
  tail call void @duckdb_je_background_thread_postfork_parent(ptr noundef %.0.i) #21
  tail call void @duckdb_je_malloc_mutex_postfork_parent(ptr noundef %.0.i, ptr noundef nonnull @duckdb_je_arenas_lock) #21
  tail call void @duckdb_je_tcache_postfork_parent(ptr noundef %.0.i) #21
  tail call void @duckdb_je_ctl_postfork_parent(ptr noundef %.0.i) #21
  ret void
}

declare void @duckdb_je_tsd_postfork_parent(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_witness_postfork_parent(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_stats_postfork_parent(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_arena_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_prof_postfork_parent(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_background_thread_postfork_parent(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_malloc_mutex_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_tcache_postfork_parent(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_ctl_postfork_parent(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @duckdb_je_jemalloc_postfork_child() #2 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @duckdb_je_tsd_tls) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 824
  %i.c = load i8, ptr %i.b, align 8, !tbaa !10
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @duckdb_je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #21
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 9 uses
  tail call void @duckdb_je_tsd_postfork_child(ptr noundef %.0.i) #21
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 2624
  tail call void @duckdb_je_witness_postfork_child(ptr noundef nonnull %i.e) #21
  tail call void @duckdb_je_stats_postfork_child(ptr noundef %.0.i) #21
  %i.f = load atomic i32, ptr @narenas_total acquire, align 4 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %tsd_fetch_impl.exit
  %wide.trip.count = zext i32 %i.f to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %arena_get.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %arena_get.exit.thread ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %indvars.iv
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %arena_get.exit.thread, label %arena_get.exit, !prof !7

arena_get.exit:                                   ; preds = %.lr.ph
  tail call void @duckdb_je_arena_postfork_child(ptr noundef %.0.i, ptr noundef nonnull %i.h) #21
  br label %arena_get.exit.thread

arena_get.exit.thread:                            ; preds = %.lr.ph, %arena_get.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %arena_get.exit.thread, %tsd_fetch_impl.exit
  tail call void @duckdb_je_prof_postfork_child(ptr noundef %.0.i) #21
  tail call void @duckdb_je_background_thread_postfork_child(ptr noundef %.0.i) #21
  tail call void @duckdb_je_malloc_mutex_postfork_child(ptr noundef %.0.i, ptr noundef nonnull @duckdb_je_arenas_lock) #21
  tail call void @duckdb_je_tcache_postfork_child(ptr noundef %.0.i) #21
  tail call void @duckdb_je_ctl_postfork_child(ptr noundef %.0.i) #21
  ret void
}

declare void @duckdb_je_tsd_postfork_child(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_witness_postfork_child(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_stats_postfork_child(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_arena_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_prof_postfork_child(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_background_thread_postfork_child(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_malloc_mutex_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_tcache_postfork_child(ptr noundef) local_unnamed_addr #5

declare void @duckdb_je_ctl_postfork_child(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @malloc_init_hard_a0() unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #21
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %atomic_store_b.exit.i

atomic_store_b.exit.i:                            ; preds = %bb.a
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @init_lock) #21
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %atomic_store_b.exit.i, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 56), align 8, !tbaa !24
  %i.c = add i64 %i.b, 1
end_hunk_0
