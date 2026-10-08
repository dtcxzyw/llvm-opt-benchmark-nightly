Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/extent?download=true
inline.NumInlined: 294
inline.NumDeleted: 93
begin_hunk_0_@je_extent_commit_zero:tsdn_witness_tsdp_get.exit
  %i.e = and i64 %.val19, 32768
  %.not22 = icmp eq i64 %i.e, 0
  br i1 %.not22, label %bb.e, label %ehooks_zero.exit

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %2, i64 8
  %.val18 = load ptr, ptr %i.f, align 8, !tbaa !50 ; 2 uses
  %i.g = ptrtoint ptr %.val18 to i64
  %i.h = and i64 %i.g, 4095
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds i8, ptr %.val18, i64 %i.i ; 2 uses
  %i.k = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.k, align 8, !tbaa !44
  %i.l = and i64 %.val, -4096                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load atomic ptr, ptr %i.m acquire, align 8
  %i.o = icmp eq ptr %i.n, @je_ehooks_default_extent_hooks
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @je_ehooks_default_zero_impl(ptr noundef %i.j, i64 noundef range(i64 0, -4095) %i.l) #9
  br label %ehooks_zero.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.j, i8 0, i64 range(i64 0, -4095) %i.l, i1 false)
  br label %ehooks_zero.exit

ehooks_zero.exit:                                 ; preds = %bb.g, %bb.f, %bb.b, %bb.c, %bb.d
  %.0 = phi i1 [ %i.d, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.g ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @extent_commit_impl(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef range(i64 0, -4095) %3) unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 8
  %.val11 = load ptr, ptr %i.b, align 8, !tbaa !50 ; 2 uses
  %i.c = ptrtoint ptr %.val11 to i64
  %i.d = and i64 %i.c, 4095
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr inbounds i8, ptr %.val11, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.g, align 8, !tbaa !44
  %i.h = and i64 %.val, -4096
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load atomic ptr, ptr %i.i acquire, align 8 ; 3 uses
  %i.k = icmp eq ptr %i.j, @je_ehooks_default_extent_hooks
  br i1 %i.k, label %.split.i, label %bb.a

.split.i:                                         ; preds = %tsdn_witness_tsdp_get.exit
  %i.l = tail call zeroext i1 @je_ehooks_default_commit_impl(ptr noundef %i.f, i64 noundef 0, i64 noundef range(i64 0, -4095) %3) #9
  br label %ehooks_commit.exit

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !87
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %ehooks_commit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %tsd_fetch_impl.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.p = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 920
  %i.r = load i8, ptr %i.q, align 8, !tbaa !44
  %.not.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i, label %tsd_fetch_impl.exit.i.i, label %bb.d, !prof !59

bb.d:                                             ; preds = %bb.c
  %i.s = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.p, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i.i

tsd_fetch_impl.exit.i.i:                          ; preds = %bb.d, %bb.c, %bb.b
  %i.t = phi ptr [ %i.p, %bb.c ], [ %i.s, %bb.d ], [ %0, %bb.b ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 920
  %i.v = load i8, ptr %i.u, align 8, !tbaa !44
  %i.w = icmp eq i8 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !44
  %i.z = add i8 %i.y, 1
  store i8 %i.z, ptr %i.x, align 1, !tbaa !44
  br i1 %i.w, label %bb.e, label %ehooks_pre_reentrancy.exit.i

bb.e:                                             ; preds = %tsd_fetch_impl.exit.i.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.t) #9
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.e, %tsd_fetch_impl.exit.i.i
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !87
  %.val.i = load i32, ptr %1, align 8, !tbaa !58
  %i.ab = tail call zeroext i1 %i.aa(ptr noundef %i.j, ptr noundef %i.f, i64 noundef range(i64 0, -4095) %i.h, i64 noundef 0, i64 noundef range(i64 0, -4095) %3, i32 noundef %.val.i) #9, !inline_history !86 ; 2 uses
  br i1 %i.a, label %bb.f, label %tsd_fetch_impl.exit.i19.i

bb.f:                                             ; preds = %ehooks_pre_reentrancy.exit.i
  %i.ac = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 920
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !44
  %.not.i.i20.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i20.i, label %tsd_fetch_impl.exit.i19.i, label %bb.g, !prof !59

bb.g:                                             ; preds = %bb.f
  %i.af = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ac, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i19.i

tsd_fetch_impl.exit.i19.i:                        ; preds = %bb.g, %bb.f, %ehooks_pre_reentrancy.exit.i
  %i.ag = phi ptr [ %i.ac, %bb.f ], [ %i.af, %bb.g ], [ %0, %ehooks_pre_reentrancy.exit.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !44
  %i.aj = add i8 %i.ai, -1                        ; 2 uses
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !44
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %.split24.i, label %ehooks_commit.exit

.split24.i:                                       ; preds = %tsd_fetch_impl.exit.i19.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.ag) #9
  br label %ehooks_commit.exit

ehooks_commit.exit:                               ; preds = %.split.i, %bb.a, %tsd_fetch_impl.exit.i19.i, %.split24.i
  %.0.shrunk22.i = phi i1 [ %i.l, %.split.i ], [ %i.ab, %.split24.i ], [ true, %bb.a ], [ %i.ab, %tsd_fetch_impl.exit.i19.i ] ; 2 uses
  %.val12 = load i64, ptr %2, align 8, !tbaa !51  ; 2 uses
  %i.al = and i64 %.val12, 8192
  %i.am = icmp eq i64 %i.al, 0
  %.not13 = select i1 %i.am, i1 %.0.shrunk22.i, i1 false
  %i.an = and i64 %.val12, -8193
  %i.ao = select i1 %.not13, i64 0, i64 8192
  %i.ap = or disjoint i64 %i.ao, %i.an
  store i64 %i.ap, ptr %2, align 8, !tbaa !51
  ret i1 %.0.shrunk22.i
}

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
  %.val16 = load i64, ptr %i.a, align 8, !tbaa !44
  %i.b = and i64 %.val16, -4096                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 62208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = atomicrmw add ptr %i.e, i64 %i.b monotonic, align 8 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 19424
  %i.h = load i32, ptr %i.g, align 8, !tbaa !43
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.a, label %bb.c

