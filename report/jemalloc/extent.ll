Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/extent?download=true
inline.NumInlined: 294
inline.NumDeleted: 93
begin_hunk_0_@extent_recycle:tsdn_witness_tsdp_get.exit

malloc_mutex_lock.exit:                           ; preds = %bb.b, %bb.c
  %.v.i = select i1 %9, i64 9768, i64 112
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %.v.i ; 2 uses
  %.not.i43 = icmp eq ptr %4, null
  br i1 %.not.i43, label %bb.g, label %bb.d

bb.d:                                             ; preds = %malloc_mutex_lock.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 58368 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 19424 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !43
  %i.q = tail call ptr @je_emap_try_acquire_edata_neighbor_expand(ptr noundef %0, ptr noundef %i.n, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %i.p) #9 ; 4 uses
  %.not36.i = icmp eq ptr %i.q, null
  br i1 %.not36.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %.val.i = load i64, ptr %i.r, align 8, !tbaa !44
  %i.s = and i64 %.val.i, -4096
  %i.t = icmp ult i64 %i.s, %5
  br i1 %i.t, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.v = load i32, ptr %i.o, align 8, !tbaa !43
  tail call void @je_emap_release_edata(ptr noundef %0, ptr noundef %i.u, ptr noundef nonnull %i.q, i32 noundef %i.v) #9
  br label %bb.h

bb.g:                                             ; preds = %malloc_mutex_lock.exit
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 19432
  %i.x = load i8, ptr %i.w, align 8, !tbaa !45, !range !46, !noundef !47
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = load i64, ptr @je_opt_lg_extent_max_active_fit, align 8
  %i.aa = trunc i64 %i.z to i32
  %i.ab = select i1 %i.y, i32 %i.aa, i32 64
  %i.ac = tail call ptr @je_eset_fit(ptr noundef nonnull %i.l, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %9, i32 noundef %i.ab) #9 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 64
  store atomic i8 0, ptr %i.ae monotonic, align 8
  %i.af = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #9 ; 0 uses
  br label %bb.ah

bb.i:                                             ; preds = %bb.g, %bb.e
  %.0334.i = phi ptr [ %i.ac, %bb.g ], [ %i.q, %bb.e ] ; 8 uses
  tail call void @je_eset_remove(ptr noundef nonnull %i.l, ptr noundef nonnull %.0334.i) #9
  %i.ag = getelementptr i8, ptr %1, i64 58368     ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !42
  tail call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %i.ah, ptr noundef nonnull %.0334.i, i32 noundef 0) #9
  %i.ai = getelementptr i8, ptr %.0334.i, i64 8
  %.val49.i.i = load ptr, ptr %i.ai, align 8, !tbaa !50 ; 2 uses
  %i.aj = ptrtoint ptr %.val49.i.i to i64
  %i.ak = and i64 %i.aj, 4095
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds i8, ptr %.val49.i.i, i64 %i.al
  %i.an = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ao = add i64 %6, 4095
  %i.ap = and i64 %i.ao, -4096                    ; 2 uses
  %i.aq = add i64 %i.ap, -1
  %i.ar = add i64 %i.aq, %i.an
  %i.as = sub i64 0, %i.ap
  %i.at = and i64 %i.ar, %i.as                    ; 2 uses
  %i.au = sub i64 %i.at, %i.an                    ; 3 uses
  %i.av = getelementptr i8, ptr %.0334.i, i64 16
  %.val47.i.i = load i64, ptr %i.av, align 8, !tbaa !44
  %i.aw = and i64 %.val47.i.i, -4096              ; 2 uses
  %i.ax = add i64 %i.au, %5
  %i.ay = icmp ult i64 %i.aw, %i.ax
  br i1 %i.ay, label %extent_recycle_split.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = sub i64 %i.aw, %i.au                    ; 3 uses
  %i.ba = sub i64 %i.az, %5
  %.not.i.i44 = icmp eq i64 %i.at, %i.an
  br i1 %.not.i.i44, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = tail call fastcc ptr @extent_split_impl(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef %2, ptr noundef nonnull %.0334.i, i64 noundef %i.au, i64 noundef %i.az) ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.thread38.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.043.i = phi ptr [ %.0334.i, %bb.j ], [ %i.bb, %bb.k ] ; 13 uses
  %.042.i = phi ptr [ null, %bb.j ], [ %.0334.i, %bb.k ] ; 6 uses
  %.not46.i.i = icmp eq i64 %i.az, %5
  br i1 %.not46.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = tail call fastcc ptr @extent_split_impl(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef %2, ptr noundef nonnull %.043.i, i64 noundef %5, i64 noundef %i.ba) ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %extent_split_interior.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.116.ph.i = phi ptr [ %i.bd, %bb.m ], [ null, %bb.l ] ; 4 uses
  %.not33.i = icmp eq ptr %.042.i, null
  br i1 %.not33.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val35.i = load ptr, ptr %i.ag, align 8, !tbaa !42
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 19424
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !43
  tail call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %.val35.i, ptr noundef nonnull %.042.i, i32 noundef %i.bg) #9
  %.val.i.i.i = load i64, ptr %.042.i, align 8, !tbaa !51
  %i.bh = and i64 %.val.i.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.bh, 0
  %.v.i.i.i = select i1 %.not.i.i.i, i64 112, i64 9768
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 %.v.i.i.i
  tail call void @je_eset_insert(ptr noundef nonnull %i.bi, ptr noundef nonnull %.042.i) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not34.i = icmp eq ptr %.116.ph.i, null
  br i1 %.not34.i, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val.i45 = load ptr, ptr %i.ag, align 8, !tbaa !42
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 19424
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !43
  tail call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %.val.i45, ptr noundef nonnull %.116.ph.i, i32 noundef %i.bk) #9
  %.val.i.i38.i = load i64, ptr %.116.ph.i, align 8, !tbaa !51
  %i.bl = and i64 %.val.i.i38.i, 65536
  %.not.i.i39.i = icmp eq i64 %i.bl, 0
  %.v.i.i40.i = select i1 %.not.i.i39.i, i64 112, i64 9768
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 %.v.i.i40.i
  tail call void @je_eset_insert(ptr noundef nonnull %i.bm, ptr noundef nonnull %.116.ph.i) #9
  br label %bb.x

