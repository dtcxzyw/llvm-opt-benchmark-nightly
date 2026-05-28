inline.NumInlined: 275
inline.NumDeleted: 91
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.extent_hooks_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tsd_s = type { i8, i8, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i64, i64, i64, ptr, ptr, %struct.ticker_geom_s, i8, %struct.tsd_binshards_s, %struct.tsd_link_t, i8, %struct.peak_s, %struct.activity_callback_thunk_s, %struct.tcache_slow_s, %struct.rtree_ctx_s, %struct.atomic_u8_t, i64, i64, i64, i64, %struct.tcache_s, %struct.witness_tsd_s }
%struct.ticker_geom_s = type { i32, i32 }
%struct.tsd_binshards_s = type { [39 x i8] }
%struct.tsd_link_t = type { ptr, ptr }
%struct.peak_s = type { i64, i64 }
%struct.activity_callback_thunk_s = type { ptr, ptr }
%struct.tcache_slow_s = type { %struct.anon.2, %struct.cache_bin_array_descriptor_s, ptr, i32, [39 x i8], [39 x i8], [39 x i8], ptr, ptr }
%struct.anon.2 = type { ptr, ptr }
%struct.cache_bin_array_descriptor_s = type { %struct.anon.3, ptr }
%struct.anon.3 = type { ptr, ptr }
%struct.rtree_ctx_s = type { [16 x %struct.rtree_ctx_cache_elm_s], [8 x %struct.rtree_ctx_cache_elm_s] }
%struct.rtree_ctx_cache_elm_s = type { i64, ptr }
%struct.atomic_u8_t = type { i8 }
%struct.tcache_s = type { ptr, [76 x %struct.cache_bin_s] }
%struct.cache_bin_s = type { ptr, %struct.cache_bin_stats_s, i16, i16, i16 }
%struct.cache_bin_stats_s = type { i64 }
%struct.witness_tsd_s = type { %struct.witness_list_t, i8 }
%struct.witness_list_t = type { ptr }
%struct.emap_prepare_s = type { ptr, ptr, ptr, ptr }

@je_opt_lg_extent_max_active_fit = hidden local_unnamed_addr global i64 6, align 8
@je_opt_retain = external local_unnamed_addr global i8, align 1
@je_sz_pind2sz_tab = external local_unnamed_addr global [200 x i64], align 16
@je_ehooks_default_extent_hooks = external constant %struct.extent_hooks_s, align 8
@je_tsd_tls = external thread_local(initialexec) global %struct.tsd_s, align 8

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden i64 @je_extent_sn_next(ptr noundef captures(none) %0) local_unnamed_addr #0 {
atomic_fetch_add_zu.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 62232
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_ecache_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8) local_unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 1, ptr %i.a, align 1, !tbaa !11
  %i.b = call fastcc ptr @extent_recycle(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7, ptr noundef %i.a, i1 noundef zeroext %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @extent_recycle(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7, ptr noundef nonnull captures(none) %8, i1 noundef zeroext %9) unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.a) #9
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %3) #9
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 104
  store atomic i8 1, ptr %i.c monotonic, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %tsdn_witness_tsdp_get.exit
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.h, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.g, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !21
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.b, %bb.c
  %.v.i = select i1 %9, i64 9768, i64 112
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %.v.i ; 2 uses
  %.not.i43 = icmp eq ptr %4, null
  br i1 %.not.i43, label %bb.g, label %bb.d

bb.d:                                             ; preds = %malloc_mutex_lock.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 58384 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 19424 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  %i.q = tail call ptr @je_emap_try_acquire_edata_neighbor_expand(ptr noundef %0, ptr noundef %i.n, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %i.p) #9 ; 4 uses
  %.not36.i = icmp eq ptr %i.q, null
  br i1 %.not36.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %.val.i = load i64, ptr %i.r, align 8, !tbaa !40
  %i.s = and i64 %.val.i, -4096
  %i.t = icmp ult i64 %i.s, %5
  br i1 %i.t, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.v = load i32, ptr %i.o, align 8, !tbaa !39
  tail call void @je_emap_release_edata(ptr noundef %0, ptr noundef %i.u, ptr noundef nonnull %i.q, i32 noundef %i.v) #9
  br label %bb.h

bb.g:                                             ; preds = %malloc_mutex_lock.exit
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 19432
  %i.x = load i8, ptr %i.w, align 8, !tbaa !41, !range !42, !noundef !43
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = load i64, ptr @je_opt_lg_extent_max_active_fit, align 8
  %i.aa = trunc i64 %i.z to i32
  %i.ab = select i1 %i.y, i32 %i.aa, i32 64
  %i.ac = tail call ptr @je_eset_fit(ptr noundef nonnull %i.l, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %9, i32 noundef %i.ab) #9 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 104
  store atomic i8 0, ptr %i.ae monotonic, align 8
  %i.af = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #9 ; 0 uses
  br label %bb.ah

bb.i:                                             ; preds = %bb.g, %bb.e
  %.0334.i = phi ptr [ %i.ac, %bb.g ], [ %i.q, %bb.e ] ; 8 uses
  tail call void @je_eset_remove(ptr noundef nonnull %i.l, ptr noundef nonnull %.0334.i) #9
  %i.ag = getelementptr i8, ptr %1, i64 58384     ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22
  tail call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %i.ah, ptr noundef nonnull %.0334.i, i32 noundef 0) #9
  %i.ai = getelementptr i8, ptr %.0334.i, i64 8
  %.val49.i.i = load ptr, ptr %i.ai, align 8, !tbaa !44
  %i.aj = ptrtoint ptr %.val49.i.i to i64
  %i.ak = and i64 %i.aj, -4096                    ; 3 uses
  %i.al = add i64 %6, 4095
  %i.am = and i64 %i.al, -4096
  %i.an = add i64 %6, -1
  %i.ao = add i64 %i.an, %i.ak
  %i.ap = sub i64 0, %i.am
  %i.aq = and i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = sub i64 %i.aq, %i.ak                    ; 3 uses
  %i.as = getelementptr i8, ptr %.0334.i, i64 16
  %.val47.i.i = load i64, ptr %i.as, align 8, !tbaa !40
  %i.at = and i64 %.val47.i.i, -4096              ; 2 uses
  %i.au = add i64 %i.ar, %5
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %extent_recycle_split.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = sub i64 %i.at, %i.ar                    ; 3 uses
  %i.ax = sub i64 %i.aw, %5
  %.not.i.i44 = icmp eq i64 %i.aq, %i.ak
  br i1 %.not.i.i44, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = tail call fastcc ptr @extent_split_impl(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef readonly %2, ptr noundef nonnull %.0334.i, i64 noundef %i.ar, i64 noundef %i.aw) ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.thread38.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.043.i = phi ptr [ %.0334.i, %bb.j ], [ %i.ay, %bb.k ] ; 13 uses
  %.042.i = phi ptr [ null, %bb.j ], [ %.0334.i, %bb.k ] ; 6 uses
  %.not46.i.i = icmp eq i64 %i.aw, %5
  br i1 %.not46.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = tail call fastcc ptr @extent_split_impl(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef readonly %2, ptr noundef nonnull %.043.i, i64 noundef %5, i64 noundef %i.ax) ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %extent_split_interior.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.116.ph.i = phi ptr [ %i.ba, %bb.m ], [ null, %bb.l ] ; 4 uses
  %.not33.i = icmp eq ptr %.042.i, null
  br i1 %.not33.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val35.i = load ptr, ptr %i.ag, align 8, !tbaa !22
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 19424
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !39
  tail call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %.val35.i, ptr noundef nonnull %.042.i, i32 noundef %i.bd) #9
  %.val.i.i.i = load i64, ptr %.042.i, align 8, !tbaa !47
  %i.be = and i64 %.val.i.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.be, 0
  %.v.i.i.i = select i1 %.not.i.i.i, i64 112, i64 9768
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 %.v.i.i.i
  tail call void @je_eset_insert(ptr noundef nonnull %i.bf, ptr noundef nonnull %.042.i) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not34.i = icmp eq ptr %.116.ph.i, null
  br i1 %.not34.i, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val.i45 = load ptr, ptr %i.ag, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 19424
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !39
  tail call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %.val.i45, ptr noundef nonnull %.116.ph.i, i32 noundef %i.bh) #9
  %.val.i.i38.i = load i64, ptr %.116.ph.i, align 8, !tbaa !47
  %i.bi = and i64 %.val.i.i38.i, 65536
  %.not.i.i39.i = icmp eq i64 %i.bi, 0
  %.v.i.i40.i = select i1 %.not.i.i39.i, i64 112, i64 9768
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 %.v.i.i40.i
  tail call void @je_eset_insert(ptr noundef nonnull %i.bj, ptr noundef nonnull %.116.ph.i) #9
  br label %bb.x

extent_split_interior.exit.i:                     ; preds = %bb.m
  %.not.i47 = icmp eq ptr %.042.i, null
  br i1 %.not.i47, label %.thread38.i, label %bb.r

bb.r:                                             ; preds = %extent_split_interior.exit.i
  %.val36.i = load ptr, ptr %i.ag, align 8, !tbaa !22
  tail call void @je_emap_deregister_boundary(ptr noundef %0, ptr noundef %.val36.i, ptr noundef nonnull %.042.i) #9
  br label %.thread38.i

.thread38.i:                                      ; preds = %bb.r, %extent_split_interior.exit.i, %bb.k
  %.1142841.i = phi ptr [ %.0334.i, %bb.k ], [ %.043.i, %bb.r ], [ %.043.i, %extent_split_interior.exit.i ] ; 5 uses
  %.val37.i = load ptr, ptr %i.ag, align 8, !tbaa !22
  tail call void @je_emap_deregister_boundary(ptr noundef %0, ptr noundef %.val37.i, ptr noundef nonnull %.1142841.i) #9
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  store atomic i8 0, ptr %i.bk monotonic, align 8
  %i.bl = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.bm = getelementptr i8, ptr %.1142841.i, i64 16 ; 2 uses
  %.val16.i.i = load i64, ptr %i.bm, align 8, !tbaa !40
  %i.bn = and i64 %.val16.i.i, -4096              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 62224
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.br = atomicrmw add ptr %i.bq, i64 %i.bn monotonic, align 8 ; 0 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 19424
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !39
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.s, label %extents_abandon_vm.exit.i

bb.s:                                             ; preds = %.thread38.i
  %i.bv = tail call fastcc zeroext i1 @extent_purge_lazy_impl(ptr noundef %0, ptr noundef readonly %2, ptr noundef nonnull %.1142841.i, i64 noundef 0, i64 noundef %i.bn)
  br i1 %i.bv, label %bb.t, label %extents_abandon_vm.exit.i

bb.t:                                             ; preds = %bb.s
  %.val.i.i = load i64, ptr %i.bm, align 8, !tbaa !40
  %i.bw = and i64 %.val.i.i, -4096
  %i.bx = tail call fastcc zeroext i1 @extent_purge_forced_impl(ptr noundef %0, ptr noundef readonly %2, ptr noundef nonnull %.1142841.i, i64 noundef 0, i64 noundef %i.bw) ; 0 uses
  br label %extents_abandon_vm.exit.i

extents_abandon_vm.exit.i:                        ; preds = %bb.t, %bb.s, %.thread38.i
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 58392
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !49
  tail call void @je_edata_cache_put(ptr noundef %0, ptr noundef %i.bz, ptr noundef nonnull %.1142841.i) #9
  %i.ca = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.a) #9
  %.not.i41.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i41.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %extents_abandon_vm.exit.i
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %3) #9
  store atomic i8 1, ptr %i.bk monotonic, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %extents_abandon_vm.exit.i
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !13
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr %i.d, align 8, !tbaa !13
  %i.cd = load ptr, ptr %i.g, align 8, !tbaa !20
  %.not.i.i42.i = icmp eq ptr %i.cd, %0
  br i1 %.not.i.i42.i, label %extent_recycle_split.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %0, ptr %i.g, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !21
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !21
  br label %extent_recycle_split.exit.thread

extent_recycle_split.exit.thread:                 ; preds = %bb.v, %bb.w, %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 104
  store atomic i8 0, ptr %i.ch monotonic, align 8
  %i.ci = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #9 ; 0 uses
  br label %bb.ah

bb.x:                                             ; preds = %bb.q, %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 104
  store atomic i8 0, ptr %i.cj monotonic, align 8
  %i.ck = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.cl = load i8, ptr %8, align 1, !tbaa !11, !range !42, !noundef !43
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %.val20.i = load i64, ptr %.043.i, align 8, !tbaa !47
  %i.cn = and i64 %.val20.i, 8192
  %.not21.i = icmp eq i64 %i.cn, 0
  br i1 %.not21.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr i8, ptr %.043.i, i64 16
  %.val17.i = load i64, ptr %i.co, align 8, !tbaa !40
  %i.cp = and i64 %.val17.i, -4096
  %i.cq = tail call fastcc zeroext i1 @extent_commit_impl(ptr noundef %0, ptr noundef readonly %2, ptr noundef nonnull %.043.i, i64 noundef 0, i64 noundef %i.cp) ; 2 uses
  %.not.i50 = xor i1 %7, true
  %brmerge.i = or i1 %i.cq, %.not.i50
  br i1 %brmerge.i, label %je_extent_commit_zero.exit, label %bb.ab

