Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/arena?download=true
inline.NumInlined: 328
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@je_arena_stats_merge:atomic_store_zu.exit
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 40 ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !74
  %i.hr = add i64 %i.hq, 1
  store i64 %i.hr, ptr %i.hp, align 8, !tbaa !74
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.s, %bb.r
  call void @je_nstime_add(ptr noundef nonnull %i.gs, ptr noundef nonnull %i.hg) #18
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 2 uses
  %i.ht = call i32 @je_nstime_compare(ptr noundef nonnull %i.hs, ptr noundef nonnull %i.gt) #18
  %i.hu = icmp sgt i32 %i.ht, 0
  br i1 %i.hu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %malloc_mutex_lock.exit.i
  call void @je_nstime_copy(ptr noundef nonnull %i.gt, ptr noundef nonnull %i.hs) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %malloc_mutex_lock.exit.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hw = load <2 x i64>, ptr %i.hv, align 8, !tbaa !18
  %i.hx = load <2 x i64>, ptr %i.gu, align 8, !tbaa !18
  %i.hy = add <2 x i64> %i.hx, %i.hw
  store <2 x i64> %i.hy, ptr %i.gu, align 8, !tbaa !18
  %i.hz = load i32, ptr %i.gv, align 8, !tbaa !166
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !166 ; 2 uses
  %i.ic = icmp ult i32 %i.hz, %i.ib
  br i1 %i.ic, label %bb.v, label %bin_stats_merge.exit

bb.v:                                             ; preds = %bb.u
  store i32 %i.ib, ptr %i.gv, align 8, !tbaa !166
  br label %bin_stats_merge.exit

bin_stats_merge.exit:                             ; preds = %bb.u, %bb.v
  store atomic i32 0, ptr %i.gw monotonic, align 4
  %i.id = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !74
  %i.if = load i64, ptr %i.gx, align 8, !tbaa !74
  %i.ig = add i64 %i.if, %i.ie
  store i64 %i.ig, ptr %i.gx, align 8, !tbaa !74
  %i.ih = load i64, ptr %i.hk, align 8, !tbaa !72
  %i.ii = load i64, ptr %i.gy, align 8, !tbaa !72
  %i.ij = add i64 %i.ii, %i.ih
  store i64 %i.ij, ptr %i.gy, align 8, !tbaa !72
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hg, i64 112
  %i.il = load <2 x i64>, ptr %i.ik, align 8, !tbaa !18
  %i.im = load <2 x i64>, ptr %i.gq, align 8, !tbaa !18
  %i.in = add <2 x i64> %i.im, %i.il
  store <2 x i64> %i.in, ptr %i.gq, align 8, !tbaa !18
  %i.io = getelementptr inbounds nuw i8, ptr %i.hg, i64 128
  %i.ip = load <2 x i64>, ptr %i.io, align 8, !tbaa !18
  %i.iq = load <2 x i64>, ptr %i.gz, align 8, !tbaa !18
  %i.ir = add <2 x i64> %i.iq, %i.ip
  store <2 x i64> %i.ir, ptr %i.gz, align 8, !tbaa !18
  %i.is = getelementptr inbounds nuw i8, ptr %i.hg, i64 144
  %i.it = load <2 x i64>, ptr %i.is, align 8, !tbaa !18
  %i.iu = load <2 x i64>, ptr %i.ha, align 8, !tbaa !18
  %i.iv = add <2 x i64> %i.iu, %i.it
  store <2 x i64> %i.iv, ptr %i.ha, align 8, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hg, i64 160
  %i.ix = load <2 x i64>, ptr %i.iw, align 8, !tbaa !18
  %i.iy = load <2 x i64>, ptr %i.hb, align 8, !tbaa !18
  %i.iz = add <2 x i64> %i.iy, %i.ix
  store <2 x i64> %i.iz, ptr %i.hb, align 8, !tbaa !18
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hg, i64 176
  %i.jb = load <2 x i64>, ptr %i.ja, align 8, !tbaa !18
  %i.jc = load <2 x i64>, ptr %i.hc, align 8, !tbaa !18
  %i.jd = add <2 x i64> %i.jc, %i.jb
  store <2 x i64> %i.jd, ptr %i.hc, align 8, !tbaa !18
  %i.je = getelementptr inbounds nuw i8, ptr %i.hg, i64 64
  store atomic i8 0, ptr %i.je monotonic, align 8
  %i.jf = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.hh) #18 ; 0 uses
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.jg = load i32, ptr %i.go, align 4, !tbaa !94
  %i.jh = zext i32 %i.jg to i64
  %i.ji = icmp samesign ult i64 %indvars.iv.next173, %i.jh
  br i1 %i.ji, label %bb.p, label %._crit_edge, !llvm.loop !146
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @je_base_stats_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @je_pa_shard_stats_merge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_pa_shard_mtx_stats_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_nstime_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_nstime_subtract(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
tsdn_witness_tsdp_get.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 70944 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 71064
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.a, label %bb.e

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 74520
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12352
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 71016 ; 2 uses
  %i.i = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.h) #18
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %malloc_mutex_trylock_final.exit.i.i, label %bb.b

malloc_mutex_trylock_final.exit.i.i:              ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 71008
  store atomic i8 1, ptr %i.j monotonic, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.a) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %malloc_mutex_trylock_final.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 71000 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !72
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 70992 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73
  %.not.i.i.i = icmp eq ptr %i.o, %0
  br i1 %.not.i.i.i, label %arena_decay_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.n, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 70984 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !74
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !74
  br label %arena_decay_impl.exit

arena_decay_impl.exit:                            ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12312
  tail call void @je_pac_decay_all(ptr noundef %0, ptr noundef nonnull %i.s, ptr noundef nonnull %i.a, ptr noundef %i.f, ptr noundef nonnull %i.g, i1 noundef zeroext true) #18
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 71008
  store atomic i8 0, ptr %i.t monotonic, align 8
  %i.u = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #18 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %arena_decay_impl.exit, %tsdn_witness_tsdp_get.exit
  %i.v = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !96, !noundef !97
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %arena_background_thread_inactivity_check.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %1, i64 80640      ; 2 uses
  %.val.i = load i32, ptr %i.x, align 64, !tbaa !98
  %i.y = load ptr, ptr @je_background_thread_info, align 8, !tbaa !100
  %i.z = zext i32 %.val.i to i64
  %i.aa = load i64, ptr @je_max_background_threads, align 8, !tbaa !18
  %i.ab = urem i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw [208 x i8], ptr %i.y, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 172
  %i.ae = load atomic i8, ptr %i.ad acquire, align 1, !range !96, !noundef !97
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.g, label %arena_background_thread_inactivity_check.exit

bb.g:                                             ; preds = %bb.f
  %.val6.i = load i32, ptr %i.x, align 64, !tbaa !98
  tail call fastcc void @arena_maybe_do_deferred_work(ptr noundef %0, i32 %.val6.i, ptr noundef nonnull %i.a, i64 noundef 0)
  br label %arena_background_thread_inactivity_check.exit

arena_background_thread_inactivity_check.exit:    ; preds = %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_extent_alloc_large(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i8 0, ptr %i.b, align 1, !tbaa !101
  %i.c = icmp ult i64 %2, 4097
  br i1 %i.c, label %bb.b, label %bb.c, !prof !102

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %2, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !103
  %i.h = zext i8 %i.g to i32
  br label %sz_size2index.exit

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.i, label %sz_size2index.exit, label %bb.d, !prof !104

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %2, 1
  %i.k = add i64 %i.j, -1
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.k, i1 true) ; 3 uses
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i64 60, %i.l
  %5 = ashr exact i64 -1152921504606846976, %i.l
  %i.o = add nsw i64 %2, -1
  %6 = and i64 %5, %i.o
  %i.p = lshr i64 %6, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 3
  %i.s = shl nuw nsw i32 %i.m, 2
  %reass.sub = sub nsw i32 %i.r, %i.s
  %i.t = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.c, %bb.b
  %.0.i = phi i32 [ %i.h, %bb.b ], [ %i.t, %bb.d ], [ 232, %bb.c ]
  %i.u = load i64, ptr @je_sz_large_pad, align 8, !tbaa !18
  %i.v = add i64 %i.u, %2                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80648
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.y = tail call ptr @je_base_ehooks_get(ptr noundef %i.x) #18
  %i.z = load i64, ptr @je_opt_san_guard_large, align 8, !tbaa !18
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %san_large_extent_decide_guard.exit, label %bb.e

bb.e:                                             ; preds = %sz_size2index.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load atomic ptr, ptr %i.ab acquire, align 8
  %i.ad = icmp ne ptr %i.ac, @je_ehooks_default_extent_hooks
  %i.ae = icmp eq ptr %0, null
  %or.cond14.i = or i1 %i.ae, %i.ad
  br i1 %or.cond14.i, label %san_large_extent_decide_guard.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !18 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 2                   ; 2 uses
  br i1 %i.ah, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %bb.f
  %i.ai = add i64 %i.ag, -1
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp eq i64 %i.ag, 1
  %i.ak = icmp ult i64 %3, 4097
  %or.cond.i = and i1 %i.ak, %i.aj
  %i.al = add i64 %i.v, 8192
  %i.am = icmp ult i64 %i.al, 8070450532247928833
  %or.cond16.i = and i1 %i.am, %or.cond.i
  br i1 %or.cond16.i, label %bb.h, label %san_large_extent_decide_guard.exit

bb.h:                                             ; preds = %bb.g
  %i.an = load i64, ptr @je_opt_san_guard_large, align 8, !tbaa !18
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %.thread.i
  %.sink.i = phi i64 [ %i.ai, %.thread.i ], [ %i.an, %bb.h ]
  store i64 %.sink.i, ptr %i.af, align 8, !tbaa !18
  br label %san_large_extent_decide_guard.exit

san_large_extent_decide_guard.exit:               ; preds = %sz_size2index.exit, %bb.e, %bb.g, %.sink.split.i
  %.1.i = phi i1 [ false, %sz_size2index.exit ], [ false, %bb.g ], [ false, %bb.e ], [ %i.ah, %.sink.split.i ]
  %i.ao = load i64, ptr @je_opt_calloc_madvise_threshold, align 8
  %i.ap = icmp uge i64 %2, %i.ao
  %i.aq = select i1 %4, i1 %i.ap, i1 false        ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 12288
  %i.as = call ptr @je_pa_alloc(ptr noundef %0, ptr noundef nonnull %i.ar, i64 noundef %i.v, i64 noundef %3, i1 noundef zeroext false, i32 noundef %.0.i, i1 noundef zeroext %i.aq, i1 noundef zeroext %.1.i, ptr noundef nonnull %i.b) #18 ; 6 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.r, label %bb.i

bb.i:                                             ; preds = %san_large_extent_decide_guard.exit
  call fastcc void @arena_large_malloc_stats_update(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2)
  %i.au = load i64, ptr @je_sz_large_pad, align 8, !tbaa !18 ; 2 uses
  %.not33 = icmp ne i64 %i.au, 0
  %i.av = icmp ult i64 %3, 4096
  %or.cond37 = and i1 %i.av, %.not33
  br i1 %or.cond37, label %bb.j, label %arena_cache_oblivious_randomize.exit

bb.j:                                             ; preds = %bb.i
  %i.aw = add nuw nsw i64 %3, 63
  %i.ax = and i64 %i.aw, 8128                     ; 2 uses
  %i.ay = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %i.ay)
  %i.az = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ax, i1 true) ; 2 uses
  %i.ba = xor i64 %i.az, 63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.bb = icmp eq ptr %0, null
  br i1 %i.bb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !18
  %i.be = mul i64 %i.bd, 6364136223846793005
  %i.bf = add i64 %i.be, 1442695040888963407      ; 2 uses
  store i64 %i.bf, ptr %i.bc, align 8, !tbaa !18
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bg = ptrtoint ptr %i.a to i64
  %i.bh = mul i64 %i.bg, 6364136223846793005
  %i.bi = add i64 %i.bh, 1442695040888963407
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink.i35 = phi i64 [ %i.bi, %bb.l ], [ %i.bf, %bb.k ]
  %i.bj = sub nuw nsw i64 115, %i.az
  %i.bk = lshr i64 %.sink.i35, %i.bj
  %i.bl = shl nuw nsw i64 %i.bk, %i.ba
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !106
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %arena_cache_oblivious_randomize.exit

arena_cache_oblivious_randomize.exit:             ; preds = %bb.m, %bb.i
  %.not = xor i1 %4, true
  %or.cond = or i1 %i.aq, %.not
  br i1 %or.cond, label %bb.r, label %bb.n

bb.n:                                             ; preds = %arena_cache_oblivious_randomize.exit
  %.val = load i64, ptr %i.as, align 8, !tbaa !107 ; 2 uses
  %i.bp = and i64 %.val, 32768
  %.not38 = icmp eq i64 %i.bp, 0
  br i1 %.not38, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr i8, ptr %i.as, i64 8
  %.val34 = load ptr, ptr %i.bq, align 8, !tbaa !106
  %i.br = trunc i64 %.val to i32
  %i.bs = lshr i32 %i.br, 20
  %i.bt = and i32 %i.bs, 255                      ; 2 uses
  %i.bu = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !101, !range !96, !noundef !97
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = icmp samesign ugt i32 %i.bt, 35
  %or.cond.not.i = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = zext nneg i32 %i.bt to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !18
  br label %edata_usize_get.exit