extent_split_interior.exit.i:                     ; preds = %bb.m
  %.not.i47 = icmp eq ptr %.042.i, null
  br i1 %.not.i47, label %.thread38.i, label %bb.r

bb.r:                                             ; preds = %extent_split_interior.exit.i
  %.val36.i = load ptr, ptr %i.ag, align 8, !tbaa !42
  tail call void @je_emap_deregister_boundary(ptr noundef %0, ptr noundef %.val36.i, ptr noundef nonnull %.042.i) #9
  br label %.thread38.i

.thread38.i:                                      ; preds = %bb.r, %extent_split_interior.exit.i, %bb.k
  %.1142841.i = phi ptr [ %.0334.i, %bb.k ], [ %.043.i, %bb.r ], [ %.043.i, %extent_split_interior.exit.i ] ; 5 uses
  %.val37.i = load ptr, ptr %i.ag, align 8, !tbaa !42
  tail call void @je_emap_deregister_boundary(ptr noundef %0, ptr noundef %.val37.i, ptr noundef nonnull %.1142841.i) #9
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store atomic i8 0, ptr %i.bn monotonic, align 8
  %i.bo = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.bp = getelementptr i8, ptr %.1142841.i, i64 16 ; 2 uses
  %.val16.i.i = load i64, ptr %i.bp, align 8, !tbaa !44
  %i.bq = and i64 %.val16.i.i, -4096              ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 62208
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !52
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bu = atomicrmw add ptr %i.bt, i64 %i.bq monotonic, align 8 ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 19424
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !43
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.s, label %extents_abandon_vm.exit.i

bb.s:                                             ; preds = %.thread38.i
  %i.by = tail call fastcc zeroext i1 @extent_purge_lazy_impl(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %.1142841.i, i64 noundef 0, i64 noundef %i.bq)
  br i1 %i.by, label %bb.t, label %extents_abandon_vm.exit.i

bb.t:                                             ; preds = %bb.s
  %.val.i.i = load i64, ptr %i.bp, align 8, !tbaa !44
  %i.bz = and i64 %.val.i.i, -4096
  %i.ca = tail call fastcc zeroext i1 @extent_purge_forced_impl(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %.1142841.i, i64 noundef 0, i64 noundef %i.bz) ; 0 uses
  br label %extents_abandon_vm.exit.i

extents_abandon_vm.exit.i:                        ; preds = %bb.t, %bb.s, %.thread38.i
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 58376
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !53
  tail call void @je_edata_cache_put(ptr noundef %0, ptr noundef %i.cc, ptr noundef nonnull %.1142841.i) #9
  %i.cd = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.a) #9
  %.not.i41.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i41.i, label %malloc_mutex_trylock_final.exit.i.i, label %bb.u