bb.a:                                             ; preds = %atomic_fetch_add_zu.exit
  %i.j = tail call fastcc zeroext i1 @extent_purge_lazy_impl(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4, i64 noundef 0, i64 noundef %i.b)
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.a, align 8, !tbaa !44
  %i.k = and i64 %.val, -4096
  %i.l = tail call fastcc zeroext i1 @extent_purge_forced_impl(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4, i64 noundef 0, i64 noundef %i.k) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %atomic_fetch_add_zu.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 58376
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53
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
  %4 = sub i64 %i.e, %i.h
  %gepdiff = add i64 %4, %i.b                     ; 3 uses
  %i.i = load i32, ptr @je_opt_metadata_thp, align 4, !tbaa !88
  %i.j = icmp eq i32 %i.i, 2
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 120), align 8, !range !46
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %i.j, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call zeroext i1 @je_pages_huge(ptr noundef nonnull %i.d, i64 noundef %gepdiff) #9 ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.n = tail call ptr @je_edata_cache_get(ptr noundef %0, ptr noundef %1) #9 ; 12 uses
  %i.o = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 80)) #9
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.d

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.c
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 72) monotonic, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 8)) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %malloc_mutex_trylock_final.exit.i
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 64), align 8, !tbaa !23
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 64), align 8, !tbaa !23
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 56), align 8, !tbaa !24
  %.not.i.i = icmp eq ptr %i.r, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 56), align 8, !tbaa !24
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 48), align 8, !tbaa !25
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 48), align 8, !tbaa !25
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.e, %bb.f
  %i.u = load i8, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 120), align 8, !tbaa !89, !range !46, !noundef !47
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.i

bb.g:                                             ; preds = %malloc_mutex_lock.exit
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 72) monotonic, align 8
  %i.w = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 80)) #9 ; 0 uses
  %i.x = tail call zeroext i1 @je_pages_huge(ptr noundef nonnull %i.d, i64 noundef %gepdiff) #9 ; 0 uses
  %.not38 = icmp eq ptr %i.n, null
  br i1 %.not38, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @je_edata_cache_put(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.n) #9
  br label %bb.m

bb.i:                                             ; preds = %malloc_mutex_lock.exit
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.d, ptr %i.y, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !44
  %i.ab = and i64 %i.aa, 4095
  %i.ac = or i64 %i.ab, %gepdiff
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 3 uses
  store ptr %i.n, ptr %i.ad, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 4 uses
  store ptr %i.n, ptr %i.ae, align 8, !tbaa !44
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 128), align 8, !tbaa !65 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %edata_list_active_append.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !44
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !44
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 128), align 8, !tbaa !65
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store ptr %i.n, ptr %i.ak, align 8, !tbaa !44
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  store ptr %i.an, ptr %i.ae, align 8, !tbaa !44
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 128), align 8, !tbaa !65 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !44
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store ptr %i.n, ptr %i.at, align 8, !tbaa !44
  %.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !44
  br label %edata_list_active_append.exit