bb.q:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !103
  %i.cc = and i64 %i.cb, -4096
  %i.cd = sub i64 %i.cc, %i.au
  br label %edata_usize_get.exit

edata_usize_get.exit:                             ; preds = %bb.p, %bb.q
  %.0.i36 = phi i64 [ %i.bz, %bb.p ], [ %i.cd, %bb.q ]
  call void @llvm.memset.p0.i64(ptr align 1 %.val34, i8 0, i64 %.0.i36, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %arena_cache_oblivious_randomize.exit, %bb.n, %edata_usize_get.exit, %san_large_extent_decide_guard.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret ptr %i.as
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_get_ehooks(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80648
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = tail call ptr @je_base_ehooks_get(ptr noundef %i.b) #18
  ret ptr %i.c
}

declare ptr @je_pa_alloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @arena_large_malloc_stats_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 4097
  br i1 %i.a, label %sz_size2index.exit.thread, label %bb.b, !prof !102

sz_size2index.exit.thread:                        ; preds = %bb.a
  %i.b = add nuw nsw i64 %2, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !103
  %i.f = zext i8 %i.e to i32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.g, label %sz_size2index.exit.thread18, label %sz_size2index.exit, !prof !104

sz_size2index.exit:                               ; preds = %bb.b
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.i, i1 true) ; 3 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 2
  %i.m = sub nuw nsw i64 60, %i.j
  %3 = ashr exact i64 -1152921504606846976, %i.j
  %i.n = add nsw i64 %2, -1
  %4 = and i64 %3, %i.n
  %i.o = lshr i64 %4, %i.m
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 3
  %reass.sub.i = sub nsw i32 %i.q, %i.l
  %i.r = add nsw i32 %reass.sub.i, 229            ; 2 uses
  %i.s = icmp samesign ult i64 %2, 16384
  br i1 %i.s, label %bb.c, label %sz_size2index.exit.thread18

bb.c:                                             ; preds = %sz_size2index.exit.thread, %sz_size2index.exit
  %.0.i17 = phi i32 [ %i.f, %sz_size2index.exit.thread ], [ %i.r, %sz_size2index.exit ]
  %i.t = zext nneg i32 %.0.i17 to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !13
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72 ; 2 uses
  %i.z = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.y) #18
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.d

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store atomic i8 1, ptr %i.aa monotonic, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.x) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %malloc_mutex_trylock_final.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !72
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !72
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !73
  %.not.i.i = icmp eq ptr %i.af, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.ae, align 8, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !74
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !74
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.e, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 112 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !110
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !110
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store atomic i8 0, ptr %i.am monotonic, align 8
  %i.an = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.y) #18 ; 0 uses
  br label %bb.g

sz_size2index.exit.thread18:                      ; preds = %bb.b, %sz_size2index.exit
  %.0.i20 = phi i32 [ %i.r, %sz_size2index.exit ], [ 232, %bb.b ]
  %i.ao = add nsw i32 %.0.i20, -36
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 992
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.au = atomicrmw add ptr %i.at, i64 %2 monotonic, align 8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %sz_size2index.exit.thread18, %malloc_mutex_lock.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define hidden void @je_arena_extent_dalloc_large_prep(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.val.i = load i64, ptr %2, align 8, !tbaa !107
  %i.a = trunc i64 %.val.i to i32
  %i.b = lshr i32 %i.a, 20
  %i.c = and i32 %i.b, 255                        ; 2 uses
  %i.d = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !101, !range !96, !noundef !97
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = icmp samesign ugt i32 %i.c, 35
  %or.cond.not.i = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %i.c to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18
  br label %edata_usize_get.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !103
  %i.l = and i64 %i.k, -4096
  %i.m = load i64, ptr @je_sz_large_pad, align 8, !tbaa !18
  %i.n = sub i64 %i.l, %i.m
  br label %edata_usize_get.exit

edata_usize_get.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.i, %bb.b ], [ %i.n, %bb.c ]
  tail call fastcc void @arena_large_dalloc_stats_update(ptr noundef %0, ptr noundef %1, i64 noundef %.0.i)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arena_large_dalloc_stats_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 4097
  br i1 %i.a, label %sz_size2index.exit.thread, label %bb.b, !prof !102

sz_size2index.exit.thread:                        ; preds = %bb.a
  %i.b = add nuw nsw i64 %2, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !103
  %i.f = zext i8 %i.e to i32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.g, label %sz_size2index.exit.thread18, label %sz_size2index.exit, !prof !104

sz_size2index.exit:                               ; preds = %bb.b
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.i, i1 true) ; 3 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 2
  %i.m = sub nuw nsw i64 60, %i.j
  %3 = ashr exact i64 -1152921504606846976, %i.j
  %i.n = add nsw i64 %2, -1
  %4 = and i64 %3, %i.n
  %i.o = lshr i64 %4, %i.m
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 3
  %reass.sub.i = sub nsw i32 %i.q, %i.l
  %i.r = add nsw i32 %reass.sub.i, 229            ; 2 uses
  %i.s = icmp samesign ult i64 %2, 16384
  br i1 %i.s, label %bb.c, label %sz_size2index.exit.thread18

bb.c:                                             ; preds = %sz_size2index.exit.thread, %sz_size2index.exit
  %.0.i17 = phi i32 [ %i.f, %sz_size2index.exit.thread ], [ %i.r, %sz_size2index.exit ]
  %i.t = zext nneg i32 %.0.i17 to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !13
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72 ; 2 uses
  %i.z = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.y) #18
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.d

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store atomic i8 1, ptr %i.aa monotonic, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.x) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %malloc_mutex_trylock_final.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !72
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !72
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !73
  %.not.i.i = icmp eq ptr %i.af, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.ae, align 8, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !74
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !74
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.e, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 120 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !111
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !111
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store atomic i8 0, ptr %i.am monotonic, align 8
  %i.an = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.y) #18 ; 0 uses
  br label %bb.g

sz_size2index.exit.thread18:                      ; preds = %bb.b, %sz_size2index.exit
  %.0.i20 = phi i32 [ %i.r, %sz_size2index.exit ], [ 232, %bb.b ]
  %i.ao = add nsw i32 %.0.i20, -36
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 992
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = atomicrmw add ptr %i.as, i64 1 monotonic, align 8 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.av = atomicrmw sub ptr %i.au, i64 %2 monotonic, align 8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %sz_size2index.exit.thread18, %malloc_mutex_lock.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_arena_extent_ralloc_large_shrink(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.val.i = load i64, ptr %2, align 8, !tbaa !107
  %i.a = trunc i64 %.val.i to i32
  %i.b = lshr i32 %i.a, 20
  %i.c = and i32 %i.b, 255                        ; 2 uses
  %i.d = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !101, !range !96, !noundef !97
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = icmp samesign ugt i32 %i.c, 35
  %or.cond.not.i = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %i.c to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18
  br label %edata_usize_get.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !103
  %i.l = and i64 %i.k, -4096
  %i.m = load i64, ptr @je_sz_large_pad, align 8, !tbaa !18
  %i.n = sub i64 %i.l, %i.m
  br label %edata_usize_get.exit

edata_usize_get.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.i, %bb.b ], [ %i.n, %bb.c ]
  tail call fastcc void @arena_large_malloc_stats_update(ptr noundef %0, ptr noundef %1, i64 noundef %.0.i)
  tail call fastcc void @arena_large_dalloc_stats_update(ptr noundef %0, ptr noundef %1, i64 noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_arena_extent_ralloc_large_expand(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.val.i = load i64, ptr %2, align 8, !tbaa !107
  %i.a = trunc i64 %.val.i to i32
  %i.b = lshr i32 %i.a, 20
  %i.c = and i32 %i.b, 255                        ; 2 uses
  %i.d = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !101, !range !96, !noundef !97
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = icmp samesign ugt i32 %i.c, 35
  %or.cond.not.i = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %i.c to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18
  br label %edata_usize_get.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !103
  %i.l = and i64 %i.k, -4096
  %i.m = load i64, ptr @je_sz_large_pad, align 8, !tbaa !18
  %i.n = sub i64 %i.l, %i.m
  br label %edata_usize_get.exit

edata_usize_get.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.i, %bb.b ], [ %i.n, %bb.c ]
  tail call fastcc void @arena_large_malloc_stats_update(ptr noundef %0, ptr noundef %1, i64 noundef %.0.i)
  tail call fastcc void @arena_large_dalloc_stats_update(ptr noundef %0, ptr noundef %1, i64 noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_arena_decay_ms_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !96, !noundef !97
  %i.b = trunc nuw i8 %i.a to i1
  %..i = select i1 %i.b, i32 1, i32 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12288
  %i.d = tail call zeroext i1 @je_pa_decay_ms_set(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %2, i64 noundef %3, i32 noundef %..i) #18
  ret i1 %i.d
}

declare zeroext i1 @je_pa_decay_ms_set(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @je_pa_decay_ms_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_arena_decay(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12288
  tail call void @je_pa_shard_flush(ptr noundef %0, ptr noundef nonnull %i.a) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 70944
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 74520 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12352
  %i.f = tail call fastcc noundef zeroext i1 @arena_decay_impl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef %i.d, ptr noundef nonnull %i.e, i1 noundef zeroext %2, i1 noundef zeroext %3)
  br i1 %i.f, label %arena_decay_muzzy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 31904
  %i.h = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.g) #18
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 41560
  %i.j = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.i) #18
  %i.k = sub i64 0, %i.h
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %pa_shard_dont_decay_muzzy.exit.i, label %pa_shard_dont_decay_muzzy.exit.thread.i

pa_shard_dont_decay_muzzy.exit.i:                 ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12312
  %i.n = tail call i64 @je_pac_decay_ms_get(ptr noundef nonnull %i.m, i32 noundef 2) #18
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %arena_decay_muzzy.exit, label %pa_shard_dont_decay_muzzy.exit.thread.i

pa_shard_dont_decay_muzzy.exit.thread.i:          ; preds = %pa_shard_dont_decay_muzzy.exit.i, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72728
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 31792
  %i.t = tail call fastcc zeroext i1 @arena_decay_impl(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, i1 noundef zeroext %2, i1 noundef zeroext %3) ; 0 uses
  br label %arena_decay_muzzy.exit

arena_decay_muzzy.exit:                           ; preds = %pa_shard_dont_decay_muzzy.exit.thread.i, %pa_shard_dont_decay_muzzy.exit.i, %bb.c
  ret void
}

end_hunk_0
begin_hunk_1_@je_arena_malloc_hard:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %malloc_mutex_trylock_final.exit.i55.i
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !72
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.y, align 8, !tbaa !72
  %i.aq = load ptr, ptr %i.ab, align 8, !tbaa !73
  %.not.i.i54.i = icmp eq ptr %i.aq, %0
  br i1 %.not.i.i54.i, label %malloc_mutex_lock.exit56.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %0, ptr %i.ab, align 8, !tbaa !73
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !74
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !74
  br label %malloc_mutex_lock.exit56.i

malloc_mutex_lock.exit56.i:                       ; preds = %bb.n, %bb.m
  %i.au = call ptr @je_bin_malloc_no_fresh_slab(ptr noundef %0, i1 noundef zeroext %i.t, ptr noundef nonnull %i.u, i32 noundef %3) #18 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.o, label %bb.r

bb.o:                                             ; preds = %malloc_mutex_lock.exit56.i
  %i.aw = icmp eq ptr %i.am, null
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store atomic i8 0, ptr %i.aj monotonic, align 8
  %i.ax = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.v) #18 ; 0 uses
  br label %arena_malloc_small.exit

bb.q:                                             ; preds = %bb.o
  %i.ay = call ptr @je_bin_malloc_with_fresh_slab(ptr noundef %0, ptr noundef nonnull %i.u, i32 noundef %3, ptr noundef nonnull %i.am) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %malloc_mutex_lock.exit56.i, %malloc_mutex_lock.exit.i
  %.048.i = phi ptr [ null, %bb.q ], [ %i.am, %malloc_mutex_lock.exit56.i ], [ null, %malloc_mutex_lock.exit.i ] ; 2 uses
  %.0.i19 = phi ptr [ %i.ay, %bb.q ], [ %i.au, %malloc_mutex_lock.exit56.i ], [ %i.ag, %malloc_mutex_lock.exit.i ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 112 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !110
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !110
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 2 uses
  %i.bd = load <2 x i64>, ptr %i.bc, align 8, !tbaa !18
  %i.be = add <2 x i64> %i.bd, splat (i64 1)
  store <2 x i64> %i.be, ptr %i.bc, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store atomic i8 0, ptr %i.bf monotonic, align 8
  %i.bg = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.v) #18 ; 0 uses
  %.not.i20 = icmp eq ptr %.048.i, null
  br i1 %.not.i20, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1, !tbaa !101
  %i.bh = getelementptr inbounds nuw i8, ptr %.01422, i64 12288
  call void @je_pa_dalloc(ptr noundef %0, ptr noundef nonnull %i.bh, ptr noundef nonnull %.048.i, ptr noundef nonnull %i.a) #18
  %i.bi = load i8, ptr %i.a, align 1, !tbaa !101, !range !96, !noundef !97
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.t, label %je_arena_slab_dalloc.exit.i

bb.t:                                             ; preds = %bb.s
  call void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %.01422)
  br label %je_arena_slab_dalloc.exit.i

je_arena_slab_dalloc.exit.i:                      ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.u

