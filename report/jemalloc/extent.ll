Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/extent?download=true
begin_hunk_0_@extent_commit_impl:tsdn_witness_tsdp_get.exit
; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_extent_boot() local_unnamed_addr #1 {
bb.a:
  tail call void @je_extent_dss_boot() #9
  ret i1 false
}

declare void @je_extent_dss_boot() local_unnamed_addr #3

declare void @je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #5

declare i64 @je_eset_npages_get(ptr noundef) local_unnamed_addr #3

declare void @je_eset_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare void @je_emap_deregister_boundary(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @je_emap_try_acquire_edata_neighbor_expand(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @je_emap_release_edata(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @je_eset_fit(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @extents_abandon_vm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) unnamed_addr #1 {
atomic_fetch_add_zu.exit:
  %i.a = getelementptr i8, ptr %4, i64 16         ; 2 uses
  %.val16 = load i64, ptr %i.a, align 8, !tbaa !41
  %i.b = and i64 %.val16, -4096                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 62208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = atomicrmw add ptr %i.e, i64 %i.b monotonic, align 8 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 19424
  %i.h = load i32, ptr %i.g, align 8, !tbaa !40
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.a, label %bb.c

bb.a:                                             ; preds = %atomic_fetch_add_zu.exit
  %i.j = tail call fastcc zeroext i1 @extent_purge_lazy_impl(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4, i64 noundef 0, i64 noundef %i.b)
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.a, align 8, !tbaa !41
  %i.k = and i64 %.val, -4096
  %i.l = tail call fastcc zeroext i1 @extent_purge_forced_impl(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4, i64 noundef 0, i64 noundef %i.k) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %atomic_fetch_add_zu.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 58376
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  tail call void @je_edata_cache_put(ptr noundef %0, ptr noundef %i.n, ptr noundef nonnull %4) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @extent_handle_huge_arena_thp(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef range(i64 2097152, 0) %3) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = and i64 %i.a, 2097151                    ; 2 uses
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.c ; 3 uses
  %i.e = add i64 %3, 2097151                      ; 2 uses
  %i.f = getelementptr i8, ptr %2, i64 %i.e
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, 2097151
  %i.i = sub i64 %i.e, %i.h
  %gepdiff = add i64 %i.i, %i.b                   ; 3 uses
  %i.j = load i32, ptr @je_opt_metadata_thp, align 4, !tbaa !88
  %i.k = icmp eq i32 %i.j, 2
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 120), align 8, !range !43
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call zeroext i1 @je_pages_huge(ptr noundef nonnull %i.d, i64 noundef %gepdiff) #9 ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.o = tail call ptr @je_edata_cache_get(ptr noundef %0, ptr noundef %1) #9 ; 12 uses
  %i.p = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 80)) #9
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.d

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.c
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 72) monotonic, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 8)) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %malloc_mutex_trylock_final.exit.i
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 64), align 8, !tbaa !14
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 64), align 8, !tbaa !14
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 56), align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.s, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 56), align 8, !tbaa !21
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 48), align 8, !tbaa !22
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 48), align 8, !tbaa !22
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.e, %bb.f
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 120), align 8, !tbaa !89, !range !43, !noundef !44
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %malloc_mutex_lock.exit
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 72) monotonic, align 8
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 80)) #9 ; 0 uses
  %i.y = tail call zeroext i1 @je_pages_huge(ptr noundef nonnull %i.d, i64 noundef %gepdiff) #9 ; 0 uses
  %.not38 = icmp eq ptr %i.o, null
  br i1 %.not38, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @je_edata_cache_put(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.o) #9
  br label %bb.m

bb.i:                                             ; preds = %malloc_mutex_lock.exit
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.d, ptr %i.z, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !41
  %i.ac = and i64 %i.ab, 4095
  %i.ad = or i64 %i.ac, %gepdiff
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 3 uses
  store ptr %i.o, ptr %i.ae, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 4 uses
  store ptr %i.o, ptr %i.af, align 8, !tbaa !41
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 128), align 8, !tbaa !70 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %edata_list_active_append.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !41
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 128), align 8, !tbaa !70
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store ptr %i.o, ptr %i.al, align 8, !tbaa !41
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41
  store ptr %i.ao, ptr %i.af, align 8, !tbaa !41
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 128), align 8, !tbaa !70 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !41
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store ptr %i.o, ptr %i.au, align 8, !tbaa !41
  %.pre.i = load ptr, ptr %i.ae, align 8, !tbaa !41
  br label %edata_list_active_append.exit