edata_list_active_append.exit:                    ; preds = %bb.j, %bb.k
  %i.au = phi ptr [ %.pre.i, %bb.k ], [ %i.n, %bb.j ]
  store ptr %i.au, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 128), align 8, !tbaa !65
  %i.av = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 124), i32 1 monotonic, align 4 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %edata_list_active_append.exit, %bb.i
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 72) monotonic, align 8
  %i.aw = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_huge_arena_pac_thp, i64 80)) #9 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h, %bb.g, %bb.b
  ret void
}

declare zeroext i1 @je_pages_huge(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @extent_try_coalesce_impl(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %6) unnamed_addr #1 {
bb.a:
  store i8 0, ptr %6, align 1, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 58368 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 19424 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 19432 ; 3 uses
  br label %.outer

.outer:                                           ; preds = %.loopexit, %bb.a
  %.061.ph = phi ptr [ %.364.ph, %.loopexit ], [ %4, %bb.a ] ; 9 uses
  %i.e = getelementptr i8, ptr %.061.ph, i64 16   ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.outer
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.g = load i32, ptr %i.b, align 8, !tbaa !43
  %i.h = tail call ptr @je_emap_try_acquire_edata_neighbor(ptr noundef %0, ptr noundef %i.f, ptr noundef %.061.ph, i32 noundef 0, i32 noundef %i.g, i1 noundef zeroext true) #9 ; 8 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.backedge
  %.061.val73 = load i64, ptr %i.e, align 8, !tbaa !44
  %i.i = and i64 %.061.val73, -4096
  %spec.select = tail call i64 @llvm.usub.sat.i64(i64 %5, i64 %i.i)
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %.val71 = load i64, ptr %i.j, align 8, !tbaa !44
  %i.k = and i64 %.val71, -4096
  %i.l = icmp ugt i64 %i.k, %spec.select
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.n = load i32, ptr %i.b, align 8, !tbaa !43
  tail call void @je_emap_release_edata(ptr noundef %0, ptr noundef %i.m, ptr noundef nonnull %i.h, i32 noundef %i.n) #9
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @je_eset_remove(ptr noundef nonnull %i.c, ptr noundef nonnull %i.h) #9
  %i.o = tail call fastcc zeroext i1 @extent_merge_impl(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef %2, ptr noundef nonnull %.061.ph, ptr noundef nonnull %i.h)
  br i1 %i.o, label %extent_coalesce.exit.thread, label %extent_coalesce.exit

extent_coalesce.exit.thread:                      ; preds = %bb.d
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.p = load i32, ptr %i.b, align 8, !tbaa !43
  tail call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %.val.i, ptr noundef nonnull %i.h, i32 noundef %i.p) #9
  %.val.i.i.i = load i64, ptr %i.h, align 8, !tbaa !51
  %i.q = and i64 %.val.i.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.q, 0
  %.v.i.i.i = select i1 %.not.i.i.i, i64 112, i64 9768
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %.v.i.i.i
  tail call void @je_eset_insert(ptr noundef nonnull %i.r, ptr noundef nonnull %i.h) #9
  br label %bb.e

extent_coalesce.exit:                             ; preds = %bb.d
  %i.s = load i8, ptr %i.d, align 8, !tbaa !45, !range !46, !noundef !47
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %extent_coalesce.exit.thread, %extent_coalesce.exit, %bb.c, %.backedge
  %.055 = phi i1 [ false, %bb.c ], [ false, %extent_coalesce.exit.thread ], [ false, %.backedge ], [ true, %extent_coalesce.exit ] ; 3 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.v = load i32, ptr %i.b, align 8, !tbaa !43
  %i.w = tail call ptr @je_emap_try_acquire_edata_neighbor(ptr noundef %0, ptr noundef %i.u, ptr noundef nonnull %.061.ph, i32 noundef 0, i32 noundef %i.v, i1 noundef zeroext false) #9 ; 10 uses
  %.not69 = icmp eq ptr %i.w, null
  br i1 %.not69, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.061.val70 = load i64, ptr %i.e, align 8, !tbaa !44
  %i.x = and i64 %.061.val70, -4096
  %spec.select87 = tail call i64 @llvm.usub.sat.i64(i64 %5, i64 %i.x)
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %.val = load i64, ptr %i.y, align 8, !tbaa !44
  %i.z = and i64 %.val, -4096
  %i.aa = icmp ugt i64 %i.z, %spec.select87
  br i1 %i.aa, label %.split, label %bb.g

.split:                                           ; preds = %bb.f
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !43
  tail call void @je_emap_release_edata(ptr noundef %0, ptr noundef %i.ab, ptr noundef nonnull %i.w, i32 noundef %i.ac) #9
  br i1 %.055, label %.backedge.backedge, label %.loopexit88

bb.g:                                             ; preds = %bb.f
end_hunk_0