bb.u:                                             ; preds = %je_arena_slab_dalloc.exit.i, %bb.r
  br i1 %4, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i19, i8 0, i64 %i.q, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %i.c, label %arena_malloc_small.exit, label %bb.x, !prof !104

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !103
  %i.bo = load i32, ptr %i.bk, align 4, !tbaa !123 ; 2 uses
  %i.bp = add nsw i32 %i.bo, -1
  store i32 %i.bp, ptr %i.bk, align 4, !tbaa !123
  %i.bq = icmp slt i32 %i.bo, 1
  br i1 %i.bq, label %bb.y, label %arena_malloc_small.exit, !prof !104

bb.y:                                             ; preds = %bb.x
  %i.br = icmp sgt i8 %i.bn, 0
  br i1 %i.br, label %ticker_geom_ticks.exit.i, label %bb.z

ticker_geom_ticks.exit.i:                         ; preds = %bb.y
  store i32 0, ptr %i.bk, align 4, !tbaa !123
  br label %arena_malloc_small.exit

bb.z:                                             ; preds = %bb.y
  %i.bs = load i64, ptr %i.bl, align 8, !tbaa !18
  %i.bt = mul i64 %i.bs, 6364136223846793005
  %i.bu = add i64 %i.bt, 1442695040888963407      ; 2 uses
  store i64 %i.bu, ptr %i.bl, align 8, !tbaa !18
  %i.bv = lshr i64 %i.bu, 58
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !124
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.bv
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !103
  %i.cb = zext i8 %i.ca to i64
  %i.cc = mul nsw i64 %i.cb, %i.by
  %i.cd = udiv i64 %i.cc, 61
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.bk, align 8, !tbaa !123
  call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %.01422, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %arena_malloc_small.exit

arena_malloc_small.exit:                          ; preds = %bb.p, %bb.w, %bb.x, %ticker_geom_ticks.exit.i, %bb.z
  %.049.i = phi ptr [ null, %bb.p ], [ %.0.i19, %ticker_geom_ticks.exit.i ], [ %.0.i19, %bb.z ], [ %.0.i19, %bb.w ], [ %.0.i19, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.ag

bb.aa:                                            ; preds = %arena_choose_maybe_huge.exit.thread
  %i.cf = icmp ult i64 %2, 4097
  br i1 %i.cf, label %bb.ab, label %bb.ac, !prof !102

bb.ab:                                            ; preds = %bb.aa
  %i.cg = add nuw nsw i64 %2, 7
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !103
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !18
  br label %sz_s2u.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cn = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.cn, label %sz_s2u.exit, label %bb.ad, !prof !104

bb.ad:                                            ; preds = %bb.ac
  %i.co = icmp samesign ugt i64 %2, 14336
  %i.cp = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !96
  %i.cq = trunc nuw i8 %i.cp to i1
  %or.cond = select i1 %i.co, i1 %i.cq, i1 false
  br i1 %or.cond, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cr = shl nuw i64 %2, 1
  %i.cs = add i64 %i.cr, -1
  %i.ct = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.cs, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ct
  %i.cu = lshr i64 1152921504606846975, %i.ct
  %i.cv = add nuw nsw i64 %2, %i.cu
  %i.cw = and i64 %i.cv, %notmask.i
  br label %sz_s2u.exit

bb.af:                                            ; preds = %bb.ad
  %i.cx = add nuw nsw i64 %2, 4095
  %i.cy = and i64 %i.cx, 9223372036854771712
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ab
  %.0.i15 = phi i64 [ %i.cm, %bb.ab ], [ %i.cw, %bb.ae ], [ %i.cy, %bb.af ], [ 0, %bb.ac ]
  %i.cz = tail call ptr @je_large_malloc(ptr noundef %0, ptr noundef nonnull %.01422, i64 noundef %.0.i15, i1 noundef zeroext %4) #18
  br label %bb.ag

bb.ag:                                            ; preds = %arena_choose_maybe_huge.exit, %sz_s2u.exit, %arena_malloc_small.exit
  %.0 = phi ptr [ %i.cz, %sz_s2u.exit ], [ %.049.i, %arena_malloc_small.exit ], [ null, %arena_choose_maybe_huge.exit ]
  ret ptr %.0
}

declare ptr @je_large_malloc(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  br i1 %5, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 4097
  br i1 %i.b, label %bb.c, label %bb.d, !prof !102

bb.c:                                             ; preds = %bb.b
  %i.c = add nuw nsw i64 %2, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !103
  %i.g = zext i8 %i.f to i32
  br label %sz_size2index.exit

bb.d:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.h, label %sz_size2index.exit, label %bb.e, !prof !104

bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw i64 %2, 1
  %i.j = add i64 %i.i, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.j, i1 true) ; 3 uses
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = sub nuw nsw i64 60, %i.k
  %7 = ashr exact i64 -1152921504606846976, %i.k
  %i.n = add nsw i64 %2, -1
  %8 = and i64 %7, %i.n
  %i.o = lshr i64 %8, %i.m
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 3
  %i.r = shl nuw nsw i32 %i.l, 2
  %reass.sub = sub nsw i32 %i.q, %i.r
  %i.s = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.e, %bb.d, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.c ], [ %i.s, %bb.e ], [ 232, %bb.d ] ; 5 uses
  %.not.i = icmp eq ptr %6, null
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !104

bb.f:                                             ; preds = %sz_size2index.exit
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = zext nneg i32 %.0.i to i64               ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.u ; 9 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !87   ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !91   ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !128 ; 2 uses
  %i.ac = trunc i64 %i.y to i16
  %.not.i22 = icmp eq i16 %i.ab, %i.ac
  br i1 %.not.i22, label %bb.h, label %bb.g, !prof !104

bb.g:                                             ; preds = %bb.f
  store ptr %i.z, ptr %i.v, align 8, !tbaa !87
  br label %cache_bin_alloc_impl.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !88
  %.not21.i = icmp eq i16 %i.ae, %i.ab
  br i1 %.not21.i, label %cache_bin_alloc_impl.exit, label %bb.i, !prof !104

bb.i:                                             ; preds = %bb.h
  store ptr %i.z, ptr %i.v, align 8, !tbaa !87
  %i.af = ptrtoint ptr %i.z to i64
  %i.ag = trunc i64 %i.af to i16
  store i16 %i.ag, ptr %i.aa, align 8, !tbaa !128
  br label %cache_bin_alloc_impl.exit.thread

cache_bin_alloc_impl.exit:                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ah = tail call fastcc ptr @arena_choose(ptr noundef %0, ptr noundef %1) ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.thread, label %bb.j, !prof !104

bb.j:                                             ; preds = %cache_bin_alloc_impl.exit
  %.val = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.aj = icmp eq ptr %.val, @je_disabled_bin
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !104

bb.k:                                             ; preds = %bb.j
  %i.ak = tail call ptr @je_arena_malloc_hard(ptr noundef %0, ptr noundef nonnull %i.ah, i64 noundef %2, i32 noundef %.0.i, i1 noundef zeroext %4, i1 noundef zeroext true)
  br label %.thread

.thread:                                          ; preds = %cache_bin_alloc_impl.exit, %bb.k
  %.0.i21.ph = phi ptr [ %i.ak, %bb.k ], [ null, %cache_bin_alloc_impl.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %arena_malloc.exit

bb.l:                                             ; preds = %bb.j
  tail call void @je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %i.v, i32 noundef %.0.i, i1 noundef zeroext true) #18
  %i.al = call ptr @je_tcache_alloc_small_hard(ptr noundef %0, ptr noundef nonnull %i.ah, ptr noundef nonnull %6, ptr noundef nonnull %i.v, i32 noundef %.0.i, ptr noundef nonnull %i.a) #18
  %i.am = load i8, ptr %i.a, align 1, !tbaa !101, !range !96, !noundef !97
  %.not = icmp eq i8 %i.am, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %.not, label %arena_malloc.exit, label %cache_bin_alloc_impl.exit.thread

cache_bin_alloc_impl.exit.thread:                 ; preds = %bb.i, %bb.g, %bb.l
  %.132.i = phi ptr [ %i.al, %bb.l ], [ %i.x, %bb.g ], [ %i.x, %bb.i ] ; 2 uses
  br i1 %4, label %bb.m, label %bb.n, !prof !104

bb.m:                                             ; preds = %cache_bin_alloc_impl.exit.thread
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.u
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i, i8 0, i64 %i.ao, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %cache_bin_alloc_impl.exit.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !129
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !129
  br label %arena_malloc.exit

.critedge.i:                                      ; preds = %sz_size2index.exit
  %i.as = tail call ptr @je_arena_malloc_hard(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %.0.i, i1 noundef zeroext %4, i1 noundef zeroext true)
  br label %arena_malloc.exit

bb.o:                                             ; preds = %bb.a
  %i.at = icmp ult i64 %3, 65
  br i1 %i.at, label %bb.p, label %bb.q, !prof !102

bb.p:                                             ; preds = %bb.o
  %i.au = tail call ptr @je_large_malloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %4) #18
  br label %arena_malloc.exit

bb.q:                                             ; preds = %bb.o
  %i.av = tail call ptr @je_large_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) #18
  br label %arena_malloc.exit

arena_malloc.exit:                                ; preds = %.critedge.i, %.thread, %bb.l, %bb.n, %bb.q, %bb.p
  %.0 = phi ptr [ %i.av, %bb.q ], [ %i.au, %bb.p ], [ %i.as, %.critedge.i ], [ %.132.i, %bb.n ], [ null, %bb.l ], [ %.0.i21.ph, %.thread ]
  ret ptr %.0
}

declare ptr @je_large_palloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_arena_dalloc_small(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !prof !104

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #18
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %2, %bb.b ], [ %i.c, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i, i64 noundef %i.d)
  %i.e = load ptr, ptr %3, align 8, !tbaa !132    ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %.val.i = load i64, ptr %i.e, align 8, !tbaa !107 ; 3 uses
  %i.f = and i64 %.val.i, 4095
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.f
  %i.h = load atomic ptr, ptr %i.g monotonic, align 8 ; 5 uses
  %i.i = lshr i64 %.val.i, 20
  %i.j = and i64 %i.i, 255                        ; 3 uses
  %i.k = lshr i64 %.val.i, 38
  %i.l = and i64 %i.k, 63
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %i.j
  %i.n = load i32, ptr %i.m, align 4, !tbaa !13
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.o
  %i.q = getelementptr inbounds nuw [224 x i8], ptr %i.p, i64 %i.l ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 2 uses
  %i.s = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.r) #18
  %.not.i26.i = icmp eq i32 %i.s, 0
  br i1 %.not.i26.i, label %malloc_mutex_trylock_final.exit.i.i, label %bb.d

malloc_mutex_trylock_final.exit.i.i:              ; preds = %tsdn_rtree_ctx.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store atomic i8 1, ptr %i.t monotonic, align 1
  br label %bb.e

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.q) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %malloc_mutex_trylock_final.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !72
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73
  %.not.i.i.i = icmp eq ptr %i.y, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.x, align 8, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !74
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !74
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.f, %bb.e
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @je_arena_binind_div_info, i64 %i.j
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !13
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr i8, ptr %i.h, i64 80640
  %.val22.i = load i32, ptr %i.ag, align 64, !tbaa !98
  %i.ah = load i32, ptr @je_manual_arena_base, align 4, !tbaa !13
  %i.ai = icmp ult i32 %.val22.i, %i.ah           ; 2 uses
  %i.aj = getelementptr i8, ptr %i.e, i64 8
  %.val.i9 = load ptr, ptr %i.aj, align 8, !tbaa !106
  %i.ak = ptrtoint ptr %.val.i9 to i64
  %i.al = sub i64 %i.d, %i.ak
  %i.am = zext i32 %i.ad to i64
  %i.an = mul i64 %i.al, %i.am                    ; 2 uses
  %i.ao = lshr i64 %i.an, 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.aq = lshr i64 %i.an, 38
end_hunk_1
begin_hunk_2_@je_arena_ptr_array_flush:bb.a
  call fastcc void @arena_maybe_do_deferred_work(ptr noundef nonnull %0, i32 %.val35.i81, ptr noundef nonnull %i.pn, i64 noundef %.0.i78)
  br label %arena_decay_ticks.exit.i18

arena_decay_ticks.exit.i18:                       ; preds = %._crit_edge140, %pa_shard_dont_decay_muzzy.exit.i.i56, %bb.bj, %pa_shard_dont_decay_muzzy.exit.thread.i.i55, %bb.bv, %bb.bw, %ticker_geom_ticks.exit54
  %i.qj = and i32 %.061.i.lcssa, 65535            ; 2 uses
  %.not.i16 = icmp eq i32 %i.qj, 0
  br i1 %.not.i16, label %._crit_edge143, label %arena_get.exit45, !llvm.loop !189

.lr.ph139:                                        ; preds = %.lr.ph139.preheader, %bb.bz
  %indvars.iv177 = phi i64 [ 0, %.lr.ph139.preheader ], [ %indvars.iv.next178, %bb.bz ] ; 3 uses
  %.061.i136 = phi i32 [ 0, %.lr.ph139.preheader ], [ %.1.i19, %bb.bz ] ; 3 uses
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv177
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !103 ; 3 uses
  %.val25 = load i64, ptr %i.ql, align 8, !tbaa !107
  %i.qm = trunc i64 %.val25 to i32
  %i.qn = and i32 %i.qm, 4095
  %.not70.i = icmp eq i32 %i.qn, %i.mk
  br i1 %.not70.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph139
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv177
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !91
  %i.qq = zext i32 %.061.i136 to i64              ; 2 uses
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.qq
  store ptr %i.qp, ptr %i.qr, align 8, !tbaa !91
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.qq
  store ptr %i.ql, ptr %i.qs, align 8, !tbaa !103
  %i.qt = add i32 %.061.i136, 1
  br label %bb.bz