bb.aa:                                            ; preds = %bb.y, %bb.x
  br i1 %7, label %bb.ab, label %je_extent_commit_zero.exit.thread

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.val19.i = load i64, ptr %.043.i, align 8, !tbaa !47
  %i.cr = and i64 %.val19.i, 32768
  %.not22.i = icmp eq i64 %i.cr, 0
  br i1 %.not22.i, label %bb.ac, label %je_extent_commit_zero.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cs = getelementptr i8, ptr %.043.i, i64 8
  %.val18.i = load ptr, ptr %i.cs, align 8, !tbaa !44
  %i.ct = ptrtoint ptr %.val18.i to i64
  %i.cu = and i64 %i.ct, -4096
  %i.cv = inttoptr i64 %i.cu to ptr               ; 2 uses
  %i.cw = getelementptr i8, ptr %.043.i, i64 16
  %.val.i49 = load i64, ptr %i.cw, align 8, !tbaa !40
  %i.cx = and i64 %.val.i49, -4096                ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cz = load atomic ptr, ptr %i.cy acquire, align 8
  %i.da = icmp eq ptr %i.cz, @je_ehooks_default_extent_hooks
  br i1 %i.da, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @je_ehooks_default_zero_impl(ptr noundef %i.cv, i64 noundef range(i64 0, -4095) %i.cx) #9
  br label %je_extent_commit_zero.exit.thread

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.memset.p0.i64(ptr align 4096 %i.cv, i8 0, i64 range(i64 0, -4095) %i.cx, i1 false)
  br label %je_extent_commit_zero.exit.thread

je_extent_commit_zero.exit:                       ; preds = %bb.z
  br i1 %i.cq, label %bb.af, label %je_extent_commit_zero.exit.thread

bb.af:                                            ; preds = %je_extent_commit_zero.exit
  tail call void @je_extent_record(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %.043.i)
  br label %bb.ah

je_extent_commit_zero.exit.thread:                ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.aa, %je_extent_commit_zero.exit
  %.val = load i64, ptr %.043.i, align 8, !tbaa !47
  %i.db = and i64 %.val, 8192
  %.not = icmp eq i64 %i.db, 0
  br i1 %.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %je_extent_commit_zero.exit.thread
  store i8 1, ptr %8, align 1, !tbaa !11
  br label %bb.ah

bb.ah:                                            ; preds = %extent_recycle_split.exit.thread, %je_extent_commit_zero.exit.thread, %bb.ag, %bb.af, %bb.h
  %.0 = phi ptr [ null, %bb.h ], [ null, %extent_recycle_split.exit.thread ], [ null, %bb.af ], [ %.043.i, %bb.ag ], [ %.043.i, %je_extent_commit_zero.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden ptr @je_ecache_alloc_grow(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readnone captures(none) %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8) local_unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = icmp eq ptr %0, null                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i8 1, ptr %i.c, align 1, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 58472 ; 5 uses
  %i.f = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.e) #9
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 58408
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.g) #9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 58512
  store atomic i8 1, ptr %i.h monotonic, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %tsdn_witness_tsdp_get.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 58464 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 58456 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %.not.i.i.i = icmp eq ptr %i.m, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.l, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 58448 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !21
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 38936 ; 6 uses
  %i.r = call fastcc ptr @extent_recycle(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.q, ptr noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7, ptr noundef nonnull %i.c, i1 noundef zeroext %8) ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.d, label %extent_alloc_retained.exit.thread28

extent_alloc_retained.exit.thread28:              ; preds = %malloc_mutex_lock.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 58512
  store atomic i8 0, ptr %i.s monotonic, align 8
  %i.t = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #9 ; 0 uses
  br label %bb.at

bb.d:                                             ; preds = %malloc_mutex_lock.exit.i
  %i.u = load i8, ptr @je_opt_retain, align 1, !tbaa !11, !range !42, !noundef !43
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
  %i.y = and i64 %i.x, -4096                      ; 2 uses
  %i.z = add i64 %5, -4096
  %i.aa = add i64 %i.z, %i.y                      ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %5
  br i1 %i.ab, label %extent_alloc_retained.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 58400 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !50 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %i.ae = trunc i64 %indvars.iv.i.i to i32        ; 2 uses
  %i.af = add i32 %i.ad, %i.ae
  %.pn.i.i.i = zext i32 %i.af to i64
  %storemerge.in.i.i.i = getelementptr inbounds nuw [8 x i8], ptr @je_sz_pind2sz_tab, i64 %.pn.i.i.i
  %storemerge.i.i.i = load i64, ptr %storemerge.in.i.i.i, align 8, !tbaa !51 ; 4 uses
  %i.ag = icmp ult i64 %storemerge.i.i.i, %i.aa
  br i1 %i.ag, label %bb.h, label %exp_grow_size_prepare.exit.i.i

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %i.ah = add i32 %i.ad, %indvars.i.i
  %i.ai = icmp ugt i32 %i.ah, 197
  br i1 %i.ai, label %extent_alloc_retained.exit, label %bb.g, !llvm.loop !52

exp_grow_size_prepare.exit.i.i:                   ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 58392 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49
  %i.al = tail call ptr @je_edata_cache_get(ptr noundef %0, ptr noundef %i.ak) #9 ; 14 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %extent_alloc_retained.exit, label %bb.i

bb.i:                                             ; preds = %exp_grow_size_prepare.exit.i.i
  store i8 0, ptr %i.a, align 1, !tbaa !11
  store i8 0, ptr %i.b, align 1, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ao = load atomic ptr, ptr %i.an acquire, align 8 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, @je_ehooks_default_extent_hooks
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.val26.i.i.i = load i32, ptr %2, align 8, !tbaa !54
  %i.aq = call ptr @je_ehooks_default_alloc_impl(ptr noundef %0, ptr noundef null, i64 noundef %storemerge.i.i.i, i64 noundef 4096, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.val26.i.i.i) #9
  br label %ehooks_alloc.exit.i.i

bb.k:                                             ; preds = %bb.i
  br i1 %i.d, label %bb.l, label %tsd_fetch_impl.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ar = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 832
  %i.at = load i8, ptr %i.as, align 8, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i, label %tsd_fetch_impl.exit.i.i.i.i, label %bb.m, !prof !57

bb.m:                                             ; preds = %bb.l
  %i.au = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ar, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i.i.i.i

tsd_fetch_impl.exit.i.i.i.i:                      ; preds = %bb.m, %bb.l, %bb.k
  %i.av = phi ptr [ %i.ar, %bb.l ], [ %i.au, %bb.m ], [ %0, %bb.k ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 832
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !40
  %i.ay = icmp eq i8 %i.ax, 0
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !40
  %i.bb = add i8 %i.ba, 1
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !40
  br i1 %i.ay, label %bb.n, label %ehooks_pre_reentrancy.exit.i.i.i

bb.n:                                             ; preds = %tsd_fetch_impl.exit.i.i.i.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.av) #9
  br label %ehooks_pre_reentrancy.exit.i.i.i

ehooks_pre_reentrancy.exit.i.i.i:                 ; preds = %bb.n, %tsd_fetch_impl.exit.i.i.i.i
  %i.bc = load ptr, ptr %i.ao, align 8, !tbaa !58
  %.val.i.i.i = load i32, ptr %2, align 8, !tbaa !54
  %i.bd = call ptr %i.bc(ptr noundef nonnull %i.ao, ptr noundef null, i64 noundef %storemerge.i.i.i, i64 noundef 4096, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.val.i.i.i) #9, !inline_history !60 ; 2 uses
  br i1 %i.d, label %bb.o, label %tsd_fetch_impl.exit.i27.i.i.i

bb.o:                                             ; preds = %ehooks_pre_reentrancy.exit.i.i.i
  %i.be = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 832
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !40
  %.not.i.i28.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i28.i.i.i, label %tsd_fetch_impl.exit.i27.i.i.i, label %bb.p, !prof !57

bb.p:                                             ; preds = %bb.o
  %i.bh = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.be, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i27.i.i.i

tsd_fetch_impl.exit.i27.i.i.i:                    ; preds = %bb.p, %bb.o, %ehooks_pre_reentrancy.exit.i.i.i
  %i.bi = phi ptr [ %i.be, %bb.o ], [ %i.bh, %bb.p ], [ %0, %ehooks_pre_reentrancy.exit.i.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !40
  %i.bl = add i8 %i.bk, -1                        ; 2 uses
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !40
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.q, label %ehooks_alloc.exit.i.i

bb.q:                                             ; preds = %tsd_fetch_impl.exit.i27.i.i.i
  call void @je_tsd_slow_update(ptr noundef nonnull %i.bi) #9
  br label %ehooks_alloc.exit.i.i

ehooks_alloc.exit.i.i:                            ; preds = %bb.q, %tsd_fetch_impl.exit.i27.i.i.i, %bb.j
  %.0.i.i.i = phi ptr [ %i.aq, %bb.j ], [ %i.bd, %tsd_fetch_impl.exit.i27.i.i.i ], [ %i.bd, %bb.q ] ; 2 uses
  %i.bn = icmp eq ptr %.0.i.i.i, null
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %ehooks_alloc.exit.i.i
  %i.bo = load ptr, ptr %i.aj, align 8, !tbaa !49
  call void @je_edata_cache_put(ptr noundef %0, ptr noundef %i.bo, ptr noundef nonnull %i.al) #9
  br label %extent_alloc_retained.exit

bb.s:                                             ; preds = %ehooks_alloc.exit.i.i
  %i.bp = getelementptr i8, ptr %1, i64 58364
  %.val79.i.i = load i32, ptr %i.bp, align 4, !tbaa !61
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 62232
  %i.br = atomicrmw add ptr %i.bq, i64 1 monotonic, align 8
  %i.bs = load i8, ptr %i.a, align 1, !tbaa !11, !range !42, !noundef !43
  %i.bt = load i8, ptr %i.b, align 1, !tbaa !11, !range !42, !noundef !43
  %i.bu = load i64, ptr %i.al, align 8, !tbaa !47
  %i.bv = and i64 %i.bu, -17592454479872
  %i.bw = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store ptr %.0.i.i.i, ptr %i.bw, align 8, !tbaa !44
  %i.bx = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !40
  %i.bz = and i64 %i.by, 4095
  %i.ca = or i64 %i.bz, %storemerge.i.i.i
  store i64 %i.ca, ptr %i.bx, align 8, !tbaa !40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i64 %i.br, ptr %i.cb, align 8, !tbaa !62
  %i.cc = and i32 %.val79.i.i, -268431361
  %.masked.masked.i.i.i = zext i32 %i.cc to i64
  %i.cd = zext nneg i8 %i.bs to i64
  %i.ce = shl nuw nsw i64 %i.cd, 15
  %i.cf = zext nneg i8 %i.bt to i64
  %i.cg = shl nuw nsw i64 %i.cf, 13
  %i.ch = or disjoint i64 %i.ce, %.masked.masked.i.i.i
  %i.ci = or disjoint i64 %i.ch, %i.cg
  %i.cj = or i64 %i.bv, %i.ci
  %i.ck = or i64 %i.cj, 17592432459776
  store i64 %i.ck, ptr %i.al, align 8, !tbaa !47
  %i.cl = getelementptr i8, ptr %1, i64 58384     ; 2 uses
  %.val80.i.i = load ptr, ptr %i.cl, align 8, !tbaa !22
  %i.cm = call zeroext i1 @je_emap_register_boundary(ptr noundef %0, ptr noundef %.val80.i.i, ptr noundef nonnull %i.al, i32 noundef 235, i1 noundef zeroext false) #9
  br i1 %i.cm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cn = load ptr, ptr %i.aj, align 8, !tbaa !49
  call void @je_edata_cache_put(ptr noundef %0, ptr noundef %i.cn, ptr noundef nonnull %i.al) #9
  br label %extent_alloc_retained.exit

bb.u:                                             ; preds = %bb.s
  %.val77.i.i = load i64, ptr %i.al, align 8, !tbaa !47
  %i.co = and i64 %.val77.i.i, 8192
  %.not138.i.i = icmp eq i64 %i.co, 0
  br i1 %.not138.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %i.c, align 1, !tbaa !11
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.val49.i.i.i = load ptr, ptr %i.bw, align 8, !tbaa !44
  %i.cp = ptrtoint ptr %.val49.i.i.i to i64
  %i.cq = and i64 %i.cp, -4096                    ; 3 uses
  %i.cr = add i64 %6, -1
  %i.cs = add i64 %i.cr, %i.cq
  %i.ct = sub i64 0, %i.y
  %i.cu = and i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = sub i64 %i.cu, %i.cq                    ; 3 uses
  %.val47.i.i.i = load i64, ptr %i.bx, align 8, !tbaa !40
  %i.cw = and i64 %.val47.i.i.i, -4096            ; 2 uses
  %i.cx = add i64 %i.cv, %5
  %i.cy = icmp ult i64 %i.cw, %i.cx
  br i1 %i.cy, label %extent_alloc_retained.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = sub i64 %i.cw, %i.cv                    ; 3 uses
  %i.da = sub i64 %i.cz, %5
  %.not.i.i32.i = icmp eq i64 %i.cu, %i.cq
  br i1 %.not.i.i32.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.db = call fastcc ptr @extent_split_impl(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %2, ptr noundef nonnull %i.al, i64 noundef %i.cv, i64 noundef %i.cz) ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %.thread134.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0148.i.i = phi ptr [ %i.al, %bb.x ], [ %i.db, %bb.y ] ; 11 uses
  %.0147.i.i = phi ptr [ null, %bb.x ], [ %i.al, %bb.y ] ; 4 uses
  %.not46.i.i.i = icmp eq i64 %i.cz, %5
  br i1 %.not46.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dd = call fastcc ptr @extent_split_impl(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %2, ptr noundef nonnull %.0148.i.i, i64 noundef %5, i64 noundef %i.da) ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %extent_split_interior.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1110.ph.i.i = phi ptr [ %i.dd, %bb.aa ], [ null, %bb.z ] ; 2 uses
  %.not71.i.i = icmp eq ptr %.0147.i.i, null
  br i1 %.not71.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @je_extent_record(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.q, ptr noundef nonnull %.0147.i.i)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not72.i.i = icmp eq ptr %.1110.ph.i.i, null
  br i1 %.not72.i.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @je_extent_record(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.q, ptr noundef nonnull %.1110.ph.i.i)
  br label %bb.ag

extent_split_interior.exit.i.i:                   ; preds = %bb.aa
  %.not.i33.i = icmp eq ptr %.0147.i.i, null
  br i1 %.not.i33.i, label %.thread134.i.i, label %bb.af

bb.af:                                            ; preds = %extent_split_interior.exit.i.i
  call void @je_extent_record(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.q, ptr noundef nonnull %.0147.i.i)
  br label %.thread134.i.i

.thread134.i.i:                                   ; preds = %bb.af, %extent_split_interior.exit.i.i, %bb.y
  %.1108125137.i.i = phi ptr [ %i.al, %bb.y ], [ %.0148.i.i, %bb.af ], [ %.0148.i.i, %extent_split_interior.exit.i.i ] ; 2 uses
  %.val78.i.i = load ptr, ptr %i.cl, align 8, !tbaa !22
  call void @je_emap_deregister_boundary(ptr noundef %0, ptr noundef %.val78.i.i, ptr noundef nonnull %.1108125137.i.i) #9
  call fastcc void @extents_abandon_vm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.q, ptr noundef nonnull %.1108125137.i.i)
  br label %extent_alloc_retained.exit

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.df = load i8, ptr %i.c, align 1, !tbaa !11, !range !42, !noundef !43
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %.val76.i.i = load i64, ptr %.0148.i.i, align 8, !tbaa !47
  %i.dh = and i64 %.val76.i.i, 8192
  %.not139.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not139.i.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.di = getelementptr i8, ptr %.0148.i.i, i64 16
  %.val73.i.i = load i64, ptr %i.di, align 8, !tbaa !40
  %i.dj = and i64 %.val73.i.i, -4096
  %i.dk = call fastcc zeroext i1 @extent_commit_impl(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %.0148.i.i, i64 noundef 0, i64 noundef %i.dj)
  br i1 %i.dk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @je_extent_record(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.q, ptr noundef nonnull %.0148.i.i)
  br label %extent_alloc_retained.exit

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.dl = load i32, ptr %i.ac, align 8, !tbaa !50
  %i.dm = add i32 %i.ae, 1
  %i.dn = add i32 %i.dm, %i.dl
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 58404
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !63
  %storemerge.i81.i.i = call i32 @llvm.umin.i32(i32 %i.dn, i32 %i.dp)
  store i32 %storemerge.i81.i.i, ptr %i.ac, align 8, !tbaa !50
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 58512
  store atomic i8 0, ptr %i.dq monotonic, align 8
  %i.dr = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #9 ; 0 uses
  br i1 %7, label %bb.al, label %extent_alloc_retained.exit.thread30