edata_list_active_append.exit:                    ; preds = %bb.j, %bb.k
  %i.av = phi ptr [ %.pre.i, %bb.k ], [ %i.o, %bb.j ]
  store ptr %i.av, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 128), align 8, !tbaa !70
  %i.aw = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 124), i32 1 monotonic, align 4 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %edata_list_active_append.exit, %bb.i
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 72) monotonic, align 8
  %i.ax = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 80)) #9 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h, %bb.g, %bb.b
  ret void
}

declare zeroext i1 @je_pages_huge(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @extent_try_coalesce_impl(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %6) unnamed_addr #1 {
bb.a:
  store i8 0, ptr %6, align 1, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 58368 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 19424 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 19432 ; 3 uses
  br label %.outer

.outer:                                           ; preds = %.loopexit, %bb.a
  %.055.ph = phi ptr [ %.358.ph, %.loopexit ], [ %4, %bb.a ] ; 9 uses
  %i.e = getelementptr i8, ptr %.055.ph, i64 16   ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.outer
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.g = load i32, ptr %i.b, align 8, !tbaa !40
  %i.h = tail call ptr @je_emap_try_acquire_edata_neighbor(ptr noundef %0, ptr noundef %i.f, ptr noundef %.055.ph, i32 noundef 0, i32 noundef %i.g, i1 noundef zeroext true) #9 ; 8 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.backedge
  %.055.val73 = load i64, ptr %i.e, align 8, !tbaa !41
  %i.i = and i64 %.055.val73, -4096
  %spec.select = tail call i64 @llvm.usub.sat.i64(i64 %5, i64 %i.i)
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %.val71 = load i64, ptr %i.j, align 8, !tbaa !41
  %i.k = and i64 %.val71, -4096
  %i.l = icmp ugt i64 %i.k, %spec.select
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.n = load i32, ptr %i.b, align 8, !tbaa !40
  tail call void @je_emap_release_edata(ptr noundef %0, ptr noundef %i.m, ptr noundef nonnull %i.h, i32 noundef %i.n) #9
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @je_eset_remove(ptr noundef nonnull %i.c, ptr noundef nonnull %i.h) #9
  %i.o = tail call fastcc zeroext i1 @extent_merge_impl(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef %2, ptr noundef nonnull %.055.ph, ptr noundef nonnull %i.h)
  br i1 %i.o, label %extent_coalesce.exit.thread, label %extent_coalesce.exit

extent_coalesce.exit.thread:                      ; preds = %bb.d
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.p = load i32, ptr %i.b, align 8, !tbaa !40
  tail call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %.val.i, ptr noundef nonnull %i.h, i32 noundef %i.p) #9
  %.val.i.i.i = load i64, ptr %i.h, align 8, !tbaa !48
  %i.q = and i64 %.val.i.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.q, 0
  %.v.i.i.i = select i1 %.not.i.i.i, i64 112, i64 9768
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %.v.i.i.i
  tail call void @je_eset_insert(ptr noundef nonnull %i.r, ptr noundef nonnull %i.h) #9
  br label %bb.e

extent_coalesce.exit:                             ; preds = %bb.d
  %i.s = load i8, ptr %i.d, align 8, !tbaa !42, !range !43, !noundef !44
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %extent_coalesce.exit.thread, %extent_coalesce.exit, %bb.c, %.backedge
  %.061 = phi i1 [ false, %bb.c ], [ false, %extent_coalesce.exit.thread ], [ false, %.backedge ], [ true, %extent_coalesce.exit ] ; 3 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.v = load i32, ptr %i.b, align 8, !tbaa !40
  %i.w = tail call ptr @je_emap_try_acquire_edata_neighbor(ptr noundef %0, ptr noundef %i.u, ptr noundef nonnull %.055.ph, i32 noundef 0, i32 noundef %i.v, i1 noundef zeroext false) #9 ; 10 uses
  %.not69 = icmp eq ptr %i.w, null
  br i1 %.not69, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.055.val70 = load i64, ptr %i.e, align 8, !tbaa !41
  %i.x = and i64 %.055.val70, -4096
  %spec.select87 = tail call i64 @llvm.usub.sat.i64(i64 %5, i64 %i.x)
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %.val = load i64, ptr %i.y, align 8, !tbaa !41
  %i.z = and i64 %.val, -4096
  %i.aa = icmp ugt i64 %i.z, %spec.select87
  br i1 %i.aa, label %.split, label %bb.g