bb.by:                                            ; preds = %.lr.ph139
  call void @je_large_dalloc_finish(ptr noundef nonnull %0, ptr noundef nonnull %i.ql) #18
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.1.i19 = phi i32 [ %i.qt, %bb.bx ], [ %.061.i136, %bb.by ] ; 2 uses
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond181.not = icmp eq i64 %indvars.iv.next178, %wide.trip.count180
  br i1 %exitcond181.not, label %._crit_edge140, label %.lr.ph139, !llvm.loop !190

._crit_edge143:                                   ; preds = %arena_decay_ticks.exit.i18, %emap_edata_lookup_batch.exit
  %.5.lcssa = phi ptr [ %.0113, %emap_edata_lookup_batch.exit ], [ %.6, %arena_decay_ticks.exit.i18 ] ; 2 uses
  %.not68.i = icmp eq ptr %.5.lcssa, null
  br i1 %.not68.i, label %arena_ptr_array_flush_impl.exit, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge143
  %i.qu = load i64, ptr %.5.lcssa, align 8, !tbaa !194
  %i.qv = atomicrmw add ptr %i.i, i64 %i.qu monotonic, align 8 ; 0 uses
  %i.qw = atomicrmw add ptr %i.j, i64 1 monotonic, align 8 ; 0 uses
  br label %arena_ptr_array_flush_impl.exit

arena_ptr_array_flush_impl.exit:                  ; preds = %bb.ca, %._crit_edge143, %arena_ptr_array_flush_impl_small.exit
  call void @llvm.stackrestore.p0(ptr %savedstack)
  %i.qx = add i32 %spec.store.select, %.0         ; 2 uses
  %i.qy = icmp ult i32 %i.qx, %3
  br i1 %i.qy, label %bb.b, label %bb.cb, !llvm.loop !191

bb.cb:                                            ; preds = %arena_ptr_array_flush_impl.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_arena_ralloc_no_move(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %8 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c, !prof !104

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %7) #18
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i37 = phi ptr [ %7, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef %0, ptr noundef nonnull %.0.i37, i64 noundef %i.c)
  %i.d = load ptr, ptr %8, align 8, !tbaa !132    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.e = icmp ugt i64 %3, 8070450532247928832
  br i1 %i.e, label %arena_decay_ticks.exit, label %bb.d, !prof !104

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.f = icmp samesign ult i64 %3, 4097
  br i1 %i.f, label %bb.e, label %bb.f, !prof !102

bb.e:                                             ; preds = %bb.d
  %i.g = add nuw nsw i64 %3, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !103
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18
  br label %sz_s2u.exit36

bb.f:                                             ; preds = %bb.d
  %i.n = icmp samesign ugt i64 %3, 14336
  %i.o = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !96
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond67 = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond67, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = shl nuw i64 %3, 1
  %i.r = add i64 %i.q, -1
  %i.s = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.r, i1 true) ; 2 uses
  %notmask.i41 = ashr exact i64 -1152921504606846976, %i.s
  %i.t = lshr i64 1152921504606846975, %i.s
  %i.u = add nuw nsw i64 %3, %i.t
  %i.v = and i64 %i.u, %notmask.i41
  br label %sz_s2u.exit36

bb.h:                                             ; preds = %bb.f
  %i.w = add nuw nsw i64 %3, 4095
  %i.x = and i64 %i.w, 9223372036854771712
  br label %sz_s2u.exit36

sz_s2u.exit36:                                    ; preds = %bb.h, %bb.g, %bb.e
  %.0.i35 = phi i64 [ %i.m, %bb.e ], [ %i.v, %bb.g ], [ %i.x, %bb.h ] ; 3 uses
  %i.y = add i64 %4, %3                           ; 7 uses
  %i.z = icmp ult i64 %i.y, 4097
  br i1 %i.z, label %bb.i, label %bb.j, !prof !102

bb.i:                                             ; preds = %sz_s2u.exit36
  %i.aa = add nuw nsw i64 %i.y, 7
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !103
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !18
  br label %sz_s2u.exit

bb.j:                                             ; preds = %sz_s2u.exit36
  %i.ah = icmp ugt i64 %i.y, 8070450532247928832
  br i1 %i.ah, label %sz_s2u.exit.thread, label %bb.k, !prof !104

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp samesign ugt i64 %i.y, 14336
  %i.aj = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !96
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond69 = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %or.cond69, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = shl nuw i64 %i.y, 1
  %i.am = add i64 %i.al, -1
  %i.an = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.am, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.an
  %i.ao = lshr i64 1152921504606846975, %i.an
  %i.ap = add nuw nsw i64 %i.y, %i.ao
  %i.aq = and i64 %i.ap, %notmask.i
  br label %sz_s2u.exit

bb.m:                                             ; preds = %bb.k
  %i.ar = add nuw nsw i64 %i.y, 4095
  %i.as = and i64 %i.ar, 9223372036854771712
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.m, %bb.l, %bb.i
  %.0.i34 = phi i64 [ %i.ag, %bb.i ], [ %i.aq, %bb.l ], [ %i.as, %bb.m ] ; 9 uses
  %i.at = icmp ult i64 %2, 14337
  %i.au = icmp ult i64 %.0.i35, 14337
  %i.av = select i1 %i.at, i1 %i.au, i1 false, !prof !102
  br i1 %i.av, label %bb.n, label %bb.v, !prof !102

sz_s2u.exit.thread:                               ; preds = %bb.j
  %i.aw = icmp ult i64 %2, 14337
  %i.ax = icmp ult i64 %.0.i35, 14337
  %i.ay = select i1 %i.aw, i1 %i.ax, i1 false, !prof !102
  br i1 %i.ay, label %.thread55, label %arena_decay_ticks.exit, !prof !102

bb.n:                                             ; preds = %sz_s2u.exit
  %i.az = icmp ugt i64 %.0.i34, 14336
  br i1 %i.az, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = icmp samesign ult i64 %.0.i34, 4097
  br i1 %i.ba, label %.thread55, label %sz_size2index_compute.exit, !prof !196

.thread55:                                        ; preds = %sz_s2u.exit.thread, %bb.o
  %.0.i34505358 = phi i64 [ %.0.i34, %bb.o ], [ 0, %sz_s2u.exit.thread ] ; 2 uses
  %i.bb = add nuw nsw i64 %.0.i34505358, 7
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !103
  %i.bf = zext i8 %i.be to i32
  br label %sz_size2index.exit33

sz_size2index_compute.exit:                       ; preds = %bb.o
  %i.bg = shl nuw nsw i64 %.0.i34, 1
  %i.bh = add nsw i64 %i.bg, -1
  %i.bi = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.bh, i1 true) ; 3 uses
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = sub nuw nsw i64 60, %i.bi
  %9 = ashr exact i64 -1152921504606846976, %i.bi
  %i.bl = add nsw i64 %.0.i34, -1
  %10 = and i64 %9, %i.bl
  %i.bm = lshr i64 %10, %i.bk
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 3
  %i.bp = shl nuw nsw i32 %i.bj, 2
  %reass.sub = sub nsw i32 %i.bo, %i.bp
  %i.bq = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit33

sz_size2index.exit33:                             ; preds = %.thread55, %sz_size2index_compute.exit
  %.0.i34505357 = phi i64 [ %.0.i34505358, %.thread55 ], [ %.0.i34, %sz_size2index_compute.exit ]
  %.0.i32 = phi i32 [ %i.bf, %.thread55 ], [ %i.bq, %sz_size2index_compute.exit ]
  %i.br = icmp samesign ult i64 %2, 4097
  br i1 %i.br, label %bb.p, label %sz_size2index_compute.exit44, !prof !102

bb.p:                                             ; preds = %sz_size2index.exit33
  %i.bs = add nuw nsw i64 %2, 7
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !103
  %i.bw = zext i8 %i.bv to i32
  br label %sz_size2index.exit

sz_size2index_compute.exit44:                     ; preds = %sz_size2index.exit33
  %i.bx = shl nuw nsw i64 %2, 1
  %i.by = add nsw i64 %i.bx, -1
  %i.bz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.by, i1 true) ; 3 uses
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = sub nuw nsw i64 60, %i.bz
  %11 = ashr exact i64 -1152921504606846976, %i.bz
  %i.cc = add nsw i64 %2, -1
  %12 = and i64 %11, %i.cc
  %i.cd = lshr i64 %12, %i.cb
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = and i32 %i.ce, 3
  %i.cg = shl nuw nsw i32 %i.ca, 2
  %reass.sub72 = sub nsw i32 %i.cf, %i.cg
  %i.ch = add nsw i32 %reass.sub72, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.p, %sz_size2index_compute.exit44
  %.0.i = phi i32 [ %i.bw, %bb.p ], [ %i.ch, %sz_size2index_compute.exit44 ]
  %.not = icmp eq i32 %.0.i32, %.0.i
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %sz_size2index.exit, %bb.n
  %.0.i345054 = phi i64 [ %.0.i34505357, %sz_size2index.exit ], [ %.0.i34, %bb.n ]
  %i.ci = icmp samesign ugt i64 %3, %2
  %i.cj = icmp ult i64 %.0.i345054, %2
  %or.cond31 = select i1 %i.ci, i1 true, i1 %i.cj
  br i1 %or.cond31, label %arena_decay_ticks.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %sz_size2index.exit
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !107
  %i.ck = and i64 %.val.i, 4095
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ck
  %i.cm = load atomic ptr, ptr %i.cl monotonic, align 8
  br i1 %i.a, label %arena_decay_ticks.exit, label %bb.s, !prof !104

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !103
  %i.cr = load i32, ptr %i.cn, align 4, !tbaa !123 ; 2 uses
  %i.cs = add nsw i32 %i.cr, -1
  store i32 %i.cs, ptr %i.cn, align 4, !tbaa !123
  %i.ct = icmp slt i32 %i.cr, 1
  br i1 %i.ct, label %bb.t, label %arena_decay_ticks.exit, !prof !104

bb.t:                                             ; preds = %bb.s
  %i.cu = icmp sgt i8 %i.cq, 0
  br i1 %i.cu, label %ticker_geom_ticks.exit, label %bb.u

ticker_geom_ticks.exit:                           ; preds = %bb.t
  store i32 0, ptr %i.cn, align 4, !tbaa !123
  br label %arena_decay_ticks.exit

bb.u:                                             ; preds = %bb.t
  %i.cv = load i64, ptr %i.co, align 8, !tbaa !18
  %i.cw = mul i64 %i.cv, 6364136223846793005
  %i.cx = add i64 %i.cw, 1442695040888963407      ; 2 uses
  store i64 %i.cx, ptr %i.co, align 8, !tbaa !18
  %i.cy = lshr i64 %i.cx, 58
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !124
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.cy
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !103
  %i.de = zext i8 %i.dd to i64
  %i.df = mul nsw i64 %i.de, %i.db
  %i.dg = udiv i64 %i.df, 61
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.cn, align 8, !tbaa !123
  call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.cm, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %arena_decay_ticks.exit

bb.v:                                             ; preds = %sz_s2u.exit
  %i.di = icmp ugt i64 %2, 16383
  %i.dj = icmp ugt i64 %.0.i34, 16383
  %or.cond = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %or.cond, label %bb.w, label %arena_decay_ticks.exit

bb.w:                                             ; preds = %bb.v
  %i.dk = call zeroext i1 @je_large_ralloc_no_move(ptr noundef %0, ptr noundef %i.d, i64 noundef %.0.i35, i64 noundef %.0.i34, i1 noundef zeroext %5) #18
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.s, %sz_s2u.exit.thread, %bb.u, %bb.r, %ticker_geom_ticks.exit, %bb.v, %bb.q, %tsdn_rtree_ctx.exit, %bb.w
  %.0 = phi i1 [ true, %bb.q ], [ true, %tsdn_rtree_ctx.exit ], [ true, %bb.v ], [ %i.dk, %bb.w ], [ false, %ticker_geom_ticks.exit ], [ true, %sz_s2u.exit.thread ], [ false, %bb.r ], [ false, %bb.u ], [ false, %bb.s ]
  %.val.i47 = load i64, ptr %i.d, align 8, !tbaa !107
  %i.dl = trunc i64 %.val.i47 to i32
  %i.dm = lshr i32 %i.dl, 20
  %i.dn = and i32 %i.dm, 255                      ; 2 uses
  %i.do = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !101, !range !96, !noundef !97
  %i.dp = trunc nuw i8 %i.do to i1
  %i.dq = icmp samesign ugt i32 %i.dn, 35
  %or.cond.not.i = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %or.cond.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %arena_decay_ticks.exit
  %i.dr = zext nneg i32 %i.dn to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !18
  br label %edata_usize_get.exit

bb.y:                                             ; preds = %arena_decay_ticks.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !103
  %i.dw = and i64 %i.dv, -4096
  %i.dx = load i64, ptr @je_sz_large_pad, align 8, !tbaa !18
  %i.dy = sub i64 %i.dw, %i.dx
  br label %edata_usize_get.exit

edata_usize_get.exit:                             ; preds = %bb.x, %bb.y
  %.0.i48 = phi i64 [ %i.dt, %bb.x ], [ %i.dy, %bb.y ]
  store i64 %.0.i48, ptr %6, align 8, !tbaa !18
  ret i1 %.0
}