bb.al:                                            ; preds = %bb.ak
  %.val75.i.i = load i64, ptr %.0148.i.i, align 8, !tbaa !47
  %i.ds = and i64 %.val75.i.i, 32768
  %.not140.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not140.i.i, label %bb.am, label %extent_alloc_retained.exit.thread30

bb.am:                                            ; preds = %bb.al
  %i.dt = getelementptr i8, ptr %.0148.i.i, i64 8
  %.val74.i.i = load ptr, ptr %i.dt, align 8, !tbaa !44
  %i.du = ptrtoint ptr %.val74.i.i to i64
  %i.dv = and i64 %i.du, -4096
  %i.dw = inttoptr i64 %i.dv to ptr               ; 2 uses
  %i.dx = getelementptr i8, ptr %.0148.i.i, i64 16
  %.val.i.i = load i64, ptr %i.dx, align 8, !tbaa !40
  %i.dy = and i64 %.val.i.i, -4096                ; 2 uses
  %i.dz = load atomic ptr, ptr %i.an acquire, align 8
  %i.ea = icmp eq ptr %i.dz, @je_ehooks_default_extent_hooks
  br i1 %i.ea, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @je_ehooks_default_zero_impl(ptr noundef %i.dw, i64 noundef range(i64 0, -4095) %i.dy) #9
  br label %extent_alloc_retained.exit.thread30

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr align 4096 %i.dw, i8 0, i64 range(i64 0, -4095) %i.dy, i1 false)
  br label %extent_alloc_retained.exit.thread30

extent_alloc_retained.exit.thread:                ; preds = %bb.d
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 58512
  store atomic i8 0, ptr %i.eb monotonic, align 8
  %i.ec = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #9 ; 0 uses
  br label %bb.ap

extent_alloc_retained.exit.thread30:              ; preds = %bb.ao, %bb.an, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.at

extent_alloc_retained.exit:                       ; preds = %bb.h, %bb.e, %exp_grow_size_prepare.exit.i.i, %bb.r, %bb.t, %bb.w, %.thread134.i.i, %bb.aj
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 58512
  store atomic i8 0, ptr %i.ed monotonic, align 8
  %i.ee = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ap

bb.ap:                                            ; preds = %extent_alloc_retained.exit, %extent_alloc_retained.exit.thread
  %i.ef = load i8, ptr @je_opt_retain, align 1, !tbaa !11, !range !42, !noundef !43
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = icmp ne ptr %4, null
  %or.cond = and i1 %i.eh, %i.eg
  %brmerge = or i1 %8, %or.cond
  br i1 %brmerge, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.w, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ei = getelementptr i8, ptr %4, i64 8
  %.val = load ptr, ptr %i.ei, align 8, !tbaa !44
  %i.ej = getelementptr i8, ptr %4, i64 16
  %.val26 = load i64, ptr %i.ej, align 8, !tbaa !40
  %i.ek = ptrtoint ptr %.val to i64
  %i.el = and i64 %i.ek, -4096
  %i.em = and i64 %.val26, -4096
  %i.en = add i64 %i.em, %i.el
  %i.eo = inttoptr i64 %i.en to ptr
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.ep = phi ptr [ %i.eo, %bb.ar ], [ null, %bb.aq ]
  %i.eq = call ptr @je_extent_alloc_wrapper(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.ep, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7, ptr noundef nonnull %i.c, i1 zeroext poison)
  br label %bb.at

bb.at:                                            ; preds = %extent_alloc_retained.exit.thread30, %extent_alloc_retained.exit.thread28, %bb.ap, %bb.as
  %.0 = phi ptr [ %.0148.i.i, %extent_alloc_retained.exit.thread30 ], [ null, %bb.ap ], [ %i.eq, %bb.as ], [ %i.r, %extent_alloc_retained.exit.thread28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_extent_alloc_wrapper(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, ptr noundef %7, i1 zeroext %8) local_unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = zext i1 %6 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !11
  %i.c = icmp eq ptr %0, null                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 58392 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = tail call ptr @je_edata_cache_get(ptr noundef %0, ptr noundef %i.e) #9 ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.k, label %bb.a

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.h = add i64 %5, 4095
  %i.i = and i64 %i.h, -4096                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load atomic ptr, ptr %i.j acquire, align 8 ; 3 uses
  %i.l = icmp eq ptr %i.k, @je_ehooks_default_extent_hooks
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val26.i = load i32, ptr %2, align 8, !tbaa !54
  %i.m = call ptr @je_ehooks_default_alloc_impl(ptr noundef %0, ptr noundef %3, i64 noundef %4, i64 noundef range(i64 0, -4095) %i.i, ptr noundef nonnull %i.a, ptr noundef %7, i32 noundef %.val26.i) #9
  br label %ehooks_alloc.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.d, label %tsd_fetch_impl.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 832
  %i.p = load i8, ptr %i.o, align 8, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %tsd_fetch_impl.exit.i.i, label %bb.e, !prof !57

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.n, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i.i

tsd_fetch_impl.exit.i.i:                          ; preds = %bb.e, %bb.d, %bb.c
  %i.r = phi ptr [ %i.n, %bb.d ], [ %i.q, %bb.e ], [ %0, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 832
  %i.t = load i8, ptr %i.s, align 8, !tbaa !40
  %i.u = icmp eq i8 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !40
  %i.x = add i8 %i.w, 1
  store i8 %i.x, ptr %i.v, align 1, !tbaa !40
  br i1 %i.u, label %bb.f, label %ehooks_pre_reentrancy.exit.i

bb.f:                                             ; preds = %tsd_fetch_impl.exit.i.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.r) #9
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.f, %tsd_fetch_impl.exit.i.i
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !58
  %.val.i = load i32, ptr %2, align 8, !tbaa !54
  %i.z = call ptr %i.y(ptr noundef nonnull %i.k, ptr noundef %3, i64 noundef %4, i64 noundef range(i64 0, -4095) %i.i, ptr noundef nonnull %i.a, ptr noundef %7, i32 noundef %.val.i) #9, !inline_history !64 ; 2 uses
  br i1 %i.c, label %bb.g, label %tsd_fetch_impl.exit.i27.i

bb.g:                                             ; preds = %ehooks_pre_reentrancy.exit.i
  %i.aa = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 832
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !40
  %.not.i.i28.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i28.i, label %tsd_fetch_impl.exit.i27.i, label %bb.h, !prof !57

bb.h:                                             ; preds = %bb.g
  %i.ad = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.aa, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i27.i

tsd_fetch_impl.exit.i27.i:                        ; preds = %bb.h, %bb.g, %ehooks_pre_reentrancy.exit.i
  %i.ae = phi ptr [ %i.aa, %bb.g ], [ %i.ad, %bb.h ], [ %0, %ehooks_pre_reentrancy.exit.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !40
  %i.ah = add i8 %i.ag, -1                        ; 2 uses
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !40
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %ehooks_alloc.exit

bb.i:                                             ; preds = %tsd_fetch_impl.exit.i27.i
  call void @je_tsd_slow_update(ptr noundef nonnull %i.ae) #9
  br label %ehooks_alloc.exit

ehooks_alloc.exit:                                ; preds = %bb.b, %tsd_fetch_impl.exit.i27.i, %bb.i
  %.0.i = phi ptr [ %i.m, %bb.b ], [ %i.z, %tsd_fetch_impl.exit.i27.i ], [ %i.z, %bb.i ] ; 2 uses
  %i.aj = icmp eq ptr %.0.i, null
  br i1 %i.aj, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %ehooks_alloc.exit
  %i.ak = getelementptr i8, ptr %1, i64 19484
  %.val33 = load i32, ptr %i.ak, align 4, !tbaa !61
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 62232
  %i.am = atomicrmw add ptr %i.al, i64 1 monotonic, align 8
  %i.an = load i8, ptr %i.a, align 1, !tbaa !11, !range !42, !noundef !43
  %i.ao = load i8, ptr %7, align 1, !tbaa !11, !range !42, !noundef !43
  %i.ap = load i8, ptr @je_opt_retain, align 1, !tbaa !11, !range !42, !noundef !43
  %i.aq = load i64, ptr %i.f, align 8, !tbaa !47
  %i.ar = and i64 %i.aq, -17592454479872
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.0.i, ptr %i.as, align 8, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !40
  %i.av = and i64 %i.au, 4095
  %i.aw = or i64 %i.av, %4
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %i.am, ptr %i.ax, align 8, !tbaa !62
  %i.ay = and i32 %.val33, -268431361
  %i.az = zext nneg i8 %i.an to i64
  %i.ba = shl nuw nsw i64 %i.az, 15
  %i.bb = zext nneg i8 %i.ao to i64
  %i.bc = shl nuw nsw i64 %i.bb, 13
  %.not.i = icmp eq i8 %i.ap, 0
  %i.bd = select i1 %.not.i, i64 0, i64 17592186044416
  %i.be = or disjoint i32 %i.ay, 246415360
  %i.bf = zext i32 %i.be to i64
  %i.bg = or disjoint i64 %i.ba, %i.bf
  %i.bh = or disjoint i64 %i.bd, %i.bc
  %i.bi = or disjoint i64 %i.bh, %i.ar
  %i.bj = or i64 %i.bi, %i.bg
  store i64 %i.bj, ptr %i.f, align 8, !tbaa !47
  %i.bk = getelementptr i8, ptr %1, i64 58384
  %.val = load ptr, ptr %i.bk, align 8, !tbaa !22
  %i.bl = call zeroext i1 @je_emap_register_boundary(ptr noundef %0, ptr noundef %.val, ptr noundef nonnull %i.f, i32 noundef 235, i1 noundef zeroext false) #9
  br i1 %i.bl, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.j, %ehooks_alloc.exit
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !49
  call void @je_edata_cache_put(ptr noundef %0, ptr noundef %i.bm, ptr noundef nonnull %i.f) #9
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j, %tsdn_witness_tsdp_get.exit
  %.2 = phi ptr [ null, %tsdn_witness_tsdp_get.exit ], [ %i.f, %bb.j ], [ null, %.sink.split ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define hidden void @je_ecache_dalloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  %i.a = getelementptr i8, ptr %4, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.b = ptrtoint ptr %.val to i64
  %i.c = and i64 %i.b, -4096
  %i.d = inttoptr i64 %i.c to ptr
  store ptr %i.d, ptr %i.a, align 8, !tbaa !44
  %i.e = load i64, ptr %4, align 8, !tbaa !47
  %i.f = and i64 %i.e, -32769
  store i64 %i.f, ptr %4, align 8, !tbaa !47
  tail call void @je_extent_record(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_extent_record(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.c = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.b) #9
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %3) #9
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  store atomic i8 1, ptr %i.d monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.i, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.h, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !21
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %.val35 = load i64, ptr %4, align 8, !tbaa !47
  %i.m = and i64 %.val35, 65536
  %.not39 = icmp eq i64 %i.m, 0
  br i1 %.not39, label %bb.e, label %bb.l

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 19432
  %i.o = load i8, ptr %i.n, align 8, !tbaa !41, !range !42, !noundef !43
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call fastcc ptr @extent_try_coalesce_impl(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null)
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %4, i64 16
  %.val34 = load i64, ptr %i.r, align 8, !tbaa !40
  %i.s = icmp ugt i64 %.val34, 16383
  br i1 %i.s, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.033 = phi ptr [ %4, %bb.h ], [ %i.t, %bb.i ]
  %i.t = call fastcc ptr @extent_try_coalesce_impl(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef nonnull %3, ptr noundef %.033, ptr noundef nonnull %i.a) ; 4 uses
  %i.u = load i8, ptr %i.a, align 1, !tbaa !11, !range !42, !noundef !43
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.i, label %atomic_load_zu.exit, !llvm.loop !65

atomic_load_zu.exit:                              ; preds = %bb.i
  %i.w = getelementptr i8, ptr %i.t, i64 16       ; 2 uses
  %.val = load i64, ptr %i.w, align 8, !tbaa !40
  %i.x = and i64 %.val, -4096
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 58640
  %i.z = load atomic i64, ptr %i.y monotonic, align 8
  %.not = icmp ult i64 %i.x, %i.z
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %atomic_load_zu.exit
  %i.aa = tail call i64 @je_pac_decay_ms_get(ptr noundef nonnull %1, i32 noundef 1) #9
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %.thread, label %extent_may_force_decay.exit

extent_may_force_decay.exit:                      ; preds = %bb.j
  %i.ac = tail call i64 @je_pac_decay_ms_get(ptr noundef nonnull %1, i32 noundef 2) #9
  %.not40 = icmp eq i64 %i.ac, -1
  br i1 %.not40, label %.thread, label %bb.k

.thread:                                          ; preds = %extent_may_force_decay.exit, %atomic_load_zu.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.l

bb.k:                                             ; preds = %extent_may_force_decay.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 104
  store atomic i8 0, ptr %i.ad monotonic, align 8
  %i.ae = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #9 ; 0 uses
  %.val.i = load i64, ptr %i.w, align 8, !tbaa !40 ; 2 uses
  %i.af = and i64 %.val.i, -4096
  tail call void @je_extent_dalloc_wrapper(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.t), !inline_history !66
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 62224 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = atomicrmw add ptr %i.ai, i64 1 monotonic, align 8 ; 0 uses
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = lshr i64 %.val.i, 12
  %i.an = atomicrmw add ptr %i.al, i64 %i.am monotonic, align 8 ; 0 uses
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = atomicrmw sub ptr %i.ap, i64 %i.af monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.m

bb.l:                                             ; preds = %.thread, %bb.f, %bb.g, %malloc_mutex_lock.exit
  %.1 = phi ptr [ %4, %malloc_mutex_lock.exit ], [ %i.t, %.thread ], [ %4, %bb.g ], [ %i.q, %bb.f ] ; 3 uses
  %i.ar = getelementptr i8, ptr %1, i64 58384
  %.val36 = load ptr, ptr %i.ar, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 19424
  %i.at = load i32, ptr %i.as, align 8, !tbaa !39
  tail call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %.val36, ptr noundef %.1, i32 noundef %i.at) #9
  %.val.i.i = load i64, ptr %.1, align 8, !tbaa !47
  %i.au = and i64 %.val.i.i, 65536
  %.not.i.i37 = icmp eq i64 %i.au, 0
  %.v.i.i = select i1 %.not.i.i37, i64 112, i64 9768
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 %.v.i.i
  tail call void @je_eset_insert(ptr noundef nonnull %i.av, ptr noundef nonnull %.1) #9
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 104
  store atomic i8 0, ptr %i.aw monotonic, align 8
  %i.ax = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #9 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_ecache_evict(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.c = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.b) #9
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %3) #9
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  store atomic i8 1, ptr %i.d monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.i, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.h, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !21
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 9744
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 9768 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 19400
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 19432
  %i.r = getelementptr i8, ptr %1, i64 58384      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 19424 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.k, %malloc_mutex_lock.exit
  %.val40 = load ptr, ptr %i.n, align 8, !tbaa !67 ; 2 uses
  %i.t = icmp eq ptr %.val40, null
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val39 = load ptr, ptr %i.p, align 8, !tbaa !67 ; 2 uses
  %i.u = icmp eq ptr %.val39, null
  br i1 %i.u, label %.thread46, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.033 = phi ptr [ %.val39, %bb.f ], [ %.val40, %bb.e ] ; 8 uses
  %.032 = phi ptr [ %i.o, %bb.f ], [ %i.m, %bb.e ]
  %i.v = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.m) #9
  %i.w = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.o) #9
  %i.x = add i64 %i.w, %i.v
  %.not = icmp ugt i64 %i.x, %4
  br i1 %.not, label %bb.h, label %.thread46