.split:                                           ; preds = %bb.f
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !40
  tail call void @je_emap_release_edata(ptr noundef %0, ptr noundef %i.ab, ptr noundef nonnull %i.w, i32 noundef %i.ac) #9
  br i1 %.061, label %.backedge.backedge, label %.loopexit88

bb.g:                                             ; preds = %bb.f
  tail call void @je_eset_remove(ptr noundef nonnull %i.c, ptr noundef nonnull %i.w) #9
  %i.ad = tail call fastcc zeroext i1 @extent_merge_impl(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef %2, ptr noundef nonnull %i.w, ptr noundef nonnull %.055.ph)
  br i1 %i.ad, label %extent_coalesce.exit78.thread, label %extent_coalesce.exit78

extent_coalesce.exit78.thread:                    ; preds = %bb.g
  %.val.i74 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ae = load i32, ptr %i.b, align 8, !tbaa !40
  tail call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %.val.i74, ptr noundef nonnull %i.w, i32 noundef %i.ae) #9
  %.val.i.i.i75 = load i64, ptr %i.w, align 8, !tbaa !48
  %i.af = and i64 %.val.i.i.i75, 65536
  %.not.i.i.i76 = icmp eq i64 %i.af, 0
  %.v.i.i.i77 = select i1 %.not.i.i.i76, i64 112, i64 9768
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %.v.i.i.i77
  tail call void @je_eset_insert(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.w) #9
  br i1 %.061, label %.backedge.backedge, label %.loopexit88

.backedge.backedge:                               ; preds = %extent_coalesce.exit78.thread, %.split
  br label %.backedge, !llvm.loop !90

extent_coalesce.exit78:                           ; preds = %bb.g
  %i.ah = load i8, ptr %i.d, align 8, !tbaa !42, !range !43, !noundef !44
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.sink.split, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %extent_coalesce.exit78
  %.364.ph = phi i1 [ true, %extent_coalesce.exit78 ], [ %.061, %bb.e ]
  %.358.ph = phi ptr [ %i.w, %extent_coalesce.exit78 ], [ %.055.ph, %bb.e ] ; 2 uses
  br i1 %.364.ph, label %.outer, label %.loopexit88, !llvm.loop !90

.loopexit88:                                      ; preds = %.loopexit, %.split, %extent_coalesce.exit78.thread
  %.358.ph86 = phi ptr [ %.055.ph, %.split ], [ %.055.ph, %extent_coalesce.exit78.thread ], [ %.358.ph, %.loopexit ] ; 2 uses
  %i.aj = load i8, ptr %i.d, align 8, !tbaa !42, !range !43, !noundef !44
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.sink.split, label %bb.h

.sink.split:                                      ; preds = %extent_coalesce.exit78, %extent_coalesce.exit, %.loopexit88
  %.sink = phi i8 [ 1, %extent_coalesce.exit ], [ 0, %.loopexit88 ], [ 1, %extent_coalesce.exit78 ]
  %.3.ph.a = phi ptr [ %.055.ph, %extent_coalesce.exit ], [ %.358.ph86, %.loopexit88 ], [ %i.w, %extent_coalesce.exit78 ]
  store i8 %.sink, ptr %6, align 1, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %.loopexit88
  %.3 = phi ptr [ %.358.ph86, %.loopexit88 ], [ %.3.ph.a, %.sink.split ]
  ret ptr %.3
}