declare zeroext i1 @je_large_ralloc_no_move(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_ralloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %10 = alloca %struct.rtree_ctx_s, align 8       ; 4 uses
  %11 = alloca %struct.rtree_contents_s, align 8  ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = icmp eq i64 %5, 0                        ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %4, 4097
  br i1 %i.d, label %bb.c, label %bb.d, !prof !102

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw nsw i64 %4, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !103
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18
  br label %sz_s2u.exit

bb.d:                                             ; preds = %bb.b
  %i.l = icmp ugt i64 %4, 8070450532247928832
  br i1 %i.l, label %arena_sdalloc.exit, label %bb.e, !prof !104

bb.e:                                             ; preds = %bb.d
  %i.m = icmp samesign ugt i64 %4, 14336
  %i.n = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !96
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond111 = select i1 %i.m, i1 %i.o, i1 false
  br i1 %or.cond111, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = shl nuw i64 %4, 1
  %i.q = add i64 %i.p, -1
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.q, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.r
  %i.s = lshr i64 1152921504606846975, %i.r
  %i.t = add nuw nsw i64 %4, %i.s
  %i.u = and i64 %i.t, %notmask.i
  br label %sz_s2u.exit

bb.g:                                             ; preds = %bb.e
  %i.v = add nuw nsw i64 %4, 4095
  %i.w = and i64 %i.v, 9223372036854771712
  br label %sz_s2u.exit

bb.h:                                             ; preds = %bb.a
  %i.x = icmp ult i64 %4, 14337
  %i.y = icmp ult i64 %5, 4097
  %or.cond.i = and i1 %i.x, %i.y
  br i1 %or.cond.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i64 %5, -1
  %i.aa = add nuw nsw i64 %i.z, %4
  %i.ab = sub nsw i64 0, %5
  %i.ac = and i64 %i.aa, %i.ab                    ; 5 uses
  %i.ad = icmp samesign ult i64 %i.ac, 4097
  br i1 %i.ad, label %bb.j, label %bb.k, !prof !102

bb.j:                                             ; preds = %bb.i
  %i.ae = add nuw nsw i64 %i.ac, 7
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !103
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !18
  br label %sz_s2u.exit25.i

bb.k:                                             ; preds = %bb.i
  %i.al = icmp samesign ugt i64 %i.ac, 14336
  %i.am = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !96
  %i.an = trunc nuw i8 %i.am to i1
  %or.cond113 = select i1 %i.al, i1 %i.an, i1 false
  br i1 %or.cond113, label %.thread90, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = shl nuw nsw i64 %i.ac, 1
  %i.ap = add nsw i64 %i.ao, -1
  %i.aq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ap, i1 true) ; 2 uses
  %notmask.i68 = ashr exact i64 -1152921504606846976, %i.aq
  %i.ar = lshr i64 1152921504606846975, %i.aq
  %i.as = add nuw nsw i64 %i.ac, %i.ar
  %i.at = and i64 %i.as, %notmask.i68
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %bb.l, %bb.j
  %.0.i24.i = phi i64 [ %i.ak, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %i.au = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.au, label %sz_s2u.exit, label %.thread90

bb.m:                                             ; preds = %bb.h
  %i.av = icmp ugt i64 %5, 8070450532247928832
  br i1 %i.av, label %arena_sdalloc.exit, label %bb.n, !prof !197

bb.n:                                             ; preds = %bb.m
  %i.aw = icmp ult i64 %4, 16385
  br i1 %i.aw, label %.thread90, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = icmp ugt i64 %4, 8070450532247928832
  br i1 %i.ax, label %sz_s2u_compute.exit64, label %bb.p, !prof !104

bb.p:                                             ; preds = %bb.o
  %i.ay = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !101, !range !96, !noundef !97
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = shl nuw i64 %4, 1
  %i.bb = add i64 %i.ba, -1
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.bb, i1 true) ; 2 uses
  %notmask.i67 = ashr exact i64 -1152921504606846976, %i.bc
  %i.bd = lshr i64 1152921504606846975, %i.bc
  %i.be = add nuw nsw i64 %4, %i.bd
  %i.bf = and i64 %i.be, %notmask.i67
  br label %sz_s2u_compute.exit64

bb.r:                                             ; preds = %bb.p
  %i.bg = add nuw nsw i64 %4, 4095
  %i.bh = and i64 %i.bg, 9223372036854771712
  br label %sz_s2u_compute.exit64

sz_s2u_compute.exit64:                            ; preds = %bb.o, %bb.q, %bb.r
  %.0.i63 = phi i64 [ %i.bf, %bb.q ], [ %i.bh, %bb.r ], [ 0, %bb.o ] ; 2 uses
  %i.bi = icmp ult i64 %.0.i63, %4
  br i1 %i.bi, label %arena_sdalloc.exit, label %.thread90

.thread90:                                        ; preds = %bb.k, %sz_s2u.exit25.i, %sz_s2u_compute.exit64, %bb.n
  %.0.i61 = phi i64 [ %.0.i63, %sz_s2u_compute.exit64 ], [ 16384, %bb.n ], [ 16384, %bb.k ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.bj = load i64, ptr @je_sz_large_pad, align 8, !tbaa !18
  %i.bk = add nuw nsw i64 %5, 4095
  %i.bl = and i64 %i.bk, 9223372036854771712
  %i.bm = add nsw i64 %i.bl, -4096
  %i.bn = add nuw i64 %i.bm, %.0.i61
  %i.bo = add i64 %i.bn, %i.bj
  %i.bp = icmp ult i64 %i.bo, %.0.i61
  %..0.i = select i1 %i.bp, i64 0, i64 %.0.i61
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %.thread90, %sz_s2u.exit25.i, %bb.c, %bb.f, %bb.g
  %i.bq = phi i64 [ %.0.i24.i, %sz_s2u.exit25.i ], [ %i.k, %bb.c ], [ %i.u, %bb.f ], [ %i.w, %bb.g ], [ %..0.i, %.thread90 ] ; 26 uses
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = icmp samesign ugt i64 %4, 8070450532247928832
  %i.bt = or i1 %i.bs, %i.br
  br i1 %i.bt, label %arena_sdalloc.exit, label %bb.s, !prof !198

bb.s:                                             ; preds = %sz_s2u.exit
  br i1 %7, label %bb.t, label %bb.v, !prof !102

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.bu = call zeroext i1 @je_arena_ralloc_no_move(ptr noundef %0, ptr noundef %2, i64 noundef %3, i64 noundef %i.bq, i64 noundef 0, i1 noundef zeroext %6, ptr noundef nonnull %i.b)
  br i1 %i.bu, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = load i8, ptr %9, align 8, !tbaa !200, !range !96, !noundef !97
  %i.bw = xor i8 %i.bv, 1
  %not. = zext nneg i8 %i.bw to i32
  %i.bx = ptrtoint ptr %2 to i64
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 8
  tail call void @je_hook_invoke_expand(i32 noundef %not., ptr noundef %2, i64 noundef %3, i64 noundef %i.bq, i64 noundef %i.bx, ptr noundef nonnull %i.by) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %arena_sdalloc.exit

.critedge:                                        ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.v

bb.v:                                             ; preds = %.critedge, %bb.s
  %i.bz = icmp ugt i64 %3, 16383
  %i.ca = icmp ugt i64 %i.bq, 16383
  %or.cond = and i1 %i.bz, %i.ca
  br i1 %or.cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cb = tail call ptr @je_large_ralloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.bq, i64 noundef %5, i1 noundef zeroext %6, ptr noundef %8, ptr noundef %9) #18
  br label %arena_sdalloc.exit

bb.x:                                             ; preds = %bb.v
  br i1 %i.c, label %bb.y, label %bb.bb

bb.y:                                             ; preds = %bb.x
  %i.cc = icmp ult i64 %i.bq, 4097                ; 2 uses
  br i1 %i.cc, label %bb.z, label %bb.aa, !prof !102

bb.z:                                             ; preds = %bb.y
  %i.cd = add nuw nsw i64 %i.bq, 7
  %i.ce = lshr i64 %i.cd, 3
  %i.cf = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !103
  %i.ch = zext i8 %i.cg to i32
  br label %sz_size2index.exit.i85

bb.aa:                                            ; preds = %bb.y
  %i.ci = icmp ugt i64 %i.bq, 8070450532247928832
  br i1 %i.ci, label %sz_size2index.exit.i85, label %bb.ab, !prof !104

bb.ab:                                            ; preds = %bb.aa
  %i.cj = shl nuw i64 %i.bq, 1
  %i.ck = add i64 %i.cj, -1
  %i.cl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ck, i1 true) ; 3 uses
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = sub nuw nsw i64 60, %i.cl
  %12 = ashr exact i64 -1152921504606846976, %i.cl
  %i.co = add nsw i64 %i.bq, -1
  %13 = and i64 %12, %i.co
  %i.cp = lshr i64 %13, %i.cn
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = and i32 %i.cq, 3
  %i.cs = shl nuw nsw i32 %i.cm, 2
  %reass.sub = sub nsw i32 %i.cr, %i.cs
  %i.ct = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i85

sz_size2index.exit.i85:                           ; preds = %bb.ab, %bb.aa, %bb.z
  %.0.i.i = phi i32 [ %i.ch, %bb.z ], [ %i.ct, %bb.ab ], [ 232, %bb.aa ] ; 8 uses
  %.not.i.i = icmp eq ptr %8, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.ac, !prof !104

bb.ac:                                            ; preds = %sz_size2index.exit.i85
  br i1 %7, label %bb.ad, label %bb.am, !prof !102

bb.ad:                                            ; preds = %bb.ac
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cv = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.cv ; 9 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !87 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !91 ; 2 uses
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.dc = load i16, ptr %i.db, align 8, !tbaa !128 ; 2 uses
  %i.dd = trunc i64 %i.cz to i16
  %.not.i30.i = icmp eq i16 %i.dc, %i.dd
  br i1 %.not.i30.i, label %bb.af, label %bb.ae, !prof !104

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.da, ptr %i.cw, align 8, !tbaa !87
  br label %cache_bin_alloc_impl.exit.thread.i

bb.af:                                            ; preds = %bb.ad
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.df = load i16, ptr %i.de, align 4, !tbaa !88
  %.not21.i.i = icmp eq i16 %i.df, %i.dc
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.ag, !prof !104

bb.ag:                                            ; preds = %bb.af
  store ptr %i.da, ptr %i.cw, align 8, !tbaa !87
  %i.dg = ptrtoint ptr %i.da to i64
  %i.dh = trunc i64 %i.dg to i16
  store i16 %i.dh, ptr %i.db, align 8, !tbaa !128
  br label %cache_bin_alloc_impl.exit.thread.i

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.di = tail call fastcc ptr @arena_choose(ptr noundef %0, ptr noundef %1) ; 3 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %.thread.i, label %bb.ah, !prof !104

bb.ah:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %.val.i = load ptr, ptr %i.cw, align 8, !tbaa !87
  %i.dk = icmp eq ptr %.val.i, @je_disabled_bin
  br i1 %i.dk, label %bb.ai, label %bb.aj, !prof !104

bb.ai:                                            ; preds = %bb.ah
  %i.dl = tail call ptr @je_arena_malloc_hard(ptr noundef %0, ptr noundef nonnull %i.di, i64 noundef range(i64 1, 0) %i.bq, i32 noundef %.0.i.i, i1 noundef zeroext %6, i1 noundef zeroext true)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ai, %cache_bin_alloc_impl.exit.i
  %.0.i27.ph.i = phi ptr [ %i.dl, %bb.ai ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %arena_ralloc_move_helper.exit

bb.aj:                                            ; preds = %bb.ah
  tail call void @je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %i.cw, i32 noundef %.0.i.i, i1 noundef zeroext true) #18
  %i.dm = call ptr @je_tcache_alloc_small_hard(ptr noundef %0, ptr noundef nonnull %i.di, ptr noundef nonnull %8, ptr noundef nonnull %i.cw, i32 noundef %.0.i.i, ptr noundef nonnull %i.a) #18
  %i.dn = load i8, ptr %i.a, align 1, !tbaa !101, !range !96, !noundef !97
  %.not64.i = icmp eq i8 %i.dn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %.not64.i, label %arena_sdalloc.exit, label %cache_bin_alloc_impl.exit.thread.i

cache_bin_alloc_impl.exit.thread.i:               ; preds = %bb.aj, %bb.ag, %bb.ae
  %.132.i.i = phi ptr [ %i.dm, %bb.aj ], [ %i.cy, %bb.ae ], [ %i.cy, %bb.ag ] ; 2 uses
  br i1 %6, label %bb.ak, label %bb.al, !prof !104

bb.ak:                                            ; preds = %cache_bin_alloc_impl.exit.thread.i
  %i.do = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.cv
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i.i, i8 0, i64 %i.dp, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %cache_bin_alloc_impl.exit.thread.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !129
  %i.ds = add i64 %i.dr, 1
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !129
  br label %arena_ralloc_move_helper.exit

bb.am:                                            ; preds = %bb.ac
  %i.dt = load ptr, ptr %8, align 8, !tbaa !202
  %i.du = getelementptr i8, ptr %i.dt, i64 48
  %.val42.i = load i32, ptr %i.du, align 8, !tbaa !203
  %i.dv = icmp ult i32 %.0.i.i, %.val42.i
  br i1 %i.dv, label %bb.an, label %.critedge.i.i, !prof !102