bb.h:                                             ; preds = %bb.g
  tail call void @je_eset_remove(ptr noundef nonnull %.032, ptr noundef nonnull %.033) #9
  %i.y = load i8, ptr %i.q, align 8, !tbaa !41, !range !42, !noundef !43
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %.033.val = load i64, ptr %.033, align 8, !tbaa !47
  %i.aa = and i64 %.033.val, 65536
  %.not50 = icmp eq i64 %i.aa, 0
  br i1 %.not50, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !22
  tail call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %i.ab, ptr noundef nonnull %.033, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ac = call fastcc ptr @extent_try_coalesce_impl(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef nonnull %3, ptr noundef nonnull %.033, ptr noundef nonnull %i.a) ; 2 uses
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !22
  %i.ae = load i32, ptr %i.s, align 8, !tbaa !39
  tail call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %i.ad, ptr noundef %i.ac, i32 noundef %i.ae) #9
  %i.af = load i8, ptr %i.a, align 1, !tbaa !11, !range !42, !noundef !43
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.k, label %select.unfold

select.unfold:                                    ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  tail call void @je_eset_insert(ptr noundef nonnull %i.m, ptr noundef %i.ac) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

.loopexit:                                        ; preds = %bb.h, %bb.i, %select.unfold
  %i.ah = load i32, ptr %i.s, align 8, !tbaa !39
  %i.ai = icmp eq i32 %i.ah, 3
  %.val = load ptr, ptr %i.r, align 8, !tbaa !22  ; 2 uses
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit
  tail call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %.val, ptr noundef nonnull %.033, i32 noundef 0) #9
  br label %.thread46

bb.m:                                             ; preds = %.loopexit
  tail call void @je_emap_deregister_boundary(ptr noundef %0, ptr noundef %.val, ptr noundef nonnull %.033) #9
  br label %.thread46

.thread46:                                        ; preds = %bb.g, %bb.f, %bb.l, %bb.m
  %.244 = phi ptr [ %.033, %bb.l ], [ %.033, %bb.m ], [ null, %bb.f ], [ null, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 104
  store atomic i8 0, ptr %i.aj monotonic, align 8
  %i.ak = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #9 ; 0 uses
  ret ptr %.244
}