declare ptr @je_emap_try_acquire_edata_neighbor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare i64 @je_pac_decay_ms_get(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @je_ehooks_default_alloc_impl(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @je_tsd_fetch_slow(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

declare void @je_tsd_slow_update(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @je_emap_register_boundary(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @je_san_unguard_pages(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare zeroext i1 @je_ehooks_default_dalloc_impl(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @je_ehooks_default_purge_forced_impl(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @je_ehooks_default_purge_lazy_impl(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @je_ehooks_default_destroy_impl(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @je_ehooks_default_decommit_impl(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @je_emap_split_prepare(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @je_emap_split_commit(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @je_ehooks_default_split_impl() local_unnamed_addr #3

declare void @je_emap_merge_prepare(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_emap_merge_commit(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @je_ehooks_default_merge_impl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @je_ehooks_default_commit_impl(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @je_ehooks_default_zero_impl(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"_Bool", !10, i64 0}
!14 = !{!15, !17, i64 56}
!15 = !{!"", !16, i64 0, !16, i64 8, !17, i64 16, !17, i64 24, !9, i64 32, !18, i64 36, !17, i64 40, !19, i64 48, !17, i64 56}
!16 = !{!"", !17, i64 0}
!17 = !{!"long", !10, i64 0}
!18 = !{!"", !9, i64 0}
!19 = !{!"p1 _ZTS6tsdn_s", !20, i64 0}
!20 = !{!"any pointer", !10, i64 0}
!21 = !{!15, !19, i64 48}
!22 = !{!15, !17, i64 40}
!23 = !{!24, !33, i64 58368}
!24 = !{!"pac_s", !25, i64 0, !26, i64 40, !26, i64 19480, !26, i64 38920, !32, i64 58360, !33, i64 58368, !34, i64 58376, !35, i64 58384, !27, i64 58392, !36, i64 58504, !16, i64 58624, !37, i64 58632, !37, i64 60416, !38, i64 62200, !39, i64 62208, !16, i64 62216}
!25 = !{!"pai_s", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32}
!26 = !{!"ecache_s", !27, i64 0, !28, i64 112, !28, i64 9768, !9, i64 19424, !9, i64 19428, !13, i64 19432}
!27 = !{!"malloc_mutex_s", !10, i64 0}
!28 = !{!"eset_s", !10, i64 0, !10, i64 32, !10, i64 6432, !29, i64 9632, !16, i64 9640, !9, i64 9648}
!29 = !{!"", !30, i64 0}
!30 = !{!"", !31, i64 0}
!31 = !{!"p1 _ZTS7edata_s", !20, i64 0}
!32 = !{!"p1 _ZTS6base_s", !20, i64 0}
!33 = !{!"p1 _ZTS6emap_s", !20, i64 0}
!34 = !{!"p1 _ZTS13edata_cache_s", !20, i64 0}
!35 = !{!"exp_grow_s", !9, i64 0, !9, i64 4}
!36 = !{!"san_bump_alloc_s", !27, i64 0, !31, i64 112}
!37 = !{!"decay_s", !27, i64 0, !13, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !17, i64 144, !16, i64 152, !17, i64 160, !17, i64 168, !10, i64 176, !17, i64 1776}
!38 = !{!"p1 _ZTS14malloc_mutex_s", !20, i64 0}
!39 = !{!"p1 _ZTS11pac_stats_s", !20, i64 0}
!40 = !{!26, !9, i64 19424}
!41 = !{!10, !10, i64 0}
!42 = !{!26, !13, i64 19432}
!43 = !{i8 0, i8 2}
!44 = !{}
!45 = !{!46, !20, i64 8}
!46 = !{!"edata_s", !17, i64 0, !20, i64 8, !10, i64 16, !47, i64 24, !17, i64 32, !10, i64 40, !10, i64 64}
!47 = !{!"p1 _ZTS8hpdata_s", !20, i64 0}
!48 = !{!46, !17, i64 0}
!49 = !{!24, !39, i64 62208}
!50 = !{!24, !34, i64 58376}
!51 = !{!35, !9, i64 0}
!52 = !{!17, !17, i64 0}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!56, !9, i64 0}
!56 = !{!"ehooks_s", !9, i64 0, !57, i64 8}
!57 = !{!"", !20, i64 0}
!58 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!59 = !{!60, !20, i64 0}
!60 = !{!"extent_hooks_s", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64}
!61 = distinct !{null, null, null}
!62 = !{!26, !9, i64 19428}
!63 = !{!46, !17, i64 32}
!64 = !{!35, !9, i64 4}
!65 = !{!66, !13, i64 0}
!66 = !{!"pac_thp_s", !13, i64 0, !27, i64 8, !13, i64 120, !18, i64 124, !29, i64 128}
!67 = !{!"branch_weights", i32 2000, i32 2002}
!68 = distinct !{null}
!69 = distinct !{!69, !54}
!70 = !{!29, !31, i64 0}
!71 = !{!60, !20, i64 8}
!72 = distinct !{null, null}
!73 = !{!60, !20, i64 32}
!74 = distinct !{null, null}
!75 = !{!60, !20, i64 48}
!76 = distinct !{null}
!77 = !{!60, !20, i64 40}
!78 = distinct !{null}
!79 = distinct !{null}
!80 = !{!60, !20, i64 16}
!81 = distinct !{null}
!82 = !{!60, !20, i64 56}
!83 = distinct !{null}
!84 = !{!60, !20, i64 64}
!85 = distinct !{null}
!86 = !{!60, !20, i64 24}
!87 = distinct !{null}
!88 = !{!9, !9, i64 0}
!89 = !{!66, !13, i64 120}
!90 = distinct !{!90, !54}
end_hunk_0