bb.an:                                            ; preds = %bb.am
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dx = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %i.dx ; 7 uses
  %.val37.i = load ptr, ptr %i.dy, align 8, !tbaa !87 ; 4 uses
  %.not.i = icmp eq ptr %.val37.i, @je_disabled_bin
  br i1 %.not.i, label %.critedge.i.i, label %bb.ao, !prof !104

bb.ao:                                            ; preds = %bb.an
  %i.dz = load ptr, ptr %.val37.i, align 8, !tbaa !91 ; 3 uses
  %i.ea = ptrtoint ptr %.val37.i to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %.val37.i, i64 8 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %i.ed = load i16, ptr %i.ec, align 8, !tbaa !128 ; 2 uses
  %i.ee = trunc i64 %i.ea to i16
  %.not.i32.i = icmp eq i16 %i.ed, %i.ee
  br i1 %.not.i32.i, label %bb.aq, label %bb.ap, !prof !104

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.eb, ptr %i.dy, align 8, !tbaa !87
  br label %bb.ay

bb.aq:                                            ; preds = %bb.ao
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 20
  %i.eg = load i16, ptr %i.ef, align 4, !tbaa !88
  %.not21.i34.i = icmp eq i16 %i.eg, %i.ed
  br i1 %.not21.i34.i, label %cache_bin_alloc_impl.exit35.i, label %bb.ar, !prof !104

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.eb, ptr %i.dy, align 8, !tbaa !87
  %i.eh = ptrtoint ptr %i.eb to i64
  %i.ei = trunc i64 %i.eh to i16
  store i16 %i.ei, ptr %i.ec, align 8, !tbaa !128
  br label %bb.ay

cache_bin_alloc_impl.exit35.i:                    ; preds = %bb.aq
  %i.ej = tail call fastcc ptr @arena_choose(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %arena_sdalloc.exit, label %bb.as, !prof !104

bb.as:                                            ; preds = %cache_bin_alloc_impl.exit35.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %i.dy, i32 noundef %.0.i.i, i1 noundef zeroext false) #18
  br i1 %i.cc, label %bb.at, label %bb.au, !prof !102

bb.at:                                            ; preds = %bb.as
  %i.el = add nuw nsw i64 %i.bq, 7
  %i.em = lshr i64 %i.el, 3
  %i.en = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !103
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !18
  br label %sz_s2u.exit.i.i

bb.au:                                            ; preds = %bb.as
  %i.es = icmp ugt i64 %i.bq, 8070450532247928832
  br i1 %i.es, label %sz_s2u.exit.i.i, label %bb.av, !prof !104

bb.av:                                            ; preds = %bb.au
  %i.et = icmp samesign ugt i64 %i.bq, 14336
  %i.eu = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !96
  %i.ev = trunc nuw i8 %i.eu to i1
  %or.cond.i86 = select i1 %i.et, i1 %i.ev, i1 false
  br i1 %or.cond.i86, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ew = shl nuw i64 %i.bq, 1
  %i.ex = add i64 %i.ew, -1
  %i.ey = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ex, i1 true) ; 2 uses
  %notmask.i.i.i = ashr exact i64 -1152921504606846976, %i.ey
  %i.ez = lshr i64 1152921504606846975, %i.ey
  %i.fa = add nuw nsw i64 %i.ez, %i.bq
  %i.fb = and i64 %i.fa, %notmask.i.i.i
  br label %sz_s2u.exit.i.i

bb.ax:                                            ; preds = %bb.av
  %i.fc = add nuw nsw i64 %i.bq, 4095
  %i.fd = and i64 %i.fc, 9223372036854771712
  br label %sz_s2u.exit.i.i

sz_s2u.exit.i.i:                                  ; preds = %bb.ax, %bb.aw, %bb.au, %bb.at
  %.0.i.i.i = phi i64 [ %i.er, %bb.at ], [ %i.fb, %bb.aw ], [ %i.fd, %bb.ax ], [ 0, %bb.au ]
  %i.fe = tail call ptr @je_large_malloc(ptr noundef %0, ptr noundef nonnull %i.ej, i64 noundef %.0.i.i.i, i1 noundef zeroext %6) #18 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %arena_sdalloc.exit, label %bb.ba

bb.ay:                                            ; preds = %bb.ar, %bb.ap
  br i1 %6, label %bb.az, label %bb.ba, !prof !104

bb.az:                                            ; preds = %bb.ay
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.dx
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dz, i8 0, i64 %i.fh, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %sz_s2u.exit.i.i
  %.021.i.i = phi ptr [ %i.fe, %sz_s2u.exit.i.i ], [ %i.dz, %bb.az ], [ %i.dz, %bb.ay ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !129
  %i.fk = add i64 %i.fj, 1
  store i64 %i.fk, ptr %i.fi, align 8, !tbaa !129
  br label %arena_ralloc_move_helper.exit

.critedge.i.i:                                    ; preds = %bb.an, %bb.am, %sz_size2index.exit.i85
  %i.fl = tail call ptr @je_arena_malloc_hard(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %i.bq, i32 noundef %.0.i.i, i1 noundef zeroext %6, i1 noundef zeroext %7)
  br label %arena_ralloc_move_helper.exit

bb.bb:                                            ; preds = %bb.x
  %i.fm = icmp ult i64 %i.bq, 14337
  %i.fn = icmp samesign ult i64 %5, 4097
  %or.cond.i.i = and i1 %i.fn, %i.fm
  br i1 %or.cond.i.i, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.fo = add nsw i64 %5, -1
  %i.fp = add nuw nsw i64 %i.fo, %i.bq
  %i.fq = sub nsw i64 0, %5
  %i.fr = and i64 %i.fp, %i.fq                    ; 5 uses
  %i.fs = icmp samesign ult i64 %i.fr, 4097
  br i1 %i.fs, label %bb.bd, label %bb.be, !prof !102

bb.bd:                                            ; preds = %bb.bc
  %i.ft = add nuw nsw i64 %i.fr, 7
  %i.fu = lshr i64 %i.ft, 3
  %i.fv = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !103
  %i.fx = zext i8 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !18
  br label %sz_s2u.exit25.i.i

bb.be:                                            ; preds = %bb.bc
  %i.ga = icmp samesign ugt i64 %i.fr, 14336
  %i.gb = load i8, ptr @je_opt_disable_large_size_classes, align 1, !range !96
  %i.gc = trunc nuw i8 %i.gb to i1
  %or.cond63.i = select i1 %i.ga, i1 %i.gc, i1 false
  br i1 %or.cond63.i, label %.thread58.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gd = shl nuw nsw i64 %i.fr, 1
  %i.ge = add nsw i64 %i.gd, -1
  %i.gf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ge, i1 true) ; 2 uses
  %notmask.i26.i = ashr exact i64 -1152921504606846976, %i.gf
  %i.gg = lshr i64 1152921504606846975, %i.gf
  %i.gh = add nuw nsw i64 %i.gg, %i.fr
  %i.gi = and i64 %i.gh, %notmask.i26.i
  br label %sz_s2u.exit25.i.i

sz_s2u.exit25.i.i:                                ; preds = %bb.bf, %bb.bd
  %.0.i24.i.i = phi i64 [ %i.fz, %bb.bd ], [ %i.gi, %bb.bf ] ; 2 uses
  %i.gj = icmp ult i64 %.0.i24.i.i, 16384
  br i1 %i.gj, label %sz_sa2u.exit.i, label %.thread58.i

bb.bg:                                            ; preds = %bb.bb
  %i.gk = icmp ult i64 %i.bq, 16385
  br i1 %i.gk, label %.thread58.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gl = icmp ugt i64 %i.bq, 8070450532247928832
  br i1 %i.gl, label %arena_sdalloc.exit, label %bb.bi, !prof !104

bb.bi:                                            ; preds = %bb.bh
  %i.gm = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !101, !range !96, !noundef !97
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %sz_s2u_compute.exit25.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.go = shl nuw i64 %i.bq, 1
  %i.gp = add i64 %i.go, -1
  %i.gq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.gp, i1 true) ; 2 uses
  %notmask.i.i82 = ashr exact i64 -1152921504606846976, %i.gq
  %i.gr = lshr i64 1152921504606846975, %i.gq
  br label %sz_s2u_compute.exit25.i

sz_s2u_compute.exit25.i:                          ; preds = %bb.bj, %bb.bi
  %.sink76.i = phi i64 [ %i.gr, %bb.bj ], [ 4095, %bb.bi ]
  %notmask.i.sink.i = phi i64 [ %notmask.i.i82, %bb.bj ], [ 9223372036854771712, %bb.bi ]
  %i.gs = add nuw nsw i64 %.sink76.i, %i.bq
  %i.gt = and i64 %i.gs, %notmask.i.sink.i        ; 2 uses
  %i.gu = icmp samesign ult i64 %i.gt, %i.bq
  br i1 %i.gu, label %arena_sdalloc.exit, label %.thread58.i

.thread58.i:                                      ; preds = %sz_s2u_compute.exit25.i, %bb.bg, %sz_s2u.exit25.i.i, %bb.be
  %.0.i22.i83 = phi i64 [ %i.gt, %sz_s2u_compute.exit25.i ], [ 16384, %bb.bg ], [ 16384, %bb.be ], [ 16384, %sz_s2u.exit25.i.i ] ; 3 uses
  %i.gv = load i64, ptr @je_sz_large_pad, align 8, !tbaa !18
  %i.gw = add nuw nsw i64 %5, 4095
  %i.gx = and i64 %i.gw, 9223372036854771712
  %i.gy = add nsw i64 %i.gx, -4096
  %i.gz = add nuw i64 %i.gy, %.0.i22.i83
  %i.ha = add i64 %i.gz, %i.gv
  %i.hb = icmp ult i64 %i.ha, %.0.i22.i83
  %..0.i.i = select i1 %i.hb, i64 0, i64 %.0.i22.i83
  br label %sz_sa2u.exit.i

sz_sa2u.exit.i:                                   ; preds = %.thread58.i, %sz_s2u.exit25.i.i
  %.018.i.i = phi i64 [ %..0.i.i, %.thread58.i ], [ %.0.i24.i.i, %sz_s2u.exit25.i.i ] ; 2 uses
  %i.hc = add nsw i64 %.018.i.i, -8070450532247928833
  %i.hd = icmp ult i64 %i.hc, -8070450532247928832
  br i1 %i.hd, label %arena_sdalloc.exit, label %ipallocztm_explicit_slab.exit.i, !prof !198

ipallocztm_explicit_slab.exit.i:                  ; preds = %sz_sa2u.exit.i
  %i.he = tail call ptr @je_arena_palloc(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 8070450532247928833) %.018.i.i, i64 noundef range(i64 1, 0) %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef %8)
  br label %arena_ralloc_move_helper.exit

arena_ralloc_move_helper.exit:                    ; preds = %.thread.i, %bb.al, %bb.ba, %.critedge.i.i, %ipallocztm_explicit_slab.exit.i
  %.0.i84 = phi ptr [ %.021.i.i, %bb.ba ], [ %i.he, %ipallocztm_explicit_slab.exit.i ], [ %i.fl, %.critedge.i.i ], [ %.0.i27.ph.i, %.thread.i ], [ %.132.i.i, %bb.al ] ; 13 uses
  %i.hf = icmp eq ptr %.0.i84, null
  br i1 %i.hf, label %arena_sdalloc.exit, label %isdalloct.exit

isdalloct.exit:                                   ; preds = %arena_ralloc_move_helper.exit
  %i.hg = load i8, ptr %9, align 8, !tbaa !200, !range !96, !noundef !97
  %i.hh = trunc nuw i8 %i.hg to i1
  %i.hi = select i1 %i.hh, i32 8, i32 9
  %i.hj = ptrtoint ptr %.0.i84 to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  call void @je_hook_invoke_alloc(i32 noundef %i.hi, ptr noundef nonnull %.0.i84, i64 noundef %i.hj, ptr noundef nonnull %i.hk) #18
  %i.hl = load i8, ptr %9, align 8, !tbaa !200, !range !96, !noundef !97
  %i.hm = trunc nuw i8 %i.hl to i1
  %i.hn = select i1 %i.hm, i32 3, i32 4
  call void @je_hook_invoke_dalloc(i32 noundef %i.hn, ptr noundef %2, ptr noundef nonnull %i.hk) #18
  %i.ho = call i64 @llvm.umin.i64(i64 %i.bq, i64 %3)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i84, ptr align 1 %2, i64 %i.ho, i1 false)
  %i.hp = icmp eq ptr %0, null
  %i.hq = icmp eq ptr %8, null
  br i1 %i.hq, label %bb.bk, label %bb.bl, !prof !104

bb.bk:                                            ; preds = %isdalloct.exit
  call fastcc void @arena_sdalloc_no_tcache(ptr noundef %0, ptr noundef %2, i64 noundef %3)
  br label %arena_sdalloc.exit

bb.bl:                                            ; preds = %isdalloct.exit
  %i.hr = icmp ult i64 %3, 4097
  br i1 %i.hr, label %sz_size2index.exit.i, label %bb.bm, !prof !102

bb.bm:                                            ; preds = %bb.bl
  %i.hs = icmp ugt i64 %3, 8070450532247928832
  br i1 %i.hs, label %sz_s2u.exit.i, label %sz_size2index.exit.i.thread99, !prof !104