malloc_mutex_trylock_final.exit.i.i:              ; preds = %extents_abandon_vm.exit.i
  store atomic i8 1, ptr %i.bn monotonic, align 8
  br label %bb.v

bb.u:                                             ; preds = %extents_abandon_vm.exit.i
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %3) #9
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %malloc_mutex_trylock_final.exit.i.i
  %i.ce = load i64, ptr %i.d, align 8, !tbaa !23
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.d, align 8, !tbaa !23
  %i.cg = load ptr, ptr %i.g, align 8, !tbaa !24
  %.not.i.i42.i = icmp eq ptr %i.cg, %0
  br i1 %.not.i.i42.i, label %extent_recycle_split.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %0, ptr %i.g, align 8, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !25
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !25
  br label %extent_recycle_split.exit.thread

extent_recycle_split.exit.thread:                 ; preds = %bb.w, %bb.v, %bb.i
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 64
  store atomic i8 0, ptr %i.ck monotonic, align 8
  %i.cl = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #9 ; 0 uses
  br label %bb.ah

bb.x:                                             ; preds = %bb.q, %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 64
  store atomic i8 0, ptr %i.cm monotonic, align 8
  %i.cn = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.co = load i8, ptr %8, align 1, !tbaa !16, !range !46, !noundef !47
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %.val20.i = load i64, ptr %.043.i, align 8, !tbaa !51
  %i.cq = and i64 %.val20.i, 8192
  %.not21.i = icmp eq i64 %i.cq, 0
  br i1 %.not21.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr i8, ptr %.043.i, i64 16
  %.val17.i = load i64, ptr %i.cr, align 8, !tbaa !44
  %i.cs = and i64 %.val17.i, -4096
  %i.ct = tail call fastcc zeroext i1 @extent_commit_impl(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %.043.i, i64 noundef %i.cs) ; 2 uses
  %.not.i50 = xor i1 %7, true
  %brmerge.i = or i1 %i.ct, %.not.i50
  br i1 %brmerge.i, label %je_extent_commit_zero.exit, label %bb.ab

bb.aa:                                            ; preds = %bb.y, %bb.x
  br i1 %7, label %bb.ab, label %je_extent_commit_zero.exit.thread

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.val19.i = load i64, ptr %.043.i, align 8, !tbaa !51
  %i.cu = and i64 %.val19.i, 32768
  %.not22.i = icmp eq i64 %i.cu, 0
  br i1 %.not22.i, label %bb.ac, label %je_extent_commit_zero.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cv = getelementptr i8, ptr %.043.i, i64 8
  %.val18.i = load ptr, ptr %i.cv, align 8, !tbaa !50 ; 2 uses
  %i.cw = ptrtoint ptr %.val18.i to i64
  %i.cx = and i64 %i.cw, 4095
  %i.cy = sub nsw i64 0, %i.cx
  %i.cz = getelementptr inbounds i8, ptr %.val18.i, i64 %i.cy ; 2 uses
  %i.da = getelementptr i8, ptr %.043.i, i64 16
  %.val.i49 = load i64, ptr %i.da, align 8, !tbaa !44
  %i.db = and i64 %.val.i49, -4096                ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dd = load atomic ptr, ptr %i.dc acquire, align 8
  %i.de = icmp eq ptr %i.dd, @je_ehooks_default_extent_hooks
  br i1 %i.de, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @je_ehooks_default_zero_impl(ptr noundef %i.cz, i64 noundef range(i64 0, -4095) %i.db) #9
  br label %je_extent_commit_zero.exit.thread

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cz, i8 0, i64 range(i64 0, -4095) %i.db, i1 false)
  br label %je_extent_commit_zero.exit.thread

je_extent_commit_zero.exit:                       ; preds = %bb.z
  br i1 %i.ct, label %bb.af, label %je_extent_commit_zero.exit.thread

bb.af:                                            ; preds = %je_extent_commit_zero.exit
  tail call void @je_extent_record(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %.043.i)
  br label %bb.ah

je_extent_commit_zero.exit.thread:                ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.aa, %je_extent_commit_zero.exit
  %.val = load i64, ptr %.043.i, align 8, !tbaa !51
  %i.df = and i64 %.val, 8192
  %.not = icmp eq i64 %i.df, 0
  br i1 %.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %je_extent_commit_zero.exit.thread
  store i8 1, ptr %8, align 1, !tbaa !16
  br label %bb.ah