declare void @je_eset_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_emap_update_edata_state(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define hidden void @je_extent_gdump_add(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #4 {
bb.a:
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @je_extent_dalloc_gap(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  %i.a = getelementptr i8, ptr %1, i64 58384
  %.val = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.b = tail call zeroext i1 @je_emap_register_boundary(ptr noundef %0, ptr noundef %.val, ptr noundef %3, i32 noundef 235, i1 noundef zeroext false) #9
  br i1 %i.b, label %bb.a, label %bb.b

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 58392
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  tail call void @je_edata_cache_put(ptr noundef %0, ptr noundef %i.d, ptr noundef %3) #9
  br label %bb.c

bb.b:                                             ; preds = %tsdn_witness_tsdp_get.exit
  tail call void @je_extent_dalloc_wrapper(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @je_edata_cache_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_extent_dalloc_wrapper(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  %i.a = icmp eq ptr %0, null                     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8
  %i.d = icmp eq ptr %i.c, @je_ehooks_default_extent_hooks
  br i1 %i.d, label %bb.a, label %ehooks_dalloc_will_fail.exit

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.e = load i8, ptr @je_opt_retain, align 1, !tbaa !11, !range !42, !noundef !43
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.o, label %bb.b

ehooks_dalloc_will_fail.exit:                     ; preds = %tsdn_witness_tsdp_get.exit
  %i.g = load atomic ptr, ptr %i.b acquire, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a, %ehooks_dalloc_will_fail.exit
  %.val47 = load i64, ptr %3, align 8, !tbaa !47
  %i.k = and i64 %.val47, 65536
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 58384
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  tail call void @je_san_unguard_pages(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %i.m, i1 noundef zeroext true, i1 noundef zeroext true) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr i8, ptr %1, i64 58384      ; 2 uses
  %.val48 = load ptr, ptr %i.n, align 8, !tbaa !22
  tail call void @je_emap_deregister_boundary(ptr noundef %0, ptr noundef %.val48, ptr noundef nonnull %3) #9
  %i.o = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %.val13.i = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.p = ptrtoint ptr %.val13.i to i64
  %i.q = and i64 %i.p, -4096
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  store ptr %i.r, ptr %i.o, align 8, !tbaa !44
  %i.s = getelementptr i8, ptr %3, i64 16
  %.val.i = load i64, ptr %i.s, align 8, !tbaa !40
  %i.t = and i64 %.val.i, -4096                   ; 2 uses
  %.val14.i = load i64, ptr %3, align 8, !tbaa !47
  %i.u = and i64 %.val14.i, 8192
  %i.v = icmp ne i64 %i.u, 0
  %i.w = load atomic ptr, ptr %i.b acquire, align 8 ; 3 uses
  %i.x = icmp eq ptr %i.w, @je_ehooks_default_extent_hooks
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = tail call zeroext i1 @je_ehooks_default_dalloc_impl(ptr noundef %i.r, i64 noundef range(i64 0, -4095) %i.t) #9
  br i1 %i.y, label %bb.n, label %extent_dalloc_wrapper_try.exit

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !68
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.a, label %bb.h, label %tsd_fetch_impl.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 832
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %tsd_fetch_impl.exit.i.i.i, label %bb.i, !prof !57

bb.i:                                             ; preds = %bb.h
  %i.af = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ac, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i.i.i

tsd_fetch_impl.exit.i.i.i:                        ; preds = %bb.i, %bb.h, %bb.g
  %i.ag = phi ptr [ %i.ac, %bb.h ], [ %i.af, %bb.i ], [ %0, %bb.g ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 832
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !40
  %i.aj = icmp eq i8 %i.ai, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !40
  %i.am = add i8 %i.al, 1
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !40
  br i1 %i.aj, label %bb.j, label %ehooks_pre_reentrancy.exit.i.i

bb.j:                                             ; preds = %tsd_fetch_impl.exit.i.i.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.ag) #9
  br label %ehooks_pre_reentrancy.exit.i.i

ehooks_pre_reentrancy.exit.i.i:                   ; preds = %bb.j, %tsd_fetch_impl.exit.i.i.i
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !68
  %.val.i.i = load i32, ptr %2, align 8, !tbaa !54
  %i.ao = tail call zeroext i1 %i.an(ptr noundef %i.w, ptr noundef %i.r, i64 noundef range(i64 0, -4095) %i.t, i1 noundef zeroext %i.v, i32 noundef %.val.i.i) #9, !inline_history !69 ; 2 uses
  br i1 %i.a, label %bb.k, label %tsd_fetch_impl.exit.i15.i.i

bb.k:                                             ; preds = %ehooks_pre_reentrancy.exit.i.i
  %i.ap = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 832
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !40
  %.not.i.i16.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i16.i.i, label %tsd_fetch_impl.exit.i15.i.i, label %bb.l, !prof !57

bb.l:                                             ; preds = %bb.k
  %i.as = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ap, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i15.i.i

tsd_fetch_impl.exit.i15.i.i:                      ; preds = %bb.l, %bb.k, %ehooks_pre_reentrancy.exit.i.i
  %i.at = phi ptr [ %i.ap, %bb.k ], [ %i.as, %bb.l ], [ %0, %ehooks_pre_reentrancy.exit.i.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !40
  %i.aw = add i8 %i.av, -1                        ; 2 uses
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !40
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.m, label %ehooks_dalloc.exit.i

bb.m:                                             ; preds = %tsd_fetch_impl.exit.i15.i.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.at) #9
  br i1 %i.ao, label %bb.n, label %extent_dalloc_wrapper_try.exit

ehooks_dalloc.exit.i:                             ; preds = %tsd_fetch_impl.exit.i15.i.i
  br i1 %i.ao, label %bb.n, label %extent_dalloc_wrapper_try.exit

extent_dalloc_wrapper_try.exit:                   ; preds = %bb.e, %bb.m, %ehooks_dalloc.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 58392
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !49
end_hunk_0
begin_hunk_1_@je_extent_dalloc_wrapper:tsdn_witness_tsdp_get.exit
bb.o:                                             ; preds = %bb.a, %bb.n, %ehooks_dalloc_will_fail.exit
  %.val46 = load i64, ptr %3, align 8, !tbaa !47
  %i.bb = and i64 %.val46, 8192
  %.not62 = icmp eq i64 %i.bb, 0
  br i1 %.not62, label %ehooks_purge_lazy.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr i8, ptr %3, i64 16        ; 3 uses
  %.val42 = load i64, ptr %i.bc, align 8, !tbaa !40
  %i.bd = and i64 %.val42, -4096
  %i.be = tail call zeroext i1 @je_extent_decommit_wrapper(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef 0, i64 noundef %i.bd)
  br i1 %i.be, label %bb.q, label %ehooks_purge_lazy.exit

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr i8, ptr %3, i64 8         ; 2 uses
  %.val44 = load ptr, ptr %i.bf, align 8, !tbaa !44
  %i.bg = ptrtoint ptr %.val44 to i64
  %i.bh = and i64 %i.bg, -4096
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  %.val41 = load i64, ptr %i.bc, align 8, !tbaa !40
  %i.bj = and i64 %.val41, -4096                  ; 3 uses
  %i.bk = load atomic ptr, ptr %i.b acquire, align 8 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, @je_ehooks_default_extent_hooks
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = tail call zeroext i1 @je_ehooks_default_purge_forced_impl(ptr noundef %i.bi, i64 noundef 0, i64 noundef %i.bj) #9
  br i1 %i.bm, label %ehooks_purge_forced.exit.thread, label %ehooks_purge_lazy.exit

bb.s:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 48 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !70
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %ehooks_purge_forced.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.a, label %bb.u, label %tsd_fetch_impl.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.bq = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 832
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i, label %tsd_fetch_impl.exit.i.i, label %bb.v, !prof !57

bb.v:                                             ; preds = %bb.u
  %i.bt = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.bq, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i.i

tsd_fetch_impl.exit.i.i:                          ; preds = %bb.v, %bb.u, %bb.t
  %i.bu = phi ptr [ %i.bq, %bb.u ], [ %i.bt, %bb.v ], [ %0, %bb.t ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 832
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !40
  %i.bx = icmp eq i8 %i.bw, 0
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !40
  %i.ca = add i8 %i.bz, 1
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !40
  br i1 %i.bx, label %bb.w, label %ehooks_pre_reentrancy.exit.i

bb.w:                                             ; preds = %tsd_fetch_impl.exit.i.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.bu) #9
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.w, %tsd_fetch_impl.exit.i.i
  %i.cb = load ptr, ptr %i.bn, align 8, !tbaa !70
  %.val.i50 = load i32, ptr %2, align 8, !tbaa !54
  %i.cc = tail call zeroext i1 %i.cb(ptr noundef %i.bk, ptr noundef %i.bi, i64 noundef range(i64 0, -4095) %i.bj, i64 noundef 0, i64 noundef %i.bj, i32 noundef %.val.i50) #9, !inline_history !71 ; 2 uses
  br i1 %i.a, label %bb.x, label %tsd_fetch_impl.exit.i17.i

bb.x:                                             ; preds = %ehooks_pre_reentrancy.exit.i
  %i.cd = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 832
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !40
  %.not.i.i18.i = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i18.i, label %tsd_fetch_impl.exit.i17.i, label %bb.y, !prof !57

bb.y:                                             ; preds = %bb.x
  %i.cg = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.cd, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i17.i

tsd_fetch_impl.exit.i17.i:                        ; preds = %bb.y, %bb.x, %ehooks_pre_reentrancy.exit.i
  %i.ch = phi ptr [ %i.cd, %bb.x ], [ %i.cg, %bb.y ], [ %0, %ehooks_pre_reentrancy.exit.i ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !40
  %i.ck = add i8 %i.cj, -1                        ; 2 uses
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !40
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.z, label %ehooks_purge_forced.exit

bb.z:                                             ; preds = %tsd_fetch_impl.exit.i17.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.ch) #9
  br i1 %i.cc, label %ehooks_purge_forced.exit.thread, label %ehooks_purge_lazy.exit

ehooks_purge_forced.exit:                         ; preds = %tsd_fetch_impl.exit.i17.i
  br i1 %i.cc, label %ehooks_purge_forced.exit.thread, label %ehooks_purge_lazy.exit

ehooks_purge_forced.exit.thread:                  ; preds = %bb.s, %bb.z, %bb.r, %ehooks_purge_forced.exit
  %.val45 = load i64, ptr %3, align 8, !tbaa !47
  %i.cm = and i64 %.val45, 917504
  %i.cn = icmp eq i64 %i.cm, 262144
  br i1 %i.cn, label %ehooks_purge_lazy.exit, label %bb.aa

bb.aa:                                            ; preds = %ehooks_purge_forced.exit.thread
  %.val43 = load ptr, ptr %i.bf, align 8, !tbaa !44
  %i.co = ptrtoint ptr %.val43 to i64
  %i.cp = and i64 %i.co, -4096
  %i.cq = inttoptr i64 %i.cp to ptr               ; 2 uses
  %.val39 = load i64, ptr %i.bc, align 8, !tbaa !40
  %i.cr = and i64 %.val39, -4096                  ; 3 uses
  %i.cs = load atomic ptr, ptr %i.b acquire, align 8 ; 3 uses
  %i.ct = icmp eq ptr %i.cs, @je_ehooks_default_extent_hooks
  br i1 %i.ct, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cu = tail call zeroext i1 @je_ehooks_default_purge_lazy_impl(ptr noundef %i.cq, i64 noundef 0, i64 noundef %i.cr) #9 ; 0 uses
  br label %ehooks_purge_lazy.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 40 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !72
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %ehooks_purge_lazy.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.a, label %bb.ae, label %tsd_fetch_impl.exit.i.i52

bb.ae:                                            ; preds = %bb.ad
  %i.cy = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 832
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !40
  %.not.i.i.i58 = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i58, label %tsd_fetch_impl.exit.i.i52, label %bb.af, !prof !57

bb.af:                                            ; preds = %bb.ae
  %i.db = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.cy, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i.i52

tsd_fetch_impl.exit.i.i52:                        ; preds = %bb.af, %bb.ae, %bb.ad
  %i.dc = phi ptr [ %i.cy, %bb.ae ], [ %i.db, %bb.af ], [ %0, %bb.ad ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 832
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !40
  %i.df = icmp eq i8 %i.de, 0
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 1 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !40
  %i.di = add i8 %i.dh, 1
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !40
  br i1 %i.df, label %bb.ag, label %ehooks_pre_reentrancy.exit.i53

bb.ag:                                            ; preds = %tsd_fetch_impl.exit.i.i52
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.dc) #9
  br label %ehooks_pre_reentrancy.exit.i53

ehooks_pre_reentrancy.exit.i53:                   ; preds = %bb.ag, %tsd_fetch_impl.exit.i.i52
  %i.dj = load ptr, ptr %i.cv, align 8, !tbaa !72
  %.val.i54 = load i32, ptr %2, align 8, !tbaa !54
  %i.dk = tail call zeroext i1 %i.dj(ptr noundef %i.cs, ptr noundef %i.cq, i64 noundef range(i64 0, -4095) %i.cr, i64 noundef 0, i64 noundef %i.cr, i32 noundef %.val.i54) #9, !inline_history !73 ; 0 uses
  br i1 %i.a, label %bb.ah, label %tsd_fetch_impl.exit.i17.i55

bb.ah:                                            ; preds = %ehooks_pre_reentrancy.exit.i53
  %i.dl = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 832
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !40
  %.not.i.i18.i57 = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i18.i57, label %tsd_fetch_impl.exit.i17.i55, label %bb.ai, !prof !57

bb.ai:                                            ; preds = %bb.ah
  %i.do = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.dl, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i17.i55

tsd_fetch_impl.exit.i17.i55:                      ; preds = %bb.ai, %bb.ah, %ehooks_pre_reentrancy.exit.i53
  %i.dp = phi ptr [ %i.dl, %bb.ah ], [ %i.do, %bb.ai ], [ %0, %ehooks_pre_reentrancy.exit.i53 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !40
  %i.ds = add i8 %i.dr, -1                        ; 2 uses
  store i8 %i.ds, ptr %i.dq, align 1, !tbaa !40
  %i.dt = icmp eq i8 %i.ds, 0
  br i1 %i.dt, label %bb.aj, label %ehooks_purge_lazy.exit

bb.aj:                                            ; preds = %tsd_fetch_impl.exit.i17.i55
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.dp) #9
  br label %ehooks_purge_lazy.exit

ehooks_purge_lazy.exit:                           ; preds = %bb.r, %bb.z, %bb.o, %bb.p, %ehooks_purge_forced.exit, %ehooks_purge_forced.exit.thread, %bb.ab, %bb.ac, %tsd_fetch_impl.exit.i17.i55, %bb.aj
  %i.du = phi i64 [ 0, %ehooks_purge_forced.exit.thread ], [ 0, %bb.aj ], [ 0, %tsd_fetch_impl.exit.i17.i55 ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 32768, %ehooks_purge_forced.exit ], [ 32768, %bb.p ], [ 32768, %bb.o ], [ 32768, %bb.z ], [ 32768, %bb.r ]
  %.in = load i64, ptr %3, align 8, !tbaa !47
  %i.dv = and i64 %.in, -32769
  %i.dw = or disjoint i64 %i.dv, %i.du
  store i64 %i.dw, ptr %3, align 8, !tbaa !47
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 38936
  tail call void @je_extent_record(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %i.dx, ptr noundef nonnull %3)
  br label %bb.ak

bb.ak:                                            ; preds = %extent_dalloc_wrapper_try.exit, %ehooks_purge_lazy.exit
  ret void
}

declare ptr @je_edata_cache_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_extent_decommit_wrapper(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 8
  %.val10 = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.c = ptrtoint ptr %.val10 to i64
  %i.d = and i64 %i.c, -4096
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.f, align 8, !tbaa !40
  %i.g = and i64 %.val, -4096
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 3 uses
  %i.j = icmp eq ptr %i.i, @je_ehooks_default_extent_hooks
  br i1 %i.j, label %bb.a, label %bb.b

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.k = tail call zeroext i1 @je_ehooks_default_decommit_impl(ptr noundef %i.e, i64 noundef %3, i64 noundef %4) #9
  br label %ehooks_decommit.exit

bb.b:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %ehooks_decommit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.a, label %bb.d, label %tsd_fetch_impl.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 832
  %i.q = load i8, ptr %i.p, align 8, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %tsd_fetch_impl.exit.i.i, label %bb.e, !prof !57

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.o, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i.i

tsd_fetch_impl.exit.i.i:                          ; preds = %bb.e, %bb.d, %bb.c
  %i.s = phi ptr [ %i.o, %bb.d ], [ %i.r, %bb.e ], [ %0, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 832
  %i.u = load i8, ptr %i.t, align 8, !tbaa !40
  %i.v = icmp eq i8 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !40
  %i.y = add i8 %i.x, 1
  store i8 %i.y, ptr %i.w, align 1, !tbaa !40
  br i1 %i.v, label %bb.f, label %ehooks_pre_reentrancy.exit.i

bb.f:                                             ; preds = %tsd_fetch_impl.exit.i.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.s) #9
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.f, %tsd_fetch_impl.exit.i.i
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !74
  %.val.i = load i32, ptr %1, align 8, !tbaa !54
  %i.aa = tail call zeroext i1 %i.z(ptr noundef %i.i, ptr noundef %i.e, i64 noundef range(i64 0, -4095) %i.g, i64 noundef %3, i64 noundef %4, i32 noundef %.val.i) #9, !inline_history !75 ; 2 uses
  br i1 %i.a, label %bb.g, label %tsd_fetch_impl.exit.i17.i

bb.g:                                             ; preds = %ehooks_pre_reentrancy.exit.i
  %i.ab = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 832
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !40
  %.not.i.i18.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i18.i, label %tsd_fetch_impl.exit.i17.i, label %bb.h, !prof !57

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ab, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i17.i

tsd_fetch_impl.exit.i17.i:                        ; preds = %bb.h, %bb.g, %ehooks_pre_reentrancy.exit.i
  %i.af = phi ptr [ %i.ab, %bb.g ], [ %i.ae, %bb.h ], [ %0, %ehooks_pre_reentrancy.exit.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !40
  %i.ai = add i8 %i.ah, -1                        ; 2 uses
  store i8 %i.ai, ptr %i.ag, align 1, !tbaa !40
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %ehooks_decommit.exit

bb.i:                                             ; preds = %tsd_fetch_impl.exit.i17.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.af) #9
  br label %ehooks_decommit.exit

ehooks_decommit.exit:                             ; preds = %bb.a, %bb.b, %tsd_fetch_impl.exit.i17.i, %bb.i
  %.0.i = phi i1 [ %i.k, %bb.a ], [ true, %bb.b ], [ %i.aa, %tsd_fetch_impl.exit.i17.i ], [ %i.aa, %bb.i ] ; 2 uses
  %.val11 = load i64, ptr %2, align 8, !tbaa !47  ; 2 uses
  %i.ak = and i64 %.val11, 8192
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = select i1 %i.al, i1 %.0.i, i1 false
  %i.an = and i64 %.val11, -8193
  %i.ao = select i1 %i.am, i64 8192, i64 0
  %i.ap = or disjoint i64 %i.ao, %i.an
  store i64 %i.ap, ptr %2, align 8, !tbaa !47
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden void @je_extent_destroy_wrapper(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  %.val19 = load i64, ptr %3, align 8, !tbaa !47  ; 2 uses
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = and i64 %.val19, 65536
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 58384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  tail call void @je_san_unguard_pages_pre_destroy(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %i.d) #9
  %.val20.pre = load i64, ptr %3, align 8, !tbaa !47
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %tsdn_witness_tsdp_get.exit
  %.val20 = phi i64 [ %.val20.pre, %bb.a ], [ %.val19, %tsdn_witness_tsdp_get.exit ]
  %i.e = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %.val18 = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.f = ptrtoint ptr %.val18 to i64
  %i.g = and i64 %i.f, -4096
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  store ptr %i.h, ptr %i.e, align 8, !tbaa !44
  %i.i = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.i, align 8, !tbaa !40
  %i.j = and i64 %.val, -4096                     ; 2 uses
  %i.k = and i64 %.val20, 8192
  %i.l = icmp ne i64 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load atomic ptr, ptr %i.m acquire, align 8 ; 3 uses
  %i.o = icmp eq ptr %i.n, @je_ehooks_default_extent_hooks
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @je_ehooks_default_destroy_impl(ptr noundef %i.h, i64 noundef range(i64 0, -4095) %i.j) #9
  br label %ehooks_destroy.exit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !76
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %ehooks_destroy.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.a, label %bb.f, label %tsd_fetch_impl.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 832
  %i.u = load i8, ptr %i.t, align 8, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %tsd_fetch_impl.exit.i.i, label %bb.g, !prof !57

bb.g:                                             ; preds = %bb.f
  %i.v = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.s, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i.i

tsd_fetch_impl.exit.i.i:                          ; preds = %bb.g, %bb.f, %bb.e
  %i.w = phi ptr [ %i.s, %bb.f ], [ %i.v, %bb.g ], [ %0, %bb.e ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 832
  %i.y = load i8, ptr %i.x, align 8, !tbaa !40
  %i.z = icmp eq i8 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !40
  %i.ac = add i8 %i.ab, 1
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !40
  br i1 %i.z, label %bb.h, label %ehooks_pre_reentrancy.exit.i

bb.h:                                             ; preds = %tsd_fetch_impl.exit.i.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.w) #9
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.h, %tsd_fetch_impl.exit.i.i
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !76
  %.val.i = load i32, ptr %2, align 8, !tbaa !54
  tail call void %i.ad(ptr noundef %i.n, ptr noundef %i.h, i64 noundef range(i64 0, -4095) %i.j, i1 noundef zeroext %i.l, i32 noundef %.val.i) #9, !inline_history !77
  br i1 %i.a, label %bb.i, label %tsd_fetch_impl.exit.i12.i

bb.i:                                             ; preds = %ehooks_pre_reentrancy.exit.i
  %i.ae = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 832
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !40
  %.not.i.i13.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i13.i, label %tsd_fetch_impl.exit.i12.i, label %bb.j, !prof !57

bb.j:                                             ; preds = %bb.i
  %i.ah = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ae, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i12.i

tsd_fetch_impl.exit.i12.i:                        ; preds = %bb.j, %bb.i, %ehooks_pre_reentrancy.exit.i
  %i.ai = phi ptr [ %i.ae, %bb.i ], [ %i.ah, %bb.j ], [ %0, %ehooks_pre_reentrancy.exit.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !40
  %i.al = add i8 %i.ak, -1                        ; 2 uses
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !40
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.k, label %ehooks_destroy.exit

bb.k:                                             ; preds = %tsd_fetch_impl.exit.i12.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.ai) #9
  br label %ehooks_destroy.exit

ehooks_destroy.exit:                              ; preds = %bb.c, %bb.d, %tsd_fetch_impl.exit.i12.i, %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 58392
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !49
  tail call void @je_edata_cache_put(ptr noundef %0, ptr noundef %i.ao, ptr noundef nonnull %3) #9
  ret void
}

declare void @je_san_unguard_pages_pre_destroy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_extent_commit_wrapper(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @extent_commit_impl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @extent_commit_impl(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 8
  %.val11 = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.c = ptrtoint ptr %.val11 to i64
  %i.d = and i64 %i.c, -4096
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.f, align 8, !tbaa !40
  %i.g = and i64 %.val, -4096
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 3 uses
  %i.j = icmp eq ptr %i.i, @je_ehooks_default_extent_hooks
  br i1 %i.j, label %bb.a, label %bb.b

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.k = tail call zeroext i1 @je_ehooks_default_commit_impl(ptr noundef %i.e, i64 noundef %3, i64 noundef %4) #9
  br label %ehooks_commit.exit

bb.b:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %ehooks_commit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.a, label %bb.d, label %tsd_fetch_impl.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 832
  %i.q = load i8, ptr %i.p, align 8, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %tsd_fetch_impl.exit.i.i, label %bb.e, !prof !57

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.o, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i.i

tsd_fetch_impl.exit.i.i:                          ; preds = %bb.e, %bb.d, %bb.c
  %i.s = phi ptr [ %i.o, %bb.d ], [ %i.r, %bb.e ], [ %0, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 832
  %i.u = load i8, ptr %i.t, align 8, !tbaa !40
  %i.v = icmp eq i8 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !40
  %i.y = add i8 %i.x, 1
  store i8 %i.y, ptr %i.w, align 1, !tbaa !40
  br i1 %i.v, label %bb.f, label %ehooks_pre_reentrancy.exit.i

bb.f:                                             ; preds = %tsd_fetch_impl.exit.i.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.s) #9
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.f, %tsd_fetch_impl.exit.i.i
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !78
  %.val.i = load i32, ptr %1, align 8, !tbaa !54
  %i.aa = tail call zeroext i1 %i.z(ptr noundef %i.i, ptr noundef %i.e, i64 noundef range(i64 0, -4095) %i.g, i64 noundef %3, i64 noundef %4, i32 noundef %.val.i) #9, !inline_history !79 ; 2 uses
  br i1 %i.a, label %bb.g, label %tsd_fetch_impl.exit.i19.i

bb.g:                                             ; preds = %ehooks_pre_reentrancy.exit.i
  %i.ab = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 832
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !40
  %.not.i.i20.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i20.i, label %tsd_fetch_impl.exit.i19.i, label %bb.h, !prof !57

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ab, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i19.i

tsd_fetch_impl.exit.i19.i:                        ; preds = %bb.h, %bb.g, %ehooks_pre_reentrancy.exit.i
  %i.af = phi ptr [ %i.ab, %bb.g ], [ %i.ae, %bb.h ], [ %0, %ehooks_pre_reentrancy.exit.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !40
  %i.ai = add i8 %i.ah, -1                        ; 2 uses
  store i8 %i.ai, ptr %i.ag, align 1, !tbaa !40
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %ehooks_commit.exit

bb.i:                                             ; preds = %tsd_fetch_impl.exit.i19.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.af) #9
  br label %ehooks_commit.exit

ehooks_commit.exit:                               ; preds = %bb.a, %bb.b, %tsd_fetch_impl.exit.i19.i, %bb.i
  %.0.shrunk22.i = phi i1 [ %i.k, %bb.a ], [ %i.aa, %bb.i ], [ true, %bb.b ], [ %i.aa, %tsd_fetch_impl.exit.i19.i ] ; 2 uses
  %.val12 = load i64, ptr %2, align 8, !tbaa !47  ; 2 uses
  %i.ak = and i64 %.val12, 8192
  %i.al = icmp eq i64 %i.ak, 0
  %.not13 = select i1 %i.al, i1 %.0.shrunk22.i, i1 false
  %i.am = and i64 %.val12, -8193
  %i.an = select i1 %.not13, i64 0, i64 8192
  %i.ao = or disjoint i64 %i.an, %i.am
  store i64 %i.ao, ptr %2, align 8, !tbaa !47
  ret i1 %.0.shrunk22.i
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_extent_purge_lazy_wrapper(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @extent_purge_lazy_impl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @extent_purge_lazy_impl(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 8
  %.val8 = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.c = ptrtoint ptr %.val8 to i64
  %i.d = and i64 %i.c, -4096
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.f, align 8, !tbaa !40
  %i.g = and i64 %.val, -4096
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 3 uses
  %i.j = icmp eq ptr %i.i, @je_ehooks_default_extent_hooks
  br i1 %i.j, label %bb.a, label %bb.b

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.k = tail call zeroext i1 @je_ehooks_default_purge_lazy_impl(ptr noundef %i.e, i64 noundef %3, i64 noundef %4) #9
  br label %ehooks_purge_lazy.exit

bb.b:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %ehooks_purge_lazy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.a, label %bb.d, label %tsd_fetch_impl.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 832
  %i.q = load i8, ptr %i.p, align 8, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %tsd_fetch_impl.exit.i.i, label %bb.e, !prof !57

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.o, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i.i

tsd_fetch_impl.exit.i.i:                          ; preds = %bb.e, %bb.d, %bb.c
  %i.s = phi ptr [ %i.o, %bb.d ], [ %i.r, %bb.e ], [ %0, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 832
  %i.u = load i8, ptr %i.t, align 8, !tbaa !40
  %i.v = icmp eq i8 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !40
  %i.y = add i8 %i.x, 1
  store i8 %i.y, ptr %i.w, align 1, !tbaa !40
  br i1 %i.v, label %bb.f, label %ehooks_pre_reentrancy.exit.i

bb.f:                                             ; preds = %tsd_fetch_impl.exit.i.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.s) #9
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.f, %tsd_fetch_impl.exit.i.i
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !72
  %.val.i = load i32, ptr %1, align 8, !tbaa !54
  %i.aa = tail call zeroext i1 %i.z(ptr noundef %i.i, ptr noundef %i.e, i64 noundef range(i64 0, -4095) %i.g, i64 noundef %3, i64 noundef %4, i32 noundef %.val.i) #9, !inline_history !73 ; 2 uses
  br i1 %i.a, label %bb.g, label %tsd_fetch_impl.exit.i17.i

bb.g:                                             ; preds = %ehooks_pre_reentrancy.exit.i
  %i.ab = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 832
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !40
  %.not.i.i18.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i18.i, label %tsd_fetch_impl.exit.i17.i, label %bb.h, !prof !57

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ab, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i17.i

tsd_fetch_impl.exit.i17.i:                        ; preds = %bb.h, %bb.g, %ehooks_pre_reentrancy.exit.i
  %i.af = phi ptr [ %i.ab, %bb.g ], [ %i.ae, %bb.h ], [ %0, %ehooks_pre_reentrancy.exit.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !40
  %i.ai = add i8 %i.ah, -1                        ; 2 uses
  store i8 %i.ai, ptr %i.ag, align 1, !tbaa !40
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %ehooks_purge_lazy.exit

bb.i:                                             ; preds = %tsd_fetch_impl.exit.i17.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.af) #9
  br label %ehooks_purge_lazy.exit

ehooks_purge_lazy.exit:                           ; preds = %bb.a, %bb.b, %tsd_fetch_impl.exit.i17.i, %bb.i
  %.0.i = phi i1 [ %i.k, %bb.a ], [ true, %bb.b ], [ %i.aa, %tsd_fetch_impl.exit.i17.i ], [ %i.aa, %bb.i ]
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_extent_purge_forced_wrapper(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @extent_purge_forced_impl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @extent_purge_forced_impl(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 8
  %.val8 = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.c = ptrtoint ptr %.val8 to i64
  %i.d = and i64 %i.c, -4096
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.f, align 8, !tbaa !40
  %i.g = and i64 %.val, -4096
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 3 uses
  %i.j = icmp eq ptr %i.i, @je_ehooks_default_extent_hooks
  br i1 %i.j, label %bb.a, label %bb.b

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.k = tail call zeroext i1 @je_ehooks_default_purge_forced_impl(ptr noundef %i.e, i64 noundef %3, i64 noundef %4) #9
  br label %ehooks_purge_forced.exit

bb.b:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %ehooks_purge_forced.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.a, label %bb.d, label %tsd_fetch_impl.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 832
  %i.q = load i8, ptr %i.p, align 8, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %tsd_fetch_impl.exit.i.i, label %bb.e, !prof !57

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.o, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i.i

tsd_fetch_impl.exit.i.i:                          ; preds = %bb.e, %bb.d, %bb.c
  %i.s = phi ptr [ %i.o, %bb.d ], [ %i.r, %bb.e ], [ %0, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 832
  %i.u = load i8, ptr %i.t, align 8, !tbaa !40
  %i.v = icmp eq i8 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !40
  %i.y = add i8 %i.x, 1
  store i8 %i.y, ptr %i.w, align 1, !tbaa !40
  br i1 %i.v, label %bb.f, label %ehooks_pre_reentrancy.exit.i

bb.f:                                             ; preds = %tsd_fetch_impl.exit.i.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.s) #9
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.f, %tsd_fetch_impl.exit.i.i
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !70
  %.val.i = load i32, ptr %1, align 8, !tbaa !54
  %i.aa = tail call zeroext i1 %i.z(ptr noundef %i.i, ptr noundef %i.e, i64 noundef range(i64 0, -4095) %i.g, i64 noundef %3, i64 noundef %4, i32 noundef %.val.i) #9, !inline_history !71 ; 2 uses
  br i1 %i.a, label %bb.g, label %tsd_fetch_impl.exit.i17.i

bb.g:                                             ; preds = %ehooks_pre_reentrancy.exit.i
  %i.ab = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 832
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !40
  %.not.i.i18.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i18.i, label %tsd_fetch_impl.exit.i17.i, label %bb.h, !prof !57

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ab, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i17.i

tsd_fetch_impl.exit.i17.i:                        ; preds = %bb.h, %bb.g, %ehooks_pre_reentrancy.exit.i
  %i.af = phi ptr [ %i.ab, %bb.g ], [ %i.ae, %bb.h ], [ %0, %ehooks_pre_reentrancy.exit.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !40
  %i.ai = add i8 %i.ah, -1                        ; 2 uses
  store i8 %i.ai, ptr %i.ag, align 1, !tbaa !40
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %ehooks_purge_forced.exit

bb.i:                                             ; preds = %tsd_fetch_impl.exit.i17.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.af) #9
  br label %ehooks_purge_forced.exit

ehooks_purge_forced.exit:                         ; preds = %bb.a, %bb.b, %tsd_fetch_impl.exit.i17.i, %bb.i
  %.0.i = phi i1 [ %i.k, %bb.a ], [ true, %bb.b ], [ %i.aa, %tsd_fetch_impl.exit.i17.i ], [ %i.aa, %bb.i ]
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_extent_split_wrapper(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @extent_split_impl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @extent_split_impl(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 {
tsdn_witness_tsdp_get.exit46:
  %6 = alloca %struct.emap_prepare_s, align 8     ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.n, label %bb.a

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit46
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 58392 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = tail call ptr @je_edata_cache_get(ptr noundef %0, ptr noundef %i.g) #9 ; 10 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val48 = load i64, ptr %3, align 8, !tbaa !47
  %i.j = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %.val47 = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.k = ptrtoint ptr %.val47 to i64
  %i.l = and i64 %i.k, -4096
  %i.m = add i64 %i.l, %4
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr i8, ptr %3, i64 32
  %.val49 = load i64, ptr %i.o, align 8, !tbaa !62
  %i.p = load i64, ptr %i.h, align 8, !tbaa !47
  %i.q = and i64 %i.p, -17592454479872
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.n, ptr %i.r, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !40
  %i.u = and i64 %i.t, 4095
  %i.v = or i64 %i.u, %5
  store i64 %i.v, ptr %i.s, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.val49, ptr %i.w, align 8, !tbaa !62
  %i.x = and i64 %.val48, 962559
  %i.y = or disjoint i64 %i.x, %i.q
  %i.z = or disjoint i64 %i.y, 246415360
  store i64 %i.z, ptr %i.h, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 58384 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.ac = call zeroext i1 @je_emap_split_prepare(ptr noundef %0, ptr noundef %i.ab, ptr noundef nonnull %6, ptr noundef nonnull %3, i64 noundef %4, ptr noundef nonnull %i.h, i64 noundef %5) #9
  br i1 %i.ac, label %ehooks_split.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.ad = ptrtoint ptr %.val to i64
  %i.ae = and i64 %i.ad, -4096
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = add i64 %5, %4
  %.val52 = load i64, ptr %3, align 8, !tbaa !47
  %i.ah = and i64 %.val52, 8192
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %i.ak = load atomic ptr, ptr %i.a acquire, align 8
  %i.al = icmp eq ptr %i.ak, @je_ehooks_default_extent_hooks
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.am = call zeroext i1 (...) @je_ehooks_default_split_impl() #9
  br i1 %i.am, label %ehooks_split.exit.thread, label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 56 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !80
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %ehooks_split.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = icmp eq ptr %0, null                    ; 2 uses
  br i1 %i.aq, label %bb.g, label %tsd_fetch_impl.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ar = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 832
  %i.at = load i8, ptr %i.as, align 8, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i, label %tsd_fetch_impl.exit.i.i, label %bb.h, !prof !57

bb.h:                                             ; preds = %bb.g
  %i.au = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ar, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i.i

tsd_fetch_impl.exit.i.i:                          ; preds = %bb.h, %bb.g, %bb.f
  %i.av = phi ptr [ %i.ar, %bb.g ], [ %i.au, %bb.h ], [ %0, %bb.f ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 832
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !40
  %i.ay = icmp eq i8 %i.ax, 0
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !40
  %i.bb = add i8 %i.ba, 1
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !40
  br i1 %i.ay, label %bb.i, label %ehooks_pre_reentrancy.exit.i

bb.i:                                             ; preds = %tsd_fetch_impl.exit.i.i
  call void @je_tsd_slow_update(ptr noundef nonnull %i.av) #9
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.i, %tsd_fetch_impl.exit.i.i
  %i.bc = load ptr, ptr %i.an, align 8, !tbaa !80
  %.val.i = load i32, ptr %2, align 8, !tbaa !54
  %i.bd = call zeroext i1 %i.bc(ptr noundef nonnull %i.aj, ptr noundef %i.af, i64 noundef %i.ag, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %i.ai, i32 noundef %.val.i) #9, !inline_history !81 ; 2 uses
  br i1 %i.aq, label %bb.j, label %tsd_fetch_impl.exit.i14.i

bb.j:                                             ; preds = %ehooks_pre_reentrancy.exit.i
  %i.be = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 832
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !40
  %.not.i.i15.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i15.i, label %tsd_fetch_impl.exit.i14.i, label %bb.k, !prof !57

bb.k:                                             ; preds = %bb.j
  %i.bh = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.be, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i14.i

tsd_fetch_impl.exit.i14.i:                        ; preds = %bb.k, %bb.j, %ehooks_pre_reentrancy.exit.i
  %i.bi = phi ptr [ %i.be, %bb.j ], [ %i.bh, %bb.k ], [ %0, %ehooks_pre_reentrancy.exit.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !40
  %i.bl = add i8 %i.bk, -1                        ; 2 uses
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !40
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.l, label %ehooks_split.exit

bb.l:                                             ; preds = %tsd_fetch_impl.exit.i14.i
  call void @je_tsd_slow_update(ptr noundef nonnull %i.bi) #9
  br i1 %i.bd, label %ehooks_split.exit.thread, label %bb.m

ehooks_split.exit:                                ; preds = %tsd_fetch_impl.exit.i14.i
  br i1 %i.bd, label %ehooks_split.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d, %ehooks_split.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !40
  %i.bp = and i64 %i.bo, 4095
  %i.bq = or i64 %i.bp, %4
  store i64 %i.bq, ptr %i.bn, align 8, !tbaa !40
  %i.br = load ptr, ptr %i.aa, align 8, !tbaa !22
  call void @je_emap_split_commit(ptr noundef %0, ptr noundef %i.br, ptr noundef nonnull %6, ptr noundef nonnull %3, i64 noundef %4, ptr noundef nonnull %i.h, i64 noundef %5) #9
  br label %bb.n

ehooks_split.exit.thread:                         ; preds = %bb.e, %bb.l, %bb.d, %ehooks_split.exit, %bb.b
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !49
  call void @je_edata_cache_put(ptr noundef %0, ptr noundef %i.bs, ptr noundef nonnull %i.h) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.a, %ehooks_split.exit.thread, %tsdn_witness_tsdp_get.exit46
  %.1 = phi ptr [ null, %tsdn_witness_tsdp_get.exit46 ], [ %i.h, %bb.m ], [ null, %bb.a ], [ null, %ehooks_split.exit.thread ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_extent_merge_wrapper(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @extent_merge_impl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @extent_merge_impl(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 {
tsdn_witness_tsdp_get.exit41:
  %5 = alloca %struct.emap_prepare_s, align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 58384 ; 2 uses
  %i.b = getelementptr i8, ptr %3, i64 8
  %.val46 = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.c = ptrtoint ptr %.val46 to i64
  %i.d = and i64 %i.c, -4096
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr i8, ptr %3, i64 16         ; 3 uses
  %.val44 = load i64, ptr %i.f, align 8, !tbaa !40
  %i.g = and i64 %.val44, -4096
  %i.h = getelementptr i8, ptr %4, i64 8
  %.val45 = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.i = ptrtoint ptr %.val45 to i64
  %i.j = and i64 %i.i, -4096
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = getelementptr i8, ptr %4, i64 16         ; 2 uses
  %.val43 = load i64, ptr %i.l, align 8, !tbaa !40
  %i.m = and i64 %.val43, -4096
  %.val53 = load i64, ptr %3, align 8, !tbaa !47
  %i.n = and i64 %.val53, 8192
  %i.o = icmp ne i64 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load atomic ptr, ptr %i.p acquire, align 8 ; 3 uses
  %i.r = icmp eq ptr %i.q, @je_ehooks_default_extent_hooks
  br i1 %i.r, label %bb.a, label %bb.b

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit41
  %i.s = tail call zeroext i1 @je_ehooks_default_merge_impl(ptr noundef %0, ptr noundef %i.e, ptr noundef %i.k) #9
  br i1 %i.s, label %ehooks_merge.exit.thread, label %bb.j

bb.b:                                             ; preds = %tsdn_witness_tsdp_get.exit41
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !82
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %ehooks_merge.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.w, label %bb.d, label %tsd_fetch_impl.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.x = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 832
  %i.z = load i8, ptr %i.y, align 8, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i, label %tsd_fetch_impl.exit.i.i, label %bb.e, !prof !57

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.x, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i.i

tsd_fetch_impl.exit.i.i:                          ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = phi ptr [ %i.x, %bb.d ], [ %i.aa, %bb.e ], [ %0, %bb.c ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 832
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !40
  %i.ae = icmp eq i8 %i.ad, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !40
  %i.ah = add i8 %i.ag, 1
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !40
  br i1 %i.ae, label %bb.f, label %ehooks_pre_reentrancy.exit.i

bb.f:                                             ; preds = %tsd_fetch_impl.exit.i.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.ab) #9
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.f, %tsd_fetch_impl.exit.i.i
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !82
  %.val.i = load i32, ptr %2, align 8, !tbaa !54
  %i.aj = tail call zeroext i1 %i.ai(ptr noundef %i.q, ptr noundef %i.e, i64 noundef range(i64 0, -4095) %i.g, ptr noundef %i.k, i64 noundef range(i64 0, -4095) %i.m, i1 noundef zeroext %i.o, i32 noundef %.val.i) #9, !inline_history !83 ; 2 uses
  br i1 %i.w, label %bb.g, label %tsd_fetch_impl.exit.i18.i

bb.g:                                             ; preds = %ehooks_pre_reentrancy.exit.i
  %i.ak = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 832
  %i.am = load i8, ptr %i.al, align 8, !tbaa !40
  %.not.i.i19.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i19.i, label %tsd_fetch_impl.exit.i18.i, label %bb.h, !prof !57

bb.h:                                             ; preds = %bb.g
  %i.an = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.ak, i1 noundef zeroext false) #9
  br label %tsd_fetch_impl.exit.i18.i

tsd_fetch_impl.exit.i18.i:                        ; preds = %bb.h, %bb.g, %ehooks_pre_reentrancy.exit.i
  %i.ao = phi ptr [ %i.ak, %bb.g ], [ %i.an, %bb.h ], [ %0, %ehooks_pre_reentrancy.exit.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !40
  %i.ar = add i8 %i.aq, -1                        ; 2 uses
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !40
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.i, label %ehooks_merge.exit

bb.i:                                             ; preds = %tsd_fetch_impl.exit.i18.i
  tail call void @je_tsd_slow_update(ptr noundef nonnull %i.ao) #9
  br i1 %i.aj, label %ehooks_merge.exit.thread, label %bb.j

ehooks_merge.exit:                                ; preds = %tsd_fetch_impl.exit.i18.i
  br i1 %i.aj, label %ehooks_merge.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.a, %ehooks_merge.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !22
  call void @je_emap_merge_prepare(ptr noundef %0, ptr noundef %i.at, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %i.au = load i64, ptr %3, align 8, !tbaa !47    ; 3 uses
  %i.av = and i64 %i.au, -917505
  store i64 %i.av, ptr %3, align 8, !tbaa !47
  %.val42 = load i64, ptr %i.f, align 8, !tbaa !40 ; 2 uses
  %i.aw = and i64 %.val42, -4096
  %.val = load i64, ptr %i.l, align 8, !tbaa !40
  %i.ax = and i64 %.val, -4096
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = and i64 %.val42, 4095
  %i.ba = or disjoint i64 %i.ay, %i.az
  store i64 %i.ba, ptr %i.f, align 8, !tbaa !40
  %i.bb = getelementptr i8, ptr %3, i64 32        ; 2 uses
  %.val50 = load i64, ptr %i.bb, align 8, !tbaa !62
  %i.bc = getelementptr i8, ptr %4, i64 32
  %.val49 = load i64, ptr %i.bc, align 8, !tbaa !62
  %spec.select = call i64 @llvm.umin.i64(i64 %.val50, i64 %.val49)
  store i64 %spec.select, ptr %i.bb, align 8, !tbaa !62
  %i.bd = and i64 %i.au, 32768
  %.not = icmp eq i64 %i.bd, 0
  br i1 %.not, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val51 = load i64, ptr %4, align 8, !tbaa !47
  %.val51.fr = freeze i64 %.val51
  %i.be = and i64 %.val51.fr, 32768
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.k
  %i.bf = phi i64 [ %i.be, %bb.k ], [ 0, %bb.j ]
  %i.bg = and i64 %i.au, -950273
  %i.bh = or disjoint i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %3, align 8, !tbaa !47
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !22
  call void @je_emap_merge_commit(ptr noundef %0, ptr noundef %i.bi, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 58392
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !49
  call void @je_edata_cache_put(ptr noundef %0, ptr noundef %i.bk, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %ehooks_merge.exit.thread

ehooks_merge.exit.thread:                         ; preds = %bb.b, %bb.i, %bb.a, %ehooks_merge.exit, %.thread
  %.0.i55 = phi i1 [ true, %bb.i ], [ true, %ehooks_merge.exit ], [ false, %.thread ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %.0.i55
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_extent_commit_zero(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #1 {
tsdn_witness_tsdp_get.exit:
  br i1 %3, label %bb.a, label %bb.c

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %.val20 = load i64, ptr %2, align 8, !tbaa !47
  %i.a = and i64 %.val20, 8192
  %.not21 = icmp eq i64 %i.a, 0
  br i1 %.not21, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 16
  %.val17 = load i64, ptr %i.b, align 8, !tbaa !40
  %i.c = and i64 %.val17, -4096
  %i.d = tail call fastcc zeroext i1 @extent_commit_impl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef 0, i64 noundef %i.c) ; 2 uses
  %.not = xor i1 %4, true
  %brmerge = or i1 %i.d, %.not
  br i1 %brmerge, label %ehooks_zero.exit, label %bb.d

bb.c:                                             ; preds = %bb.a, %tsdn_witness_tsdp_get.exit
  br i1 %4, label %bb.d, label %ehooks_zero.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  %.val19 = load i64, ptr %2, align 8, !tbaa !47
  %i.e = and i64 %.val19, 32768
  %.not22 = icmp eq i64 %i.e, 0
  br i1 %.not22, label %bb.e, label %ehooks_zero.exit

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %2, i64 8
  %.val18 = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.g = ptrtoint ptr %.val18 to i64
  %i.h = and i64 %i.g, -4096
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.j, align 8, !tbaa !40
  %i.k = and i64 %.val, -4096                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load atomic ptr, ptr %i.l acquire, align 8
  %i.n = icmp eq ptr %i.m, @je_ehooks_default_extent_hooks
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @je_ehooks_default_zero_impl(ptr noundef %i.i, i64 noundef range(i64 0, -4095) %i.k) #9
  br label %ehooks_zero.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr align 4096 %i.i, i8 0, i64 range(i64 0, -4095) %i.k, i1 false)
  br label %ehooks_zero.exit

ehooks_zero.exit:                                 ; preds = %bb.g, %bb.f, %bb.b, %bb.c, %bb.d
  %.0 = phi i1 [ %i.d, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.g ]
  ret i1 %.0
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
define internal fastcc void @extents_abandon_vm(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef %4) unnamed_addr #1 {
atomic_fetch_add_zu.exit:
  %i.a = getelementptr i8, ptr %4, i64 16         ; 2 uses
  %.val16 = load i64, ptr %i.a, align 8, !tbaa !40
  %i.b = and i64 %.val16, -4096                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 62224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = atomicrmw add ptr %i.e, i64 %i.b monotonic, align 8 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 19424
  %i.h = load i32, ptr %i.g, align 8, !tbaa !39
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.a, label %bb.c

bb.a:                                             ; preds = %atomic_fetch_add_zu.exit
  %i.j = tail call fastcc zeroext i1 @extent_purge_lazy_impl(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4, i64 noundef 0, i64 noundef %i.b)
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.a, align 8, !tbaa !40
  %i.k = and i64 %.val, -4096
  %i.l = tail call fastcc zeroext i1 @extent_purge_forced_impl(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4, i64 noundef 0, i64 noundef %i.k) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %atomic_fetch_add_zu.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 58392
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  tail call void @je_edata_cache_put(ptr noundef %0, ptr noundef %i.n, ptr noundef nonnull %4) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @extent_try_coalesce_impl(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly captures(none) %5) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 58384 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 19424 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 19432 ; 3 uses
  br label %.outer

.outer:                                           ; preds = %.loopexit, %bb.a
  %.036.ph = phi ptr [ %.339.ph, %.loopexit ], [ %4, %bb.a ] ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %extent_coalesce.exit51.thread
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.f = load i32, ptr %i.b, align 8, !tbaa !39
  %i.g = tail call ptr @je_emap_try_acquire_edata_neighbor(ptr noundef %0, ptr noundef %i.e, ptr noundef %.036.ph, i32 noundef 0, i32 noundef %i.f, i1 noundef zeroext true) #9 ; 6 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @je_eset_remove(ptr noundef nonnull %i.c, ptr noundef nonnull %i.g) #9
  %i.h = tail call fastcc zeroext i1 @extent_merge_impl(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef readonly %2, ptr noundef %.036.ph, ptr noundef nonnull %i.g)
  br i1 %i.h, label %extent_coalesce.exit.thread, label %extent_coalesce.exit

extent_coalesce.exit.thread:                      ; preds = %bb.c
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.i = load i32, ptr %i.b, align 8, !tbaa !39
  tail call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %.val.i, ptr noundef nonnull %i.g, i32 noundef %i.i) #9
  %.val.i.i.i = load i64, ptr %i.g, align 8, !tbaa !47
  %i.j = and i64 %.val.i.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.j, 0
  %.v.i.i.i = select i1 %.not.i.i.i, i64 112, i64 9768
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %.v.i.i.i
  tail call void @je_eset_insert(ptr noundef nonnull %i.k, ptr noundef nonnull %i.g) #9
  br label %bb.d

extent_coalesce.exit:                             ; preds = %bb.c
  %i.l = load i8, ptr %i.d, align 8, !tbaa !41, !range !42, !noundef !43
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %extent_coalesce.exit.thread, %extent_coalesce.exit, %bb.b
  %.040 = phi i1 [ false, %extent_coalesce.exit.thread ], [ false, %bb.b ], [ true, %extent_coalesce.exit ] ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.o = load i32, ptr %i.b, align 8, !tbaa !39
  %i.p = tail call ptr @je_emap_try_acquire_edata_neighbor(ptr noundef %0, ptr noundef %i.n, ptr noundef %.036.ph, i32 noundef 0, i32 noundef %i.o, i1 noundef zeroext false) #9 ; 8 uses
  %.not46 = icmp eq ptr %i.p, null
  br i1 %.not46, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @je_eset_remove(ptr noundef nonnull %i.c, ptr noundef nonnull %i.p) #9
  %i.q = tail call fastcc zeroext i1 @extent_merge_impl(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef readonly %2, ptr noundef nonnull %i.p, ptr noundef %.036.ph)
  br i1 %i.q, label %extent_coalesce.exit51.thread, label %extent_coalesce.exit51

extent_coalesce.exit51.thread:                    ; preds = %bb.e
  %.val.i47 = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.r = load i32, ptr %i.b, align 8, !tbaa !39
  tail call void @je_emap_update_edata_state(ptr noundef %0, ptr noundef %.val.i47, ptr noundef nonnull %i.p, i32 noundef %i.r) #9
  %.val.i.i.i48 = load i64, ptr %i.p, align 8, !tbaa !47
  %i.s = and i64 %.val.i.i.i48, 65536
  %.not.i.i.i49 = icmp eq i64 %i.s, 0
  %.v.i.i.i50 = select i1 %.not.i.i.i49, i64 112, i64 9768
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %.v.i.i.i50
  tail call void @je_eset_insert(ptr noundef nonnull %i.t, ptr noundef nonnull %i.p) #9
  br i1 %.040, label %bb.b, label %.loopexit60, !llvm.loop !84

extent_coalesce.exit51:                           ; preds = %bb.e
  %i.u = load i8, ptr %i.d, align 8, !tbaa !41, !range !42, !noundef !43
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.sink.split, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %extent_coalesce.exit51
  %.343.ph = phi i1 [ true, %extent_coalesce.exit51 ], [ %.040, %bb.d ]
  %.339.ph = phi ptr [ %i.p, %extent_coalesce.exit51 ], [ %.036.ph, %bb.d ] ; 2 uses
  br i1 %.343.ph, label %.outer, label %.loopexit60, !llvm.loop !84

.loopexit60:                                      ; preds = %.loopexit, %extent_coalesce.exit51.thread
  %.339.ph59 = phi ptr [ %.036.ph, %extent_coalesce.exit51.thread ], [ %.339.ph, %.loopexit ] ; 2 uses
  %i.w = load i8, ptr %i.d, align 8, !tbaa !41, !range !42, !noundef !43
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %extent_coalesce.exit51, %extent_coalesce.exit, %.loopexit60
  %.sink = phi i8 [ 1, %extent_coalesce.exit ], [ 0, %.loopexit60 ], [ 1, %extent_coalesce.exit51 ]
  %.3.ph = phi ptr [ %.036.ph, %extent_coalesce.exit ], [ %.339.ph59, %.loopexit60 ], [ %i.p, %extent_coalesce.exit51 ]
  store i8 %.sink, ptr %5, align 1, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %.loopexit60
  %.3 = phi ptr [ %.339.ph59, %.loopexit60 ], [ %.3.ph, %.sink.split ]
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

declare zeroext i1 @je_ehooks_default_commit_impl(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @je_ehooks_default_decommit_impl(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @je_emap_split_prepare(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @je_emap_split_commit(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @je_ehooks_default_split_impl(...) local_unnamed_addr #3

declare void @je_emap_merge_prepare(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_emap_merge_commit(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @je_ehooks_default_merge_impl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_ehooks_default_zero_impl(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"_Bool", !9, i64 0}
!13 = !{!14, !16, i64 56}
!14 = !{!"", !15, i64 0, !15, i64 8, !16, i64 16, !16, i64 24, !8, i64 32, !17, i64 36, !16, i64 40, !18, i64 48, !16, i64 56}
!15 = !{!"", !16, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!"", !8, i64 0}
!18 = !{!"p1 _ZTS6tsdn_s", !19, i64 0}
!19 = !{!"any pointer", !9, i64 0}
!20 = !{!14, !18, i64 48}
!21 = !{!14, !16, i64 40}
!22 = !{!23, !32, i64 58384}
!23 = !{!"pac_s", !24, i64 0, !25, i64 56, !25, i64 19496, !25, i64 38936, !31, i64 58376, !32, i64 58384, !33, i64 58392, !34, i64 58400, !26, i64 58408, !35, i64 58520, !15, i64 58640, !36, i64 58648, !36, i64 60432, !37, i64 62216, !38, i64 62224, !15, i64 62232}
!24 = !{!"pai_s", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48}
!25 = !{!"ecache_s", !26, i64 0, !27, i64 112, !27, i64 9768, !8, i64 19424, !8, i64 19428, !12, i64 19432}
!26 = !{!"malloc_mutex_s", !9, i64 0}
!27 = !{!"eset_s", !9, i64 0, !9, i64 32, !9, i64 6432, !28, i64 9632, !15, i64 9640, !8, i64 9648}
!28 = !{!"", !29, i64 0}
!29 = !{!"", !30, i64 0}
!30 = !{!"p1 _ZTS7edata_s", !19, i64 0}
!31 = !{!"p1 _ZTS6base_s", !19, i64 0}
!32 = !{!"p1 _ZTS6emap_s", !19, i64 0}
!33 = !{!"p1 _ZTS13edata_cache_s", !19, i64 0}
!34 = !{!"exp_grow_s", !8, i64 0, !8, i64 4}
!35 = !{!"san_bump_alloc_s", !26, i64 0, !30, i64 112}
!36 = !{!"decay_s", !26, i64 0, !12, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !16, i64 144, !15, i64 152, !16, i64 160, !16, i64 168, !9, i64 176, !16, i64 1776}
!37 = !{!"p1 _ZTS14malloc_mutex_s", !19, i64 0}
!38 = !{!"p1 _ZTS11pac_stats_s", !19, i64 0}
!39 = !{!25, !8, i64 19424}
!40 = !{!9, !9, i64 0}
!41 = !{!25, !12, i64 19432}
!42 = !{i8 0, i8 2}
!43 = !{}
!44 = !{!45, !19, i64 8}
!45 = !{!"edata_s", !16, i64 0, !19, i64 8, !9, i64 16, !46, i64 24, !16, i64 32, !9, i64 40, !9, i64 64}
!46 = !{!"p1 _ZTS8hpdata_s", !19, i64 0}
!47 = !{!45, !16, i64 0}
!48 = !{!23, !38, i64 62224}
!49 = !{!23, !33, i64 58392}
!50 = !{!34, !8, i64 0}
!51 = !{!16, !16, i64 0}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!55, !8, i64 0}
!55 = !{!"ehooks_s", !8, i64 0, !56, i64 8}
!56 = !{!"", !19, i64 0}
!57 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!58 = !{!59, !19, i64 0}
!59 = !{!"extent_hooks_s", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64}
!60 = distinct !{null, null, null}
!61 = !{!25, !8, i64 19428}
!62 = !{!45, !16, i64 32}
!63 = !{!34, !8, i64 4}
!64 = distinct !{null}
!65 = distinct !{!65, !53}
!66 = distinct !{null}
!67 = !{!28, !30, i64 0}
!68 = !{!59, !19, i64 8}
!69 = distinct !{null, null}
!70 = !{!59, !19, i64 48}
!71 = distinct !{null}
!72 = !{!59, !19, i64 40}
!73 = distinct !{null}
!74 = !{!59, !19, i64 32}
!75 = distinct !{null}
!76 = !{!59, !19, i64 16}
!77 = distinct !{null}
!78 = !{!59, !19, i64 24}
!79 = distinct !{null}
!80 = !{!59, !19, i64 56}
!81 = distinct !{null}
!82 = !{!59, !19, i64 64}
!83 = distinct !{null}
!84 = distinct !{!84, !53}
end_hunk_1