sz_size2index.exit.i:                             ; preds = %bb.bl
  %i.ht = add nuw nsw i64 %3, 7
  %i.hu = lshr i64 %i.ht, 3
  %i.hv = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !103 ; 2 uses
  %i.hx = zext i8 %i.hw to i32                    ; 2 uses
  %i.hy = icmp ult i8 %i.hw, 36
  br i1 %i.hy, label %bb.bn, label %sz_s2u.exit.i, !prof !140

sz_size2index.exit.i.thread99:                    ; preds = %bb.bm
  %i.hz = shl nuw i64 %3, 1
  %i.ia = add i64 %i.hz, -1
  %i.ib = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ia, i1 true) ; 3 uses
  %i.ic = trunc nuw nsw i64 %i.ib to i32
  %i.id = shl nuw nsw i32 %i.ic, 2
  %i.ie = sub nuw nsw i64 60, %i.ib
  %14 = ashr exact i64 -1152921504606846976, %i.ib
  %i.if = add nsw i64 %3, -1
  %15 = and i64 %14, %i.if
  %i.ig = lshr i64 %15, %i.ie
  %i.ih = trunc i64 %i.ig to i32
  %i.ii = and i32 %i.ih, 3
  %reass.sub.i87 = sub nsw i32 %i.ii, %i.id       ; 2 uses
  %i.ij = add nsw i32 %reass.sub.i87, 229         ; 2 uses
  %i.ik = icmp slt i32 %reass.sub.i87, -193
  br i1 %i.ik, label %bb.bn, label %sz_s2u.exit.i, !prof !140

bb.bn:                                            ; preds = %sz_size2index.exit.i.thread99, %sz_size2index.exit.i
  %.0.i.i69101 = phi i32 [ %i.ij, %sz_size2index.exit.i.thread99 ], [ %i.hx, %sz_size2index.exit.i ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.im = zext nneg i32 %.0.i.i69101 to i64
  %i.in = getelementptr inbounds nuw [24 x i8], ptr %i.il, i64 %i.im ; 7 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !87 ; 3 uses
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 18 ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !90
  %i.is = trunc i64 %i.ip to i16
  %i.it = icmp eq i16 %i.ir, %i.is
  br i1 %i.it, label %cache_bin_dalloc_easy.exit23.i, label %cache_bin_dalloc_easy.exit23.i.thread, !prof !104

cache_bin_dalloc_easy.exit23.i.thread:            ; preds = %bb.bn
  %i.iu = getelementptr inbounds i8, ptr %i.io, i64 -8 ; 2 uses
  store ptr %i.iu, ptr %i.in, align 8, !tbaa !87
  store ptr %2, ptr %i.iu, align 8, !tbaa !91
  br label %arena_sdalloc.exit

cache_bin_dalloc_easy.exit23.i:                   ; preds = %bb.bn
  %i.iv = icmp eq ptr %i.io, @je_disabled_bin
  br i1 %i.iv, label %bb.bo, label %bb.bp, !prof !104

bb.bo:                                            ; preds = %cache_bin_dalloc_easy.exit23.i
  call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef %2)
  br label %arena_sdalloc.exit

bb.bp:                                            ; preds = %cache_bin_dalloc_easy.exit23.i
  %i.iw = getelementptr i8, ptr %i.in, i64 22
  %.val78 = load i16, ptr %i.iw, align 2, !tbaa !89
  %i.ix = zext i16 %.val78 to i32
  %i.iy = load i32, ptr @je_opt_lg_tcache_flush_small_div, align 4, !tbaa !13
  %i.iz = lshr i32 %i.ix, %i.iy
  call void @je_tcache_bin_flush_small(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %i.in, i32 noundef %.0.i.i69101, i32 noundef %i.iz) #18
  %i.ja = load ptr, ptr %i.in, align 8, !tbaa !87 ; 2 uses
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = load i16, ptr %i.iq, align 2, !tbaa !90
  %i.jd = trunc i64 %i.jb to i16
  %i.je = icmp eq i16 %i.jc, %i.jd
  br i1 %i.je, label %arena_sdalloc.exit, label %bb.bq, !prof !104

bb.bq:                                            ; preds = %bb.bp
  %i.jf = getelementptr inbounds i8, ptr %i.ja, i64 -8 ; 2 uses
  store ptr %i.jf, ptr %i.in, align 8, !tbaa !87
  store ptr %2, ptr %i.jf, align 8, !tbaa !91
  br label %arena_sdalloc.exit

sz_s2u.exit.i:                                    ; preds = %sz_size2index.exit.i.thread99, %sz_size2index.exit.i, %bb.bm
  %.0.i.i699397 = phi i32 [ 232, %bb.bm ], [ %i.hx, %sz_size2index.exit.i ], [ %i.ij, %sz_size2index.exit.i.thread99 ] ; 3 uses
  %i.jg = load ptr, ptr %8, align 8, !tbaa !202
  %i.jh = getelementptr i8, ptr %i.jg, i64 48
  %.val80 = load i32, ptr %i.jh, align 8, !tbaa !203
  %i.ji = icmp ult i32 %.0.i.i699397, %.val80
  br i1 %i.ji, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %sz_s2u.exit.i
  %i.jj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.jk = zext nneg i32 %.0.i.i699397 to i64
  %i.jl = getelementptr inbounds nuw [24 x i8], ptr %i.jj, i64 %i.jk ; 7 uses
  %.val = load ptr, ptr %i.jl, align 8, !tbaa !87 ; 3 uses
  %i.jm = icmp eq ptr %.val, @je_disabled_bin
  %i.jn = getelementptr i8, ptr %i.jl, i64 22
  br i1 %i.jm, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jo = ptrtoint ptr %.val to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 18 ; 2 uses
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !90
  %i.jr = trunc i64 %i.jo to i16
  %i.js = icmp eq i16 %i.jq, %i.jr
  br i1 %i.js, label %cache_bin_dalloc_easy.exit26.i, label %cache_bin_dalloc_easy.exit26.i.thread, !prof !104

cache_bin_dalloc_easy.exit26.i.thread:            ; preds = %bb.bs
  %i.jt = getelementptr inbounds i8, ptr %.val, i64 -8 ; 2 uses
  store ptr %i.jt, ptr %i.jl, align 8, !tbaa !87
  store ptr %2, ptr %i.jt, align 8, !tbaa !91
  br label %arena_sdalloc.exit

cache_bin_dalloc_easy.exit26.i:                   ; preds = %bb.bs
  %.val77 = load i16, ptr %i.jn, align 2, !tbaa !89
  %i.ju = zext i16 %.val77 to i32
  %i.jv = load i32, ptr @je_opt_lg_tcache_flush_large_div, align 4, !tbaa !13
  %i.jw = lshr i32 %i.ju, %i.jv
  call void @je_tcache_bin_flush_large(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %i.jl, i32 noundef %.0.i.i699397, i32 noundef %i.jw) #18
  %i.jx = load ptr, ptr %i.jl, align 8, !tbaa !87 ; 2 uses
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = load i16, ptr %i.jp, align 2, !tbaa !90
  %i.ka = trunc i64 %i.jy to i16
  %i.kb = icmp eq i16 %i.jz, %i.ka
  br i1 %i.kb, label %arena_sdalloc.exit, label %bb.bt, !prof !104

bb.bt:                                            ; preds = %cache_bin_dalloc_easy.exit26.i
  %i.kc = getelementptr inbounds i8, ptr %i.jx, i64 -8 ; 2 uses
  store ptr %i.kc, ptr %i.jl, align 8, !tbaa !87
  store ptr %2, ptr %i.kc, align 8, !tbaa !91
  br label %arena_sdalloc.exit

bb.bu:                                            ; preds = %bb.br, %sz_s2u.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  br i1 %i.hp, label %bb.bv, label %bb.bw, !prof !104

bb.bv:                                            ; preds = %bb.bu
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %10) #18
  br label %tsdn_rtree_ctx.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i

tsdn_rtree_ctx.exit.i:                            ; preds = %bb.bw, %bb.bv
  %.0.i.i71 = phi ptr [ %10, %bb.bv ], [ %i.kd, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.ke = ptrtoint ptr %2 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef %0, ptr noundef nonnull %.0.i.i71, i64 noundef %i.ke)
  %i.kf = load ptr, ptr %11, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @je_large_dalloc(ptr noundef %0, ptr noundef %i.kf) #18
  br label %arena_sdalloc.exit

arena_sdalloc.exit:                               ; preds = %sz_s2u_compute.exit25.i, %bb.bh, %sz_s2u.exit.i.i, %cache_bin_alloc_impl.exit35.i, %bb.aj, %sz_sa2u.exit.i, %sz_s2u_compute.exit64, %bb.m, %bb.d, %bb.bk, %bb.bp, %bb.bq, %cache_bin_dalloc_easy.exit23.i.thread, %bb.bo, %cache_bin_dalloc_easy.exit26.i.thread, %bb.bt, %cache_bin_dalloc_easy.exit26.i, %tsdn_rtree_ctx.exit.i, %bb.u, %arena_ralloc_move_helper.exit, %sz_s2u.exit, %bb.w
  %.2 = phi ptr [ %2, %bb.u ], [ %i.cb, %bb.w ], [ null, %sz_s2u.exit ], [ null, %sz_s2u_compute.exit64 ], [ null, %arena_ralloc_move_helper.exit ], [ %.0.i84, %bb.bk ], [ %.0.i84, %tsdn_rtree_ctx.exit.i ], [ %.0.i84, %cache_bin_dalloc_easy.exit26.i ], [ %.0.i84, %bb.bt ], [ %.0.i84, %cache_bin_dalloc_easy.exit26.i.thread ], [ %.0.i84, %bb.bo ], [ %.0.i84, %cache_bin_dalloc_easy.exit23.i.thread ], [ %.0.i84, %bb.bq ], [ %.0.i84, %bb.bp ], [ null, %bb.d ], [ null, %bb.m ], [ null, %sz_sa2u.exit.i ], [ null, %bb.aj ], [ null, %cache_bin_alloc_impl.exit35.i ], [ null, %sz_s2u.exit.i.i ], [ null, %bb.bh ], [ null, %sz_s2u_compute.exit25.i ]
  ret ptr %.2
}

declare void @je_hook_invoke_expand(i32 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @je_large_ralloc(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_hook_invoke_alloc(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @je_hook_invoke_dalloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare ptr @je_base_ehooks_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @je_arena_set_extent_hooks(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 80640
  %.val = load i32, ptr %i.a, align 64, !tbaa !98
  %i.b = load ptr, ptr @je_background_thread_info, align 8, !tbaa !100
  %i.c = zext i32 %.val to i64
  %i.d = load i64, ptr @je_max_background_threads, align 8, !tbaa !18
  %i.e = urem i64 %i.c, %i.d
  %i.f = getelementptr inbounds nuw [208 x i8], ptr %i.b, i64 %i.e ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.h = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.g) #18
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.b

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.j) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %malloc_mutex_trylock_final.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !72
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73
  %.not.i.i = icmp eq ptr %i.o, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.n, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !74
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !74
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12288
  tail call void @je_pa_shard_disable_hpa(ptr noundef %0, ptr noundef nonnull %i.s) #18
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80648
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70
  %i.v = tail call ptr @je_base_extent_hooks_set(ptr noundef %i.u, ptr noundef %2) #18
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store atomic i8 0, ptr %i.w monotonic, align 8
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #18 ; 0 uses
  ret ptr %i.v
}

end_hunk_2
begin_hunk_3_@arena_choose:bb.a
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %arena_choose_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !103
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.e, !prof !104

bb.c:                                             ; preds = %bb.b
  %i.d = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %arena_choose_impl.exit, !prof !104

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #18
  br label %arena_choose_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.k, !prof !104

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) #18 ; 7 uses
  %i.k = load i8, ptr %0, align 8, !tbaa !101, !range !96, !noundef !97
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142  ; 2 uses
  %.not43.i = icmp eq ptr %i.p, null
  br i1 %.not43.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not44.i = icmp eq ptr %i.p, %i.j
  br i1 %.not44.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #18
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  tail call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e
  %.0.i = phi ptr [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.j, %bb.j ] ; 6 uses
  %i.q = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !13 ; 2 uses
  %i.r = icmp ult i32 %i.q, 3
  br i1 %i.r, label %arena_choose_impl.exit, label %percpu_arena_ind_limit.exit.i

percpu_arena_ind_limit.exit.i:                    ; preds = %bb.k
  %i.s = getelementptr i8, ptr %.0.i, i64 80640   ; 2 uses
  %.0.val48.i = load i32, ptr %i.s, align 64, !tbaa !98
  %i.t = icmp eq i32 %i.q, 4
  %i.u = load i32, ptr @je_ncpus, align 4         ; 4 uses
  %i.v = icmp ugt i32 %i.u, 1
  %or.cond.i.i = and i1 %i.t, %i.v
  %i.w = and i32 %i.u, 1
  %i.x = lshr i32 %i.u, 1
  %spec.select.i = add nuw i32 %i.x, %i.w
  %.0.i.i = select i1 %or.cond.i.i, i32 %spec.select.i, i32 %i.u
  %i.y = icmp ult i32 %.0.val48.i, %.0.i.i
  br i1 %i.y, label %bb.l, label %arena_choose_impl.exit