bb.ah:                                            ; preds = %extent_recycle_split.exit.thread, %je_extent_commit_zero.exit.thread, %bb.ag, %bb.af, %bb.h
  %.0 = phi ptr [ null, %bb.h ], [ null, %extent_recycle_split.exit.thread ], [ null, %bb.af ], [ %.043.i, %bb.ag ], [ %.043.i, %je_extent_commit_zero.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden ptr @je_ecache_alloc_grow(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8) local_unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = icmp eq ptr %0, null                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i8 1, ptr %i.c, align 1, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 58464 ; 5 uses
  %i.f = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.e) #9
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %malloc_mutex_trylock_final.exit.i.i, label %bb.a

malloc_mutex_trylock_final.exit.i.i:              ; preds = %tsdn_witness_tsdp_get.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 58456
  store atomic i8 1, ptr %i.g monotonic, align 1
  br label %bb.b

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 58392
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.h) #9
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %malloc_mutex_trylock_final.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 58448 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 58440 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  %.not.i.i.i = icmp eq ptr %i.m, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.l, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 58432 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !25
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 38920 ; 6 uses
  %i.r = call fastcc ptr @extent_recycle(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.q, ptr noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7, ptr noundef nonnull %i.c, i1 noundef zeroext %8) ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.d, label %extent_alloc_retained.exit.thread28

extent_alloc_retained.exit.thread28:              ; preds = %malloc_mutex_lock.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 58456
  store atomic i8 0, ptr %i.s monotonic, align 8
  %i.t = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #9 ; 0 uses
  br label %bb.aw

bb.d:                                             ; preds = %malloc_mutex_lock.exit.i
  %i.u = load i8, ptr @je_opt_retain, align 1, !tbaa !16, !range !46, !noundef !47
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = icmp eq ptr %4, null                     ; 2 uses
  %or.cond.i = and i1 %i.w, %i.v
  %or.cond.not.i = xor i1 %or.cond.i, true
  %or.cond3.i = or i1 %8, %or.cond.not.i
  br i1 %or.cond3.i, label %extent_alloc_retained.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.x = add i64 %6, 4095
  %i.y = and i64 %i.x, -4096                      ; 3 uses
  %i.z = add i64 %5, -4096
  %i.aa = add i64 %i.z, %i.y                      ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %5
  br i1 %i.ab, label %extent_alloc_retained.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 58384 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !70 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %i.ae = trunc i64 %indvars.iv.i.i to i32        ; 2 uses
  %i.af = add i32 %i.ad, %i.ae
  %.pn.i.i.i = zext i32 %i.af to i64
  %storemerge.in.i.i.i = getelementptr inbounds nuw [8 x i8], ptr @je_sz_pind2sz_tab, i64 %.pn.i.i.i
  %storemerge.i.i.i = load i64, ptr %storemerge.in.i.i.i, align 8, !tbaa !54 ; 6 uses
  %i.ag = icmp ult i64 %storemerge.i.i.i, %i.aa
  br i1 %i.ag, label %bb.h, label %exp_grow_size_prepare.exit.i.i

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %i.ah = add i32 %i.ad, %indvars.i.i
  %i.ai = icmp ugt i32 %i.ah, 197
  br i1 %i.ai, label %extent_alloc_retained.exit, label %bb.g, !llvm.loop !68

exp_grow_size_prepare.exit.i.i:                   ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 58376 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !53
  %i.al = tail call ptr @je_edata_cache_get(ptr noundef %0, ptr noundef %i.ak) #9 ; 14 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %extent_alloc_retained.exit, label %bb.i

bb.i:                                             ; preds = %exp_grow_size_prepare.exit.i.i
  store i8 0, ptr %i.a, align 1, !tbaa !16
  store i8 0, ptr %i.b, align 1, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ao = load atomic ptr, ptr %i.an acquire, align 8 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, @je_ehooks_default_extent_hooks
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.val26.i.i.i = load i32, ptr %2, align 8, !tbaa !58
  %i.aq = call ptr @je_ehooks_default_alloc_impl(ptr noundef %0, ptr noundef null, i64 noundef %storemerge.i.i.i, i64 noundef 4096, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.val26.i.i.i) #9
  br label %ehooks_alloc.exit.i.i

end_hunk_0