bb.l:                                             ; preds = %percpu_arena_ind_limit.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !141
  %.not45.i = icmp eq ptr %i.aa, %0
  br i1 %.not45.i, label %arena_choose_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call i32 @sched_getcpu() #18       ; 3 uses
  %i.ac = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !13
  %i.ad = icmp eq i32 %i.ac, 3
  br i1 %i.ad, label %percpu_arena_choose.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load i32, ptr @je_ncpus, align 4, !tbaa !13
  %i.af = lshr i32 %i.ae, 1                       ; 2 uses
  %i.ag = icmp ult i32 %i.ab, %i.af
  %i.ah = select i1 %i.ag, i32 0, i32 %i.af
  %spec.select.i.i = sub nuw i32 %i.ab, %i.ah
  br label %percpu_arena_choose.exit.i

percpu_arena_choose.exit.i:                       ; preds = %bb.n, %bb.m
  %.0.i47.i = phi i32 [ %i.ab, %bb.m ], [ %spec.select.i.i, %bb.n ] ; 4 uses
  %.0.val.i = load i32, ptr %i.s, align 64, !tbaa !98
  %.not46.i = icmp eq i32 %.0.val.i, %.0.i47.i
  br i1 %.not46.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %percpu_arena_choose.exit.i
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !127 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 80640
  %.val.i.i = load i32, ptr %i.aj, align 64, !tbaa !98
  %.not.i50.i = icmp eq i32 %.val.i.i, %.0.i47.i
  br i1 %.not.i50.i, label %percpu_arena_update.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = zext i32 %.0.i47.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ak
  %i.am = load atomic ptr, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.q, label %arena_get.exit.i.i, !prof !104

bb.q:                                             ; preds = %bb.p
  %i.ao = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef %.0.i47.i, ptr noundef nonnull @je_arena_config_default) #18
  br label %arena_get.exit.i.i

arena_get.exit.i.i:                               ; preds = %bb.q, %bb.p
  %.0.i18.i.i = phi ptr [ %i.ao, %bb.q ], [ %i.am, %bb.p ] ; 2 uses
  tail call void @je_arena_migrate(ptr noundef nonnull %0, ptr noundef nonnull %i.ai, ptr noundef %.0.i18.i.i) #18
  %i.ap = load i8, ptr %0, align 8, !tbaa !101, !range !96, !noundef !97
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.r, label %percpu_arena_update.exit.i

bb.r:                                             ; preds = %arena_get.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.as, ptr noundef nonnull %i.ar, ptr noundef %.0.i18.i.i) #18
  br label %percpu_arena_update.exit.i

percpu_arena_update.exit.i:                       ; preds = %bb.r, %arena_get.exit.i.i, %bb.o
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !127
  br label %bb.s

bb.s:                                             ; preds = %percpu_arena_update.exit.i, %percpu_arena_choose.exit.i
  %.1.i = phi ptr [ %i.at, %percpu_arena_update.exit.i ], [ %.0.i, %percpu_arena_choose.exit.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store ptr %0, ptr %i.au, align 16, !tbaa !141
  br label %arena_choose_impl.exit

arena_choose_impl.exit:                           ; preds = %bb.a, %bb.c, %bb.d, %bb.k, %percpu_arena_ind_limit.exit.i, %bb.l, %bb.s
  %.037.i = phi ptr [ %1, %bb.a ], [ %.0.i, %percpu_arena_ind_limit.exit.i ], [ %.0.i, %bb.k ], [ %.1.i, %bb.s ], [ %.0.i, %bb.l ], [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.037.i
}

declare ptr @je_arena_choose_hard(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @je_tcache_arena_reassociate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_tcache_arena_associate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sched_getcpu() local_unnamed_addr #11

declare void @je_arena_migrate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @je_bin_malloc_no_fresh_slab(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @je_bin_malloc_with_fresh_slab(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @je_tcache_bin_flush_stashed(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @je_tcache_alloc_small_hard(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @je_bin_dalloc_locked_handle_newly_empty(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_bin_dalloc_locked_handle_newly_nonempty(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #16

declare void @je_large_dalloc_prep_locked(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @je_large_dalloc_finish(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_sdalloc_no_tcache(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #14 {
bb.a:
  %i.a = icmp ult i64 %2, 4097
  br i1 %i.a, label %bb.b, label %bb.c, !prof !102

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %2, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !103
  %i.f = zext i8 %i.e to i32
  br label %sz_size2index.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.g, label %emap_alloc_ctx_usize_get.exit, label %bb.d, !prof !104

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.i, i1 true) ; 3 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = sub nuw nsw i64 60, %i.j
  %3 = ashr exact i64 -1152921504606846976, %i.j
  %i.m = add nsw i64 %2, -1
  %4 = and i64 %3, %i.m
  %i.n = lshr i64 %4, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 3
  %i.q = shl nuw nsw i32 %i.k, 2
  %reass.sub = sub nsw i32 %i.p, %i.q
  %i.r = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.r, %bb.d ]
  %i.s = icmp samesign ult i32 %.0.i, 36
  br i1 %i.s, label %bb.e, label %emap_alloc_ctx_usize_get.exit, !prof !140

bb.e:                                             ; preds = %sz_size2index.exit
  tail call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef %1)
  br label %bb.f

emap_alloc_ctx_usize_get.exit:                    ; preds = %bb.c, %sz_size2index.exit
  tail call fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %emap_alloc_ctx_usize_get.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1) unnamed_addr #14 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !104

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #18
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %2, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i, i64 noundef %i.c)
  %i.d = load ptr, ptr %3, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @je_large_dalloc(ptr noundef %0, ptr noundef %i.d) #18
  ret void
}

declare void @je_tcache_bin_flush_small(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @je_tsd_slow_update(ptr noundef) local_unnamed_addr #3

declare ptr @je_arena_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !76}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"", !10, i64 0}
!20 = !{!"p1 _ZTS6tsdn_s", !14, i64 0}
!21 = !{!"", !17, i64 0}
!22 = !{!"locked_u64_s", !21, i64 0}
!23 = !{!"pac_decay_stats_s", !22, i64 0, !22, i64 8, !22, i64 16}
!24 = !{!"pac_stats_s", !23, i64 0, !23, i64 24, !17, i64 48, !21, i64 56, !21, i64 64}
!25 = !{!"pa_shard_stats_s", !17, i64 0, !24, i64 8}
!26 = !{!"arena_stats_s", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !21, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !25, i64 104, !17, i64 184, !17, i64 192, !9, i64 200, !9, i64 968, !21, i64 11944}
!27 = !{!"p1 _ZTS13tcache_slow_s", !14, i64 0}
!28 = !{!"", !27, i64 0}
!29 = !{!"p1 _ZTS28cache_bin_array_descriptor_s", !14, i64 0}
!30 = !{!"", !29, i64 0}
!31 = !{!"malloc_mutex_s", !9, i64 0}
!32 = !{!"p1 _ZTS7edata_s", !14, i64 0}
!33 = !{!"", !32, i64 0}
!34 = !{!"", !33, i64 0}
!35 = !{!"p1 _ZTS12pa_central_s", !14, i64 0}
!36 = !{!"_Bool", !9, i64 0}
!37 = !{!"", !36, i64 0}
!38 = !{!"pai_s", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!39 = !{!"eset_s", !9, i64 0, !9, i64 32, !9, i64 6432, !34, i64 9632, !21, i64 9640, !10, i64 9648}
!40 = !{!"ecache_s", !31, i64 0, !39, i64 112, !39, i64 9768, !10, i64 19424, !10, i64 19428, !36, i64 19432}
!41 = !{!"p1 _ZTS6base_s", !14, i64 0}
!42 = !{!"p1 _ZTS6emap_s", !14, i64 0}
!43 = !{!"p1 _ZTS13edata_cache_s", !14, i64 0}
!44 = !{!"exp_grow_s", !10, i64 0, !10, i64 4}
!45 = !{!"san_bump_alloc_s", !31, i64 0, !32, i64 112}
!46 = !{!"decay_s", !31, i64 0, !36, i64 112, !21, i64 120, !21, i64 128, !21, i64 136, !17, i64 144, !21, i64 152, !17, i64 160, !17, i64 168, !9, i64 176, !17, i64 1776}
!47 = !{!"p1 _ZTS14malloc_mutex_s", !14, i64 0}
!48 = !{!"p1 _ZTS11pac_stats_s", !14, i64 0}
!49 = !{!"pac_s", !38, i64 0, !40, i64 40, !40, i64 19480, !40, i64 38920, !41, i64 58360, !42, i64 58368, !43, i64 58376, !44, i64 58384, !31, i64 58392, !45, i64 58504, !21, i64 58624, !46, i64 58632, !46, i64 60416, !47, i64 62200, !48, i64 62208, !21, i64 62216}
!50 = !{!"p1 _ZTS13hpa_central_s", !14, i64 0}
!51 = !{!"edata_cache_fast_s", !34, i64 0, !43, i64 8, !36, i64 16}
!52 = !{!"sec_opts_s", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!53 = !{!"p1 _ZTS9sec_bin_s", !14, i64 0}
!54 = !{!"sec_s", !52, i64 0, !53, i64 32, !10, i64 40}
!55 = !{!"psset_bin_stats_s", !17, i64 0, !17, i64 8, !17, i64 16}
!56 = !{!"psset_stats_s", !55, i64 0, !9, i64 24, !9, i64 72, !9, i64 3144, !9, i64 3192}
!57 = !{!"p1 _ZTS8hpdata_s", !14, i64 0}
!58 = !{!"", !57, i64 0}
!59 = !{!"", !58, i64 0}
!60 = !{!"psset_s", !9, i64 0, !9, i64 1024, !56, i64 1032, !59, i64 4272, !9, i64 4280, !9, i64 5304, !59, i64 5320}
!61 = !{!"hpa_shard_opts_s", !17, i64 0, !17, i64 8, !10, i64 16, !36, i64 20, !17, i64 24, !36, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !10, i64 72}
!62 = !{!"hpa_shard_nonderived_stats_s", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!63 = !{!"hpa_shard_s", !38, i64 0, !50, i64 40, !31, i64 48, !31, i64 160, !41, i64 272, !51, i64 280, !54, i64 320, !60, i64 368, !17, i64 5696, !10, i64 5704, !42, i64 5712, !61, i64 5720, !17, i64 5800, !62, i64 5808, !21, i64 5848, !21, i64 5856}
!64 = !{!"ph_s", !14, i64 0, !17, i64 8}
!65 = !{!"", !64, i64 0}
!66 = !{!"edata_cache_s", !65, i64 0, !21, i64 16, !31, i64 24, !41, i64 136}
!67 = !{!"p1 _ZTS16pa_shard_stats_s", !14, i64 0}
!68 = !{!"pa_shard_s", !35, i64 0, !21, i64 8, !37, i64 16, !36, i64 17, !49, i64 24, !63, i64 62272, !66, i64 68160, !10, i64 68304, !47, i64 68312, !67, i64 68320, !42, i64 68328, !41, i64 68336}
!69 = !{!"arena_s", !9, i64 0, !19, i64 8, !20, i64 16, !26, i64 24, !28, i64 11976, !30, i64 11984, !31, i64 11992, !19, i64 12104, !34, i64 12112, !31, i64 12120, !68, i64 12288, !10, i64 80640, !41, i64 80648, !21, i64 80656, !9, i64 80664, !9, i64 80704}
!70 = !{!69, !41, i64 80648}
!71 = !{!"", !21, i64 0, !21, i64 8, !17, i64 16, !17, i64 24, !10, i64 32, !19, i64 36, !17, i64 40, !20, i64 48, !17, i64 56}
!72 = !{!71, !17, i64 56}
!73 = !{!71, !20, i64 48}
!74 = !{!71, !17, i64 40}
!75 = !{!69, !29, i64 11984}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"", !29, i64 0, !29, i64 8}
!78 = !{!"p1 _ZTS11cache_bin_s", !14, i64 0}
!79 = !{!"cache_bin_array_descriptor_s", !77, i64 0, !78, i64 16}
!80 = !{!79, !78, i64 16}
!81 = !{!79, !29, i64 0}
!82 = !{!"any p2 pointer", !14, i64 0}
!83 = !{!"cache_bin_stats_s", !17, i64 0}
!84 = !{!"short", !9, i64 0}
!85 = !{!"cache_bin_info_s", !84, i64 0}
!86 = !{!"cache_bin_s", !82, i64 0, !83, i64 8, !84, i64 16, !84, i64 18, !84, i64 20, !85, i64 22}
!87 = !{!86, !82, i64 0}
!88 = !{!86, !84, i64 20}
!89 = !{!86, !84, i64 22}
!90 = !{!86, !84, i64 18}
!91 = !{!14, !14, i64 0}
!92 = !{!"bitmap_info_s", !17, i64 0, !17, i64 8}
!93 = !{!"bin_info_s", !17, i64 0, !17, i64 8, !10, i64 16, !10, i64 20, !92, i64 24}
!94 = !{!93, !10, i64 20}
!95 = !{!69, !48, i64 74520}
!96 = !{i8 0, i8 2}
!97 = !{}
!98 = !{!69, !10, i64 80640}
!99 = !{!"p1 _ZTS24background_thread_info_s", !14, i64 0}
!100 = !{!99, !99, i64 0}
!101 = !{!36, !36, i64 0}
!102 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!103 = !{!9, !9, i64 0}
!104 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!105 = !{!"edata_s", !17, i64 0, !14, i64 8, !9, i64 16, !57, i64 24, !17, i64 32, !9, i64 40, !9, i64 64}
!106 = !{!105, !14, i64 8}
!107 = !{!105, !17, i64 0}
!108 = !{!"bin_stats_s", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72}
!109 = !{!"bin_s", !31, i64 0, !108, i64 112, !32, i64 192, !65, i64 200, !34, i64 216}
end_hunk_3
