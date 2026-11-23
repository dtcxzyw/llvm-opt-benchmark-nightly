Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/arena?download=true
inline.NumInlined: 376
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@duckdb_je_arena_stats_merge:atomic_store_zu.exit
  call void @duckdb_je_nstime_add(ptr noundef nonnull %i.gr, ptr noundef nonnull %.0.i151) #17
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i151, i64 8 ; 2 uses
  %i.hy = call i32 @duckdb_je_nstime_compare(ptr noundef nonnull %i.hx, ptr noundef nonnull %i.gs) #17
  %i.hz = icmp sgt i32 %i.hy, 0
  br i1 %i.hz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %malloc_mutex_lock.exit.i
  call void @duckdb_je_nstime_copy(ptr noundef nonnull %i.gs, ptr noundef nonnull %i.hx) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %malloc_mutex_lock.exit.i
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i151, i64 16
  %i.ib = load <2 x i64>, ptr %i.ia, align 8, !tbaa !31
  %i.ic = load <2 x i64>, ptr %i.gt, align 8, !tbaa !31
  %i.id = add <2 x i64> %i.ic, %i.ib
  store <2 x i64> %i.id, ptr %i.gt, align 8, !tbaa !31
  %i.ie = load i32, ptr %i.gu, align 8, !tbaa !179
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i151, i64 32
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !179 ; 2 uses
  %i.ih = icmp ult i32 %i.ie, %i.ig
  br i1 %i.ih, label %bb.v, label %bin_stats_merge.exit

bb.v:                                             ; preds = %bb.u
  store i32 %i.ig, ptr %i.gu, align 8, !tbaa !179
  br label %bin_stats_merge.exit

bin_stats_merge.exit:                             ; preds = %bb.u, %bb.v
  store atomic i32 0, ptr %i.gv monotonic, align 4
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i151, i64 40
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !88
  %i.ik = load i64, ptr %i.gw, align 8, !tbaa !88
  %i.il = add i64 %i.ik, %i.ij
  store i64 %i.il, ptr %i.gw, align 8, !tbaa !88
  %i.im = load i64, ptr %i.hp, align 8, !tbaa !86
  %i.in = load i64, ptr %i.gx, align 8, !tbaa !86
  %i.io = add i64 %i.in, %i.im
  store i64 %i.io, ptr %i.gx, align 8, !tbaa !86
  %i.ip = getelementptr inbounds nuw i8, ptr %.0.i151, i64 112
  %i.iq = load <2 x i64>, ptr %i.ip, align 8, !tbaa !31
  %i.ir = load <2 x i64>, ptr %i.gp, align 8, !tbaa !31
  %i.is = add <2 x i64> %i.ir, %i.iq
  store <2 x i64> %i.is, ptr %i.gp, align 8, !tbaa !31
  %i.it = getelementptr inbounds nuw i8, ptr %.0.i151, i64 128
  %i.iu = load <2 x i64>, ptr %i.it, align 8, !tbaa !31
  %i.iv = load <2 x i64>, ptr %i.gy, align 8, !tbaa !31
  %i.iw = add <2 x i64> %i.iv, %i.iu
  store <2 x i64> %i.iw, ptr %i.gy, align 8, !tbaa !31
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.i151, i64 144
  %i.iy = load <2 x i64>, ptr %i.ix, align 8, !tbaa !31
  %i.iz = load <2 x i64>, ptr %i.gz, align 8, !tbaa !31
  %i.ja = add <2 x i64> %i.iz, %i.iy
  store <2 x i64> %i.ja, ptr %i.gz, align 8, !tbaa !31
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.i151, i64 160
  %i.jc = load <2 x i64>, ptr %i.jb, align 8, !tbaa !31
  %i.jd = load <2 x i64>, ptr %i.ha, align 8, !tbaa !31
  %i.je = add <2 x i64> %i.jd, %i.jc
  store <2 x i64> %i.je, ptr %i.ha, align 8, !tbaa !31
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.i151, i64 176
  %i.jg = load <2 x i64>, ptr %i.jf, align 8, !tbaa !31
  %i.jh = load <2 x i64>, ptr %i.hb, align 8, !tbaa !31
  %i.ji = add <2 x i64> %i.jh, %i.jg
  store <2 x i64> %i.ji, ptr %i.hb, align 8, !tbaa !31
  %i.jj = getelementptr inbounds nuw i8, ptr %.0.i151, i64 200
  %i.jk = load <2 x i64>, ptr %i.jj, align 8, !tbaa !31
  %i.jl = load <2 x i64>, ptr %i.hc, align 8, !tbaa !31
  %i.jm = add <2 x i64> %i.jl, %i.jk
  store <2 x i64> %i.jm, ptr %i.hc, align 8, !tbaa !31
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.i151, i64 216
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !110
  %i.jp = load i64, ptr %i.hd, align 8, !tbaa !180
  %i.jq = add i64 %i.jp, %i.jo
  store i64 %i.jq, ptr %i.hd, align 8, !tbaa !180
  %i.jr = getelementptr inbounds nuw i8, ptr %.0.i151, i64 64
  store atomic i8 0, ptr %i.jr monotonic, align 8
  %i.js = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.hm) #17 ; 0 uses
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %i.jt = load i32, ptr %i.gn, align 4, !tbaa !107
  %i.ju = zext i32 %i.jt to i64
  %i.jv = icmp samesign ult i64 %indvars.iv.next168, %i.ju
  br i1 %i.jv, label %bb.p, label %._crit_edge
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @duckdb_je_base_stats_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @duckdb_je_pa_shard_stats_merge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_pa_shard_mtx_stats_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_nstime_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_nstime_subtract(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_handle_deferred_work(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !guid !181 {
tsdn_witness_tsdp_get.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 69336 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 69456
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.a, label %bb.e

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72912
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 10744
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 69408 ; 2 uses
  %i.i = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.h) #17
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.a) #17
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 69400
  store atomic i8 1, ptr %i.j monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 69392 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !86
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 69384 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !87
  %.not.i.i.i = icmp eq ptr %i.o, %0
  br i1 %.not.i.i.i, label %arena_decay_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.n, align 8, !tbaa !87
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 69376 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !88
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !88
  br label %arena_decay_impl.exit

arena_decay_impl.exit:                            ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10688
  tail call void @duckdb_je_pac_decay_all(ptr noundef %0, ptr noundef nonnull %i.s, ptr noundef nonnull %i.a, ptr noundef %i.f, ptr noundef nonnull %i.g, i1 noundef zeroext true) #17
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 69400
  store atomic i8 0, ptr %i.t monotonic, align 8
  %i.u = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #17 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %arena_decay_impl.exit, %tsdn_witness_tsdp_get.exit
  %i.v = load atomic i8, ptr @duckdb_je_background_thread_enabled_state monotonic, align 1, !range !112, !noundef !113
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %arena_background_thread_inactivity_check.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %1, i64 78952      ; 2 uses
  %.val.i = load i32, ptr %i.x, align 8, !tbaa !114
  %i.y = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !116
  %i.z = zext i32 %.val.i to i64
  %i.aa = load i64, ptr @duckdb_je_max_background_threads, align 8, !tbaa !31
  %i.ab = urem i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw [208 x i8], ptr %i.y, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 172
  %i.ae = load atomic i8, ptr %i.ad acquire, align 1, !range !112, !noundef !113
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.g, label %arena_background_thread_inactivity_check.exit

bb.g:                                             ; preds = %bb.f
  %.val6.i = load i32, ptr %i.x, align 8, !tbaa !114
  tail call fastcc void @arena_maybe_do_deferred_work(ptr noundef %0, i32 %.val6.i, ptr noundef nonnull %i.a, i64 noundef 0)
  br label %arena_background_thread_inactivity_check.exit

arena_background_thread_inactivity_check.exit:    ; preds = %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @duckdb_je_arena_extent_alloc_large(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 !guid !182 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i8 0, ptr %i.b, align 1, !tbaa !117
  %i.c = icmp ult i64 %2, 4097
  br i1 %i.c, label %bb.b, label %bb.c, !prof !118

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %2, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !119
  %i.h = zext i8 %i.g to i32
  br label %sz_size2index.exit

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.i, label %sz_size2index.exit, label %bb.d, !prof !120

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %2, 1
  %i.k = add i64 %i.j, -1
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.k, i1 true) ; 2 uses
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i64 60, %i.l
  %i.o = add nsw i64 %2, -1
  %i.p = lshr i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 3
  %i.s = shl nuw nsw i32 %i.m, 2
  %reass.sub = sub nsw i32 %i.r, %i.s
  %i.t = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.c, %bb.b
  %.0.i = phi i32 [ %i.h, %bb.b ], [ %i.t, %bb.d ], [ 232, %bb.c ]
  %i.u = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !31
  %i.v = add i64 %i.u, %2                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 78960
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !84
  %i.y = tail call ptr @duckdb_je_base_ehooks_get(ptr noundef %i.x) #17
  %i.z = load i64, ptr @duckdb_je_opt_san_guard_large, align 8, !tbaa !31
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %san_large_extent_decide_guard.exit, label %bb.e

bb.e:                                             ; preds = %sz_size2index.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load atomic ptr, ptr %i.ab acquire, align 8
  %i.ad = icmp ne ptr %i.ac, @duckdb_je_ehooks_default_extent_hooks
  %i.ae = icmp eq ptr %0, null
  %or.cond14.i = or i1 %i.ae, %i.ad
  br i1 %or.cond14.i, label %san_large_extent_decide_guard.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31 ; 3 uses
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
  %i.an = load i64, ptr @duckdb_je_opt_san_guard_large, align 8, !tbaa !31
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %.thread.i
  %.sink.i = phi i64 [ %i.ai, %.thread.i ], [ %i.an, %bb.h ]
  store i64 %.sink.i, ptr %i.af, align 8, !tbaa !31
  br label %san_large_extent_decide_guard.exit

san_large_extent_decide_guard.exit:               ; preds = %sz_size2index.exit, %bb.e, %bb.g, %.sink.split.i
  %.1.i = phi i1 [ false, %sz_size2index.exit ], [ false, %bb.g ], [ false, %bb.e ], [ %i.ah, %.sink.split.i ]
  %i.ao = load i64, ptr @duckdb_je_opt_calloc_madvise_threshold, align 8
  %i.ap = icmp uge i64 %2, %i.ao
  %i.aq = select i1 %4, i1 %i.ap, i1 false        ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 10664
  %i.as = call ptr @duckdb_je_pa_alloc(ptr noundef %0, ptr noundef nonnull %i.ar, i64 noundef %i.v, i64 noundef %3, i1 noundef zeroext false, i32 noundef %.0.i, i1 noundef zeroext %i.aq, i1 noundef zeroext %.1.i, ptr noundef nonnull %i.b) #17 ; 5 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.p, label %bb.i

bb.i:                                             ; preds = %san_large_extent_decide_guard.exit
  call fastcc void @arena_large_malloc_stats_update(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2)
  %i.au = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !31
  %.not33 = icmp ne i64 %i.au, 0
  %i.av = icmp ult i64 %3, 4096
  %or.cond38 = and i1 %i.av, %.not33
  br i1 %or.cond38, label %bb.j, label %arena_cache_oblivious_randomize.exit

bb.j:                                             ; preds = %bb.i
  %i.aw = add nuw nsw i64 %3, 63
  %i.ax = and i64 %i.aw, 8128                     ; 2 uses
  %i.ay = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %i.ay)
  %i.az = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ax, i1 true) ; 2 uses
  %i.ba = xor i64 %i.az, 63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bb = icmp eq ptr %0, null
  br i1 %i.bb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !31
  %i.be = mul i64 %i.bd, 6364136223846793005
  %i.bf = add i64 %i.be, 1442695040888963407      ; 2 uses
  store i64 %i.bf, ptr %i.bc, align 8, !tbaa !31
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bg = ptrtoint ptr %i.a to i64
  %i.bh = mul i64 %i.bg, 6364136223846793005
  %i.bi = add i64 %i.bh, 1442695040888963407
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink.i37 = phi i64 [ %i.bi, %bb.l ], [ %i.bf, %bb.k ]
  %i.bj = sub nuw nsw i64 115, %i.az
  %i.bk = lshr i64 %.sink.i37, %i.bj
  %i.bl = shl nuw nsw i64 %i.bk, %i.ba
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !122
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %arena_cache_oblivious_randomize.exit

arena_cache_oblivious_randomize.exit:             ; preds = %bb.m, %bb.i
  %.not = xor i1 %4, true
  %or.cond = or i1 %i.aq, %.not
  br i1 %or.cond, label %bb.p, label %bb.n

bb.n:                                             ; preds = %arena_cache_oblivious_randomize.exit
  %.val = load i64, ptr %i.as, align 8, !tbaa !123 ; 2 uses
  %i.bp = and i64 %.val, 32768
  %.not39 = icmp eq i64 %i.bp, 0
  br i1 %.not39, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr i8, ptr %i.as, i64 8
  %.val34 = load ptr, ptr %i.bq, align 8, !tbaa !122
  %i.br = lshr i64 %.val, 20
  %i.bs = and i64 %i.br, 255
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr align 1 %.val34, i8 0, i64 %i.bu, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %arena_cache_oblivious_randomize.exit, %bb.n, %bb.o, %san_large_extent_decide_guard.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret ptr %i.as
}

; Function Attrs: nounwind uwtable
define ptr @duckdb_je_arena_get_ehooks(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 !guid !183 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 78960
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !84
  %i.c = tail call ptr @duckdb_je_base_ehooks_get(ptr noundef %i.b) #17
  ret ptr %i.c
}

declare ptr @duckdb_je_pa_alloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @arena_large_malloc_stats_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 !guid !184 {
bb.a:
  %i.a = icmp ult i64 %2, 4097
  br i1 %i.a, label %sz_size2index.exit.thread, label %bb.b, !prof !118

sz_size2index.exit.thread:                        ; preds = %bb.a
  %i.b = add nuw nsw i64 %2, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !119
  %i.f = zext i8 %i.e to i32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.g, label %sz_size2index.exit.thread16, label %sz_size2index.exit, !prof !120

sz_size2index.exit:                               ; preds = %bb.b
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.i, i1 true) ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 2
  %i.m = sub nuw nsw i64 60, %i.j
  %i.n = add nsw i64 %2, -1
  %i.o = lshr i64 %i.n, %i.m
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 3
  %reass.sub.i = sub nsw i32 %i.q, %i.l
  %i.r = add nsw i32 %reass.sub.i, 229            ; 2 uses
  %i.s = icmp samesign ult i64 %2, 16384
  br i1 %i.s, label %bb.c, label %sz_size2index.exit.thread16

bb.c:                                             ; preds = %sz_size2index.exit.thread, %sz_size2index.exit
  %.0.i15 = phi i32 [ %i.f, %sz_size2index.exit.thread ], [ %i.r, %sz_size2index.exit ]
  %i.t = zext nneg i32 %.0.i15 to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_bin_offsets, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !6
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72 ; 2 uses
  %i.z = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.y) #17
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.x) #17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store atomic i8 1, ptr %i.aa monotonic, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !86
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !86
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !87
  %.not.i.i = icmp eq ptr %i.af, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.ae, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !88
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !88
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.e, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 112 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !124
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !124
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store atomic i8 0, ptr %i.am monotonic, align 8
  %i.an = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.y) #17 ; 0 uses
  br label %bb.g

sz_size2index.exit.thread16:                      ; preds = %bb.b, %sz_size2index.exit
  %.0.i18 = phi i32 [ %i.r, %sz_size2index.exit ], [ 232, %bb.b ]
  %i.ao = add nsw i32 %.0.i18, -36
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 992
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %i.ap, i64 %i.aq
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %sz_size2index.exit.thread16, %malloc_mutex_lock.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_extent_dalloc_large_prep(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 !guid !185 {
bb.a:
  %.val = load i64, ptr %2, align 8, !tbaa !123
  %i.a = lshr i64 %.val, 20
  %i.b = and i64 %i.a, 255
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31
  tail call fastcc void @arena_large_dalloc_stats_update(ptr noundef %0, ptr noundef %1, i64 noundef %i.d)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arena_large_dalloc_stats_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 !guid !186 {
bb.a:
  %i.a = icmp ult i64 %2, 4097
  br i1 %i.a, label %sz_size2index.exit.thread, label %bb.b, !prof !118

sz_size2index.exit.thread:                        ; preds = %bb.a
  %i.b = add nuw nsw i64 %2, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !119
  %i.f = zext i8 %i.e to i32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.g, label %sz_size2index.exit.thread16, label %sz_size2index.exit, !prof !120

sz_size2index.exit:                               ; preds = %bb.b
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.i, i1 true) ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 2
  %i.m = sub nuw nsw i64 60, %i.j
  %i.n = add nsw i64 %2, -1
  %i.o = lshr i64 %i.n, %i.m
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 3
  %reass.sub.i = sub nsw i32 %i.q, %i.l
  %i.r = add nsw i32 %reass.sub.i, 229            ; 2 uses
  %i.s = icmp samesign ult i64 %2, 16384
  br i1 %i.s, label %bb.c, label %sz_size2index.exit.thread16

bb.c:                                             ; preds = %sz_size2index.exit.thread, %sz_size2index.exit
  %.0.i15 = phi i32 [ %i.f, %sz_size2index.exit.thread ], [ %i.r, %sz_size2index.exit ]
  %i.t = zext nneg i32 %.0.i15 to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_bin_offsets, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !6
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72 ; 2 uses
  %i.z = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.y) #17
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.x) #17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store atomic i8 1, ptr %i.aa monotonic, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !86
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !86
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !87
  %.not.i.i = icmp eq ptr %i.af, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.ae, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !88
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !88
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.e, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 120 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !125
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !125
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store atomic i8 0, ptr %i.am monotonic, align 8
  %i.an = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.y) #17 ; 0 uses
  br label %bb.g

sz_size2index.exit.thread16:                      ; preds = %bb.b, %sz_size2index.exit
  %.0.i18 = phi i32 [ %i.r, %sz_size2index.exit ], [ 232, %bb.b ]
  %i.ao = add nsw i32 %.0.i18, -36
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1000
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %sz_size2index.exit.thread16, %malloc_mutex_lock.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_extent_ralloc_large_shrink(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 !guid !187 {
bb.a:
  %.val = load i64, ptr %2, align 8, !tbaa !123
  %i.a = lshr i64 %.val, 20
  %i.b = and i64 %i.a, 255
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31
  tail call fastcc void @arena_large_malloc_stats_update(ptr noundef %0, ptr noundef %1, i64 noundef %i.d)
  tail call fastcc void @arena_large_dalloc_stats_update(ptr noundef %0, ptr noundef %1, i64 noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_extent_ralloc_large_expand(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 !guid !188 {
bb.a:
  %.val = load i64, ptr %2, align 8, !tbaa !123
  %i.a = lshr i64 %.val, 20
  %i.b = and i64 %i.a, 255
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31
  tail call fastcc void @arena_large_malloc_stats_update(ptr noundef %0, ptr noundef %1, i64 noundef %i.d)
  tail call fastcc void @arena_large_dalloc_stats_update(ptr noundef %0, ptr noundef %1, i64 noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @duckdb_je_arena_decay_ms_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 !guid !189 {
bb.a:
  %i.a = load atomic i8, ptr @duckdb_je_background_thread_enabled_state monotonic, align 1, !range !112, !noundef !113
  %i.b = trunc nuw i8 %i.a to i1
  %..i = select i1 %i.b, i32 1, i32 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 10664
  %i.d = tail call zeroext i1 @duckdb_je_pa_decay_ms_set(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %2, i64 noundef %3, i32 noundef %..i) #17
  ret i1 %i.d
}

declare zeroext i1 @duckdb_je_pa_decay_ms_set(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @duckdb_je_pa_decay_ms_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_decay(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 !guid !190 {
bb.a:
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72928
  tail call void @duckdb_je_sec_flush(ptr noundef %0, ptr noundef nonnull %i.a) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 69336
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72912 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10744
  %i.f = tail call fastcc noundef zeroext i1 @arena_decay_impl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef %i.d, ptr noundef nonnull %i.e, i1 noundef zeroext %2, i1 noundef zeroext %3)
  br i1 %i.f, label %arena_decay_muzzy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 30296
  %i.h = tail call i64 @duckdb_je_eset_npages_get(ptr noundef nonnull %i.g) #17
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 39952
  %i.j = tail call i64 @duckdb_je_eset_npages_get(ptr noundef nonnull %i.i) #17
  %i.k = sub i64 0, %i.h
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %pa_shard_dont_decay_muzzy.exit.i, label %pa_shard_dont_decay_muzzy.exit.thread.i

pa_shard_dont_decay_muzzy.exit.i:                 ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 10688
  %i.n = tail call i64 @duckdb_je_pac_decay_ms_get(ptr noundef nonnull %i.m, i32 noundef 2) #17
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %arena_decay_muzzy.exit, label %pa_shard_dont_decay_muzzy.exit.thread.i

pa_shard_dont_decay_muzzy.exit.thread.i:          ; preds = %pa_shard_dont_decay_muzzy.exit.i, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 71120
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 30184
  %i.t = tail call fastcc zeroext i1 @arena_decay_impl(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, i1 noundef zeroext %2, i1 noundef zeroext %3) ; 0 uses
  br label %arena_decay_muzzy.exit

arena_decay_muzzy.exit:                           ; preds = %pa_shard_dont_decay_muzzy.exit.thread.i, %pa_shard_dont_decay_muzzy.exit.i, %bb.c
  ret void
}

declare void @duckdb_je_sec_flush(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_do_deferred_work(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !guid !191 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 69336
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72912 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 10744
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 69408 ; 2 uses
  %i.f = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.e) #17
  %.not.i.i4 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i4, label %bb.b, label %duckdb_je_arena_decay.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 69392 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !86
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 69384 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87
  %.not.i.i36.i6 = icmp eq ptr %i.k, %0
  br i1 %.not.i.i36.i6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.j, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 69376 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !88
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !88
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 10688 ; 3 uses
  %i.p = tail call zeroext i1 @duckdb_je_pac_maybe_decay_purge(ptr noundef %0, ptr noundef nonnull %i.o, ptr noundef nonnull %i.a, ptr noundef %i.c, ptr noundef nonnull %i.d, i32 noundef 0) #17 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 69400
  store atomic i8 0, ptr %i.q monotonic, align 8
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #17 ; 0 uses
  %i.s = load atomic i8, ptr @duckdb_je_background_thread_enabled_state monotonic, align 1, !range !112, !noundef !113 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 30296
  %i.u = tail call i64 @duckdb_je_eset_npages_get(ptr noundef nonnull %i.t) #17
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 39952
  %i.w = tail call i64 @duckdb_je_eset_npages_get(ptr noundef nonnull %i.v) #17
  %i.x = sub i64 0, %i.u
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %pa_shard_dont_decay_muzzy.exit.i.i, label %pa_shard_dont_decay_muzzy.exit.thread.i.i

pa_shard_dont_decay_muzzy.exit.i.i:               ; preds = %bb.d
end_hunk_0
begin_hunk_1_@duckdb_je_arena_malloc_hard:bb.a
  store i64 %i.bs, ptr %i.bc, align 8, !tbaa !86
  %i.bt = load ptr, ptr %i.bf, align 8, !tbaa !87
  %.not.i.i54.i = icmp eq ptr %i.bt, %0
  br i1 %.not.i.i54.i, label %malloc_mutex_lock.exit55.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %0, ptr %i.bf, align 8, !tbaa !87
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !88
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !88
  br label %malloc_mutex_lock.exit55.i

malloc_mutex_lock.exit55.i:                       ; preds = %bb.x, %bb.w
  %i.bx = tail call fastcc ptr @arena_bin_malloc_no_fresh_slab(ptr noundef nonnull %.014202327, ptr noundef nonnull %.0.i.i.i, i32 noundef %3) ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %malloc_mutex_lock.exit55.i
  %i.bz = icmp eq ptr %i.bp, null
  br i1 %i.bz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store atomic i8 0, ptr %i.bn monotonic, align 8
  %i.ca = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.az) #17 ; 0 uses
  br label %arena_malloc_small.exit

bb.aa:                                            ; preds = %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 160 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !141
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !141
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 176 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !133
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !133
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 224
  store ptr %i.bp, ptr %i.ch, align 8, !tbaa !131
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 64 ; 3 uses
  %.0101.i.i.i.i = load i64, ptr %i.ci, align 8, !tbaa !31 ; 2 uses
  %i.cj = icmp eq i64 %.0101.i.i.i.i, 0
  br i1 %i.cj, label %.lr.ph.i.i.i.i, label %arena_bin_malloc_with_fresh_slab.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aa, %.lr.ph.i.i.i.i
  %.02.i.i.i.i = phi i32 [ %i.ck, %.lr.ph.i.i.i.i ], [ 0, %bb.aa ]
  %i.ck = add i32 %.02.i.i.i.i, 1                 ; 3 uses
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cl
  %.010.i.i.i.i = load i64, ptr %i.cm, align 8, !tbaa !31 ; 2 uses
  %i.cn = icmp eq i64 %.010.i.i.i.i, 0
  br i1 %i.cn, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i
  %i.co = shl i32 %i.ck, 6
  %i.cp = zext i32 %i.co to i64
  br label %arena_bin_malloc_with_fresh_slab.exit.i

arena_bin_malloc_with_fresh_slab.exit.i:          ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.aa
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.aa ], [ %i.cp, %._crit_edge.loopexit.i.i.i.i ] ; 2 uses
  %.010.lcssa.i.i.i.i = phi i64 [ %.0101.i.i.i.i, %bb.aa ], [ %.010.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ]
  %i.cq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.010.lcssa.i.i.i.i, i1 true) ; 2 uses
  %i.cr = add nuw nsw i64 %i.cq, %.0.lcssa.i.i.i.i
  %i.cs = lshr exact i64 %.0.lcssa.i.i.i.i, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cs ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !31
  %i.cv = shl nuw i64 1, %i.cq
  %i.cw = xor i64 %i.cv, %i.cu
  store i64 %i.cw, ptr %i.ct, align 8, !tbaa !31
  %i.cx = getelementptr i8, ptr %i.bp, i64 8
  %.val.i.i.i = load ptr, ptr %i.cx, align 8, !tbaa !122
  %i.cy = load i64, ptr %i.bm, align 8, !tbaa !139
  %i.cz = mul i64 %i.cy, %i.cr
  %i.da = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.cz
  %i.db = load i64, ptr %i.bp, align 8, !tbaa !123
  %i.dc = add i64 %i.db, -268435456
  store i64 %i.dc, ptr %i.bp, align 8, !tbaa !123
  br label %bb.ab

bb.ab:                                            ; preds = %arena_bin_malloc_with_fresh_slab.exit.i, %malloc_mutex_lock.exit55.i, %malloc_mutex_lock.exit.i
  %.048.i = phi ptr [ null, %arena_bin_malloc_with_fresh_slab.exit.i ], [ %i.bp, %malloc_mutex_lock.exit55.i ], [ null, %malloc_mutex_lock.exit.i ] ; 2 uses
  %.0.i17 = phi ptr [ %i.da, %arena_bin_malloc_with_fresh_slab.exit.i ], [ %i.bx, %malloc_mutex_lock.exit55.i ], [ %i.bk, %malloc_mutex_lock.exit.i ] ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 112 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !124
  %i.df = add i64 %i.de, 1
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !124
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 128 ; 2 uses
  %i.dh = load <2 x i64>, ptr %i.dg, align 8, !tbaa !31
  %i.di = add <2 x i64> %i.dh, splat (i64 1)
  store <2 x i64> %i.di, ptr %i.dg, align 8, !tbaa !31
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store atomic i8 0, ptr %i.dj monotonic, align 8
  %i.dk = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.az) #17 ; 0 uses
  %.not.i18 = icmp eq ptr %.048.i, null
  br i1 %.not.i18, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i8 0, ptr %i.a, align 1, !tbaa !117
  %i.dl = getelementptr inbounds nuw i8, ptr %.014202327, i64 10664
  call void @duckdb_je_pa_dalloc(ptr noundef %0, ptr noundef nonnull %i.dl, ptr noundef nonnull %.048.i, ptr noundef nonnull %i.a) #17
  %i.dm = load i8, ptr %i.a, align 1, !tbaa !117, !range !112, !noundef !113
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.ad, label %duckdb_je_arena_slab_dalloc.exit.i

bb.ad:                                            ; preds = %bb.ac
  call void @duckdb_je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %.014202327)
  br label %duckdb_je_arena_slab_dalloc.exit.i

duckdb_je_arena_slab_dalloc.exit.i:               ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ae

bb.ae:                                            ; preds = %duckdb_je_arena_slab_dalloc.exit.i, %bb.ab
  br i1 %4, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i17, i8 0, i64 %i.ao, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br i1 %i.b, label %arena_malloc_small.exit, label %bb.ah, !prof !120

bb.ah:                                            ; preds = %bb.ag
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !119
  %i.ds = load i32, ptr %i.do, align 4, !tbaa !144 ; 2 uses
  %i.dt = add nsw i32 %i.ds, -1
  store i32 %i.dt, ptr %i.do, align 4, !tbaa !144
  %i.du = icmp slt i32 %i.ds, 1
  br i1 %i.du, label %bb.ai, label %arena_malloc_small.exit, !prof !120

bb.ai:                                            ; preds = %bb.ah
  %i.dv = icmp sgt i8 %i.dr, 0
  br i1 %i.dv, label %ticker_geom_ticks.exit.i, label %bb.aj

ticker_geom_ticks.exit.i:                         ; preds = %bb.ai
  store i32 0, ptr %i.do, align 4, !tbaa !144
  br label %arena_malloc_small.exit

bb.aj:                                            ; preds = %bb.ai
  %i.dw = load i64, ptr %i.dp, align 8, !tbaa !31
  %i.dx = mul i64 %i.dw, 6364136223846793005
  %i.dy = add i64 %i.dx, 1442695040888963407      ; 2 uses
  store i64 %i.dy, ptr %i.dp, align 8, !tbaa !31
  %i.dz = lshr i64 %i.dy, 58
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !145
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr @duckdb_je_ticker_geom_table, i64 %i.dz
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !119
  %i.ef = zext i8 %i.ee to i64
  %i.eg = mul nsw i64 %i.ef, %i.ec
  %i.eh = udiv i64 %i.eg, 61
  %i.ei = trunc i64 %i.eh to i32
  store i32 %i.ei, ptr %i.do, align 8, !tbaa !144
  call void @duckdb_je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %.014202327, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %arena_malloc_small.exit

bb.ak:                                            ; preds = %.thread, %bb.n
  %.0142022 = phi ptr [ %.014.ph, %.thread ], [ %.014, %bb.n ]
  %i.ej = zext i32 %3 to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !31
  %i.em = tail call ptr @duckdb_je_large_malloc(ptr noundef %0, ptr noundef nonnull %.0142022, i64 noundef %i.el, i1 noundef zeroext %4) #17
  br label %arena_malloc_small.exit

arena_malloc_small.exit:                          ; preds = %bb.aj, %ticker_geom_ticks.exit.i, %bb.ah, %bb.ag, %bb.z, %arena_choose_maybe_huge.exit, %bb.ak
  %.0 = phi ptr [ %i.em, %bb.ak ], [ null, %arena_choose_maybe_huge.exit ], [ null, %bb.z ], [ %.0.i17, %ticker_geom_ticks.exit.i ], [ %.0.i17, %bb.aj ], [ %.0.i17, %bb.ag ], [ %.0.i17, %bb.ah ]
  ret ptr %.0
}

declare ptr @duckdb_je_large_malloc(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @duckdb_je_arena_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #0 !guid !226 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  br i1 %5, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 4097
  br i1 %i.b, label %bb.c, label %bb.d, !prof !118

bb.c:                                             ; preds = %bb.b
  %i.c = add nuw nsw i64 %2, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !119
  %i.g = zext i8 %i.f to i32
  br label %sz_size2index.exit

bb.d:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.h, label %sz_size2index.exit, label %bb.e, !prof !120

bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw i64 %2, 1
  %i.j = add i64 %i.i, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.j, i1 true) ; 2 uses
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = sub nuw nsw i64 60, %i.k
  %i.n = add nsw i64 %2, -1
  %i.o = lshr i64 %i.n, %i.m
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 3
  %i.r = shl nuw nsw i32 %i.l, 2
  %reass.sub = sub nsw i32 %i.q, %i.r
  %i.s = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.e, %bb.d, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.c ], [ %i.s, %bb.e ], [ 232, %bb.d ] ; 5 uses
  %.not.i = icmp eq ptr %6, null
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !120

bb.f:                                             ; preds = %sz_size2index.exit
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = zext nneg i32 %.0.i to i64               ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.u ; 9 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !100  ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !104  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !150 ; 2 uses
  %i.ac = trunc i64 %i.y to i16
  %.not.i22 = icmp eq i16 %i.ab, %i.ac
  br i1 %.not.i22, label %bb.h, label %bb.g, !prof !120

bb.g:                                             ; preds = %bb.f
  store ptr %i.z, ptr %i.v, align 8, !tbaa !100
  br label %cache_bin_alloc_impl.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !101
  %.not21.i = icmp eq i16 %i.ae, %i.ab
  br i1 %.not21.i, label %cache_bin_alloc_impl.exit, label %bb.i, !prof !120

bb.i:                                             ; preds = %bb.h
  store ptr %i.z, ptr %i.v, align 8, !tbaa !100
  %i.af = ptrtoint ptr %i.z to i64
  %i.ag = trunc i64 %i.af to i16
  store i16 %i.ag, ptr %i.aa, align 8, !tbaa !150
  br label %cache_bin_alloc_impl.exit.thread

cache_bin_alloc_impl.exit:                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ah = tail call fastcc ptr @arena_choose(ptr noundef %0, ptr noundef %1) ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.thread, label %bb.j, !prof !120

bb.j:                                             ; preds = %cache_bin_alloc_impl.exit
  %.val = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.aj = icmp eq ptr %.val, @duckdb_je_disabled_bin
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !120

bb.k:                                             ; preds = %bb.j
  %i.ak = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef %0, ptr noundef nonnull %i.ah, i64 noundef %2, i32 noundef %.0.i, i1 noundef zeroext %4, i1 noundef zeroext true)
  br label %.thread

.thread:                                          ; preds = %cache_bin_alloc_impl.exit, %bb.k
  %.0.i21.ph = phi ptr [ %i.ak, %bb.k ], [ null, %cache_bin_alloc_impl.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %arena_malloc.exit

bb.l:                                             ; preds = %bb.j
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %i.v, i32 noundef %.0.i, i1 noundef zeroext true) #17
  %i.al = call ptr @duckdb_je_tcache_alloc_small_hard(ptr noundef %0, ptr noundef nonnull %i.ah, ptr noundef nonnull %6, ptr noundef nonnull %i.v, i32 noundef %.0.i, ptr noundef nonnull %i.a) #17
  %i.am = load i8, ptr %i.a, align 1, !tbaa !117, !range !112, !noundef !113
  %.not = icmp eq i8 %i.am, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br i1 %.not, label %arena_malloc.exit, label %cache_bin_alloc_impl.exit.thread

cache_bin_alloc_impl.exit.thread:                 ; preds = %bb.i, %bb.g, %bb.l
  %.132.i = phi ptr [ %i.al, %bb.l ], [ %i.x, %bb.g ], [ %i.x, %bb.i ] ; 2 uses
  br i1 %4, label %bb.m, label %bb.n, !prof !120

bb.m:                                             ; preds = %cache_bin_alloc_impl.exit.thread
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.u
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i, i8 0, i64 %i.ao, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %cache_bin_alloc_impl.exit.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !142
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !142
  br label %arena_malloc.exit

.critedge.i:                                      ; preds = %sz_size2index.exit
  %i.as = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %.0.i, i1 noundef zeroext %4, i1 noundef zeroext true)
  br label %arena_malloc.exit

bb.o:                                             ; preds = %bb.a
  %i.at = icmp ult i64 %3, 65
  br i1 %i.at, label %bb.p, label %bb.q, !prof !118

bb.p:                                             ; preds = %bb.o
  %i.au = tail call ptr @duckdb_je_large_malloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %4) #17
  br label %arena_malloc.exit

bb.q:                                             ; preds = %bb.o
  %i.av = tail call ptr @duckdb_je_large_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) #17
  br label %arena_malloc.exit

arena_malloc.exit:                                ; preds = %.critedge.i, %.thread, %bb.l, %bb.n, %bb.q, %bb.p
  %.0 = phi ptr [ %i.av, %bb.q ], [ %i.au, %bb.p ], [ %i.as, %.critedge.i ], [ %.132.i, %bb.n ], [ null, %bb.l ], [ %.0.i21.ph, %.thread ]
  ret ptr %.0
}

declare ptr @duckdb_je_large_palloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_arena_dalloc_bin_locked_handle_newly_empty(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !guid !227 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131
  %i.c = icmp eq ptr %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !131
  br label %arena_dissociate_bin_slab.exit

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %2, align 8, !tbaa !123
  %i.d = lshr i64 %.val.i, 20
  %i.e = and i64 %i.d, 255
  %i.f = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !137
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %1, i64 78952
  %.val10.i = load i32, ptr %i.j, align 8, !tbaa !114
  %i.k = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !6
  %i.l = icmp ult i32 %.val10.i, %i.k
  br i1 %i.l, label %arena_dissociate_bin_slab.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 248 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !126  ; 2 uses
  %i.o = icmp eq ptr %i.n, %2
  br i1 %i.o, label %bb.f, label %.thread.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !119  ; 2 uses
  store ptr %i.q, ptr %i.m, align 8, !tbaa !126
  %i.r = icmp eq ptr %i.q, %2
  br i1 %i.r, label %bb.g, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !119
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !119
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !119
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %i.v, ptr %i.y, align 8, !tbaa !119
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !119  ; 2 uses
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !119
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !119
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !119
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !119
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !119 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !119
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !119
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !119
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr %2, ptr %i.aj, align 8, !tbaa !119
  br label %arena_dissociate_bin_slab.exit

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.m, align 8, !tbaa !126
  br label %arena_dissociate_bin_slab.exit

bb.h:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 232
  tail call void @duckdb_je_edata_heap_remove(ptr noundef nonnull %i.ak, ptr noundef nonnull %2) #17
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !138
  %i.an = add i64 %i.am, -1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !138
  br label %arena_dissociate_bin_slab.exit

arena_dissociate_bin_slab.exit:                   ; preds = %bb.b, %bb.d, %.thread.i.i.i, %bb.g, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !133
  %i.aq = add i64 %i.ap, -1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !133
  ret void
}

end_hunk_1
begin_hunk_2_@duckdb_je_arena_dalloc_small:bb.a

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %i.db, align 8, !tbaa !126
  br label %duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit.i

duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit.i: ; preds = %bb.u, %.thread.i.i.i.i, %bb.r
  call fastcc void @arena_bin_lower_slab(ptr noundef nonnull readonly %i.h, ptr noundef nonnull %i.e, ptr noundef nonnull %.0.i.i)
  br label %arena_dalloc_bin_locked_step.exit.i

arena_dalloc_bin_locked_step.exit.i:              ; preds = %duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty.exit.i, %bb.q, %bb.p, %bb.o
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 120 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !125
  %i.eb = add i64 %i.ea, 1
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !125
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 136 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !132
  %i.ee = add i64 %i.ed, -1
  store i64 %i.ee, ptr %i.ec, align 8, !tbaa !132
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  store atomic i8 0, ptr %i.ef monotonic, align 8
  %i.eg = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.w) #17 ; 0 uses
  br i1 %.not.i, label %bb.v, label %arena_dalloc_bin.exit

bb.v:                                             ; preds = %arena_dalloc_bin_locked_step.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i8 0, ptr %i.a, align 1, !tbaa !117
  %i.eh = getelementptr inbounds nuw i8, ptr %i.h, i64 10664
  call void @duckdb_je_pa_dalloc(ptr noundef %0, ptr noundef nonnull %i.eh, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #17
  %i.ei = load i8, ptr %i.a, align 1, !tbaa !117, !range !112, !noundef !113
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.w, label %duckdb_je_arena_slab_dalloc.exit.i

bb.w:                                             ; preds = %bb.v
  call void @duckdb_je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %i.h)
  br label %duckdb_je_arena_slab_dalloc.exit.i

duckdb_je_arena_slab_dalloc.exit.i:               ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %arena_dalloc_bin.exit

arena_dalloc_bin.exit:                            ; preds = %arena_dalloc_bin_locked_step.exit.i, %duckdb_je_arena_slab_dalloc.exit.i
  br i1 %i.b, label %arena_decay_ticks.exit, label %bb.x, !prof !120

bb.x:                                             ; preds = %arena_dalloc_bin.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !119
  %i.eo = load i32, ptr %i.ek, align 4, !tbaa !144 ; 2 uses
  %i.ep = add nsw i32 %i.eo, -1
  store i32 %i.ep, ptr %i.ek, align 4, !tbaa !144
  %i.eq = icmp slt i32 %i.eo, 1
  br i1 %i.eq, label %bb.y, label %arena_decay_ticks.exit, !prof !120

bb.y:                                             ; preds = %bb.x
  %i.er = icmp sgt i8 %i.en, 0
  br i1 %i.er, label %ticker_geom_ticks.exit, label %bb.z

ticker_geom_ticks.exit:                           ; preds = %bb.y
  store i32 0, ptr %i.ek, align 4, !tbaa !144
  br label %arena_decay_ticks.exit

bb.z:                                             ; preds = %bb.y
  %i.es = load i64, ptr %i.el, align 8, !tbaa !31
  %i.et = mul i64 %i.es, 6364136223846793005
  %i.eu = add i64 %i.et, 1442695040888963407      ; 2 uses
  store i64 %i.eu, ptr %i.el, align 8, !tbaa !31
  %i.ev = lshr i64 %i.eu, 58
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !145
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr @duckdb_je_ticker_geom_table, i64 %i.ev
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !119
  %i.fb = zext i8 %i.fa to i64
  %i.fc = mul nsw i64 %i.fb, %i.ey
  %i.fd = udiv i64 %i.fc, 61
  %i.fe = trunc i64 %i.fd to i32
  store i32 %i.fe, ptr %i.ek, align 8, !tbaa !144
  call void @duckdb_je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.h, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.x, %ticker_geom_ticks.exit, %arena_dalloc_bin.exit, %bb.z
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @duckdb_je_arena_ralloc_no_move(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %6) local_unnamed_addr #0 !guid !230 {
bb.a:
  %7 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %8 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c, !prof !120

bb.b:                                             ; preds = %bb.a
  call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %7) #17
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i37 = phi ptr [ %7, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef %0, ptr noundef nonnull %.0.i37, i64 noundef %i.c)
  %i.d = load ptr, ptr %8, align 8, !tbaa !153    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.e = icmp ugt i64 %3, 8070450532247928832
  br i1 %i.e, label %arena_decay_ticks.exit, label %bb.d, !prof !120

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.f = icmp samesign ult i64 %3, 4097
  br i1 %i.f, label %bb.e, label %sz_s2u_compute.exit, !prof !118

bb.e:                                             ; preds = %bb.d
  %i.g = add nuw nsw i64 %3, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !119
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31
  br label %sz_s2u.exit36

sz_s2u_compute.exit:                              ; preds = %bb.d
  %i.n = shl nuw i64 %3, 1
  %i.o = add i64 %i.n, -1
  %i.p = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.o, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.p
  %i.q = lshr i64 1152921504606846975, %i.p
  %i.r = add nuw nsw i64 %3, %i.q
  %i.s = and i64 %i.r, %notmask.i
  br label %sz_s2u.exit36

sz_s2u.exit36:                                    ; preds = %bb.e, %sz_s2u_compute.exit
  %.0.i35 = phi i64 [ %i.m, %bb.e ], [ %i.s, %sz_s2u_compute.exit ] ; 3 uses
  %i.t = add i64 %4, %3                           ; 5 uses
  %i.u = icmp ult i64 %i.t, 4097
  br i1 %i.u, label %bb.f, label %bb.g, !prof !118

bb.f:                                             ; preds = %sz_s2u.exit36
  %i.v = add nuw nsw i64 %i.t, 7
  %i.w = lshr i64 %i.v, 3
  %i.x = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !119
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !31
  br label %sz_s2u.exit

bb.g:                                             ; preds = %sz_s2u.exit36
  %i.ac = icmp ugt i64 %i.t, 8070450532247928832
  br i1 %i.ac, label %sz_s2u.exit.thread, label %bb.h, !prof !120

bb.h:                                             ; preds = %bb.g
  %i.ad = shl nuw i64 %i.t, 1
  %i.ae = add i64 %i.ad, -1
  %i.af = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ae, i1 true) ; 2 uses
  %notmask.i39 = ashr exact i64 -1152921504606846976, %i.af
  %i.ag = lshr i64 1152921504606846975, %i.af
  %i.ah = add nuw nsw i64 %i.t, %i.ag
  %i.ai = and i64 %i.ah, %notmask.i39
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.h, %bb.f
  %.0.i34 = phi i64 [ %i.ab, %bb.f ], [ %i.ai, %bb.h ] ; 9 uses
  %i.aj = icmp ult i64 %2, 14337
  %i.ak = icmp ult i64 %.0.i35, 14337
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false, !prof !118
  br i1 %i.al, label %bb.i, label %bb.q, !prof !118

sz_s2u.exit.thread:                               ; preds = %bb.g
  %i.am = icmp ult i64 %2, 14337
  %i.an = icmp ult i64 %.0.i35, 14337
  %i.ao = select i1 %i.am, i1 %i.an, i1 false, !prof !118
  br i1 %i.ao, label %.thread53, label %arena_decay_ticks.exit, !prof !118

bb.i:                                             ; preds = %sz_s2u.exit
  %i.ap = icmp ugt i64 %.0.i34, 14336
  br i1 %i.ap, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = icmp samesign ult i64 %.0.i34, 4097
  br i1 %i.aq, label %.thread53, label %sz_size2index_compute.exit, !prof !231

.thread53:                                        ; preds = %sz_s2u.exit.thread, %bb.j
  %.0.i34485156 = phi i64 [ %.0.i34, %bb.j ], [ 0, %sz_s2u.exit.thread ] ; 2 uses
  %i.ar = add nuw nsw i64 %.0.i34485156, 7
  %i.as = lshr i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !119
  %i.av = zext i8 %i.au to i32
  br label %sz_size2index.exit33

sz_size2index_compute.exit:                       ; preds = %bb.j
  %i.aw = shl nuw nsw i64 %.0.i34, 1
  %i.ax = add nsw i64 %i.aw, -1
  %i.ay = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ax, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = sub nuw nsw i64 60, %i.ay
  %i.bb = add nsw i64 %.0.i34, -1
  %i.bc = lshr i64 %i.bb, %i.ba
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = and i32 %i.bd, 3
  %i.bf = shl nuw nsw i32 %i.az, 2
  %reass.sub = sub nsw i32 %i.be, %i.bf
  %i.bg = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit33

sz_size2index.exit33:                             ; preds = %.thread53, %sz_size2index_compute.exit
  %.0.i34485155 = phi i64 [ %.0.i34485156, %.thread53 ], [ %.0.i34, %sz_size2index_compute.exit ]
  %.0.i32 = phi i32 [ %i.av, %.thread53 ], [ %i.bg, %sz_size2index_compute.exit ]
  %i.bh = icmp samesign ult i64 %2, 4097
  br i1 %i.bh, label %bb.k, label %sz_size2index_compute.exit45, !prof !118

bb.k:                                             ; preds = %sz_size2index.exit33
  %i.bi = add nuw nsw i64 %2, 7
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !119
  %i.bm = zext i8 %i.bl to i32
  br label %sz_size2index.exit

sz_size2index_compute.exit45:                     ; preds = %sz_size2index.exit33
  %i.bn = shl nuw nsw i64 %2, 1
  %i.bo = add nsw i64 %i.bn, -1
  %i.bp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.bo, i1 true) ; 2 uses
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = sub nuw nsw i64 60, %i.bp
  %i.bs = add nsw i64 %2, -1
  %i.bt = lshr i64 %i.bs, %i.br
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = and i32 %i.bu, 3
  %i.bw = shl nuw nsw i32 %i.bq, 2
  %reass.sub66 = sub nsw i32 %i.bv, %i.bw
  %i.bx = add nsw i32 %reass.sub66, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.k, %sz_size2index_compute.exit45
  %.0.i = phi i32 [ %i.bm, %bb.k ], [ %i.bx, %sz_size2index_compute.exit45 ]
  %.not = icmp eq i32 %.0.i32, %.0.i
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %sz_size2index.exit, %bb.i
  %.0.i344852 = phi i64 [ %.0.i34485155, %sz_size2index.exit ], [ %.0.i34, %bb.i ]
  %i.by = icmp samesign ugt i64 %3, %2
  %i.bz = icmp ult i64 %.0.i344852, %2
  %or.cond31 = select i1 %i.by, i1 true, i1 %i.bz
  br i1 %or.cond31, label %arena_decay_ticks.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %sz_size2index.exit
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !123
  %i.ca = and i64 %.val.i, 4095
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.ca
  %i.cc = load atomic ptr, ptr %i.cb monotonic, align 8
  br i1 %i.a, label %arena_decay_ticks.exit, label %bb.n, !prof !120

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !119
  %i.ch = load i32, ptr %i.cd, align 4, !tbaa !144 ; 2 uses
  %i.ci = add nsw i32 %i.ch, -1
  store i32 %i.ci, ptr %i.cd, align 4, !tbaa !144
  %i.cj = icmp slt i32 %i.ch, 1
  br i1 %i.cj, label %bb.o, label %arena_decay_ticks.exit, !prof !120

bb.o:                                             ; preds = %bb.n
  %i.ck = icmp sgt i8 %i.cg, 0
  br i1 %i.ck, label %ticker_geom_ticks.exit, label %bb.p

ticker_geom_ticks.exit:                           ; preds = %bb.o
  store i32 0, ptr %i.cd, align 4, !tbaa !144
  br label %arena_decay_ticks.exit

bb.p:                                             ; preds = %bb.o
  %i.cl = load i64, ptr %i.ce, align 8, !tbaa !31
  %i.cm = mul i64 %i.cl, 6364136223846793005
  %i.cn = add i64 %i.cm, 1442695040888963407      ; 2 uses
  store i64 %i.cn, ptr %i.ce, align 8, !tbaa !31
  %i.co = lshr i64 %i.cn, 58
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !145
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @duckdb_je_ticker_geom_table, i64 %i.co
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !119
  %i.cu = zext i8 %i.ct to i64
  %i.cv = mul nsw i64 %i.cu, %i.cr
  %i.cw = udiv i64 %i.cv, 61
  %i.cx = trunc i64 %i.cw to i32
  store i32 %i.cx, ptr %i.cd, align 8, !tbaa !144
  call void @duckdb_je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.cc, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %arena_decay_ticks.exit

bb.q:                                             ; preds = %sz_s2u.exit
  %i.cy = icmp ugt i64 %2, 16383
  %i.cz = icmp ugt i64 %.0.i34, 16383
  %or.cond = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond, label %bb.r, label %arena_decay_ticks.exit

bb.r:                                             ; preds = %bb.q
  %i.da = call zeroext i1 @duckdb_je_large_ralloc_no_move(ptr noundef %0, ptr noundef %i.d, i64 noundef %.0.i35, i64 noundef %.0.i34, i1 noundef zeroext %5) #17
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.n, %sz_s2u.exit.thread, %bb.p, %bb.m, %ticker_geom_ticks.exit, %bb.q, %bb.l, %tsdn_rtree_ctx.exit, %bb.r
  %.0 = phi i1 [ true, %bb.l ], [ true, %tsdn_rtree_ctx.exit ], [ true, %bb.q ], [ %i.da, %bb.r ], [ false, %ticker_geom_ticks.exit ], [ true, %sz_s2u.exit.thread ], [ false, %bb.m ], [ false, %bb.p ], [ false, %bb.n ]
  %.val = load i64, ptr %i.d, align 8, !tbaa !123
  %i.db = lshr i64 %.val, 20
  %i.dc = and i64 %i.db, 255
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  store i64 %i.de, ptr %6, align 8, !tbaa !31
  ret i1 %.0
}

declare zeroext i1 @duckdb_je_large_ralloc_no_move(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @duckdb_je_arena_ralloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 !guid !232 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %10 = alloca %struct.rtree_ctx_s, align 8       ; 4 uses
  %11 = alloca %struct.rtree_contents_s, align 8  ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = icmp eq i64 %5, 0                        ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %4, 4097
  br i1 %i.d, label %bb.c, label %bb.d, !prof !118

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw nsw i64 %4, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !119
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31
  br label %sz_s2u.exit

bb.d:                                             ; preds = %bb.b
  %i.l = icmp ugt i64 %4, 8070450532247928832
  br i1 %i.l, label %arena_sdalloc.exit, label %bb.e, !prof !120

bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw i64 %4, 1
  %i.n = add i64 %i.m, -1
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.n, i1 true) ; 2 uses
  %notmask.i66 = ashr exact i64 -1152921504606846976, %i.o
  %i.p = lshr i64 1152921504606846975, %i.o
  %i.q = add nuw nsw i64 %4, %i.p
  %i.r = and i64 %i.q, %notmask.i66
  br label %sz_s2u.exit

bb.f:                                             ; preds = %bb.a
  %i.s = icmp ult i64 %4, 14337
  %i.t = icmp ult i64 %5, 4097
  %or.cond.i = and i1 %i.s, %i.t
  br i1 %or.cond.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i64 %5, -1
  %i.v = add nuw nsw i64 %i.u, %4
  %i.w = sub nsw i64 0, %5
  %i.x = and i64 %i.v, %i.w                       ; 4 uses
  %i.y = icmp samesign ult i64 %i.x, 4097
  br i1 %i.y, label %bb.h, label %sz_s2u_compute.exit, !prof !118

bb.h:                                             ; preds = %bb.g
  %i.z = add nuw nsw i64 %i.x, 7
  %i.aa = lshr i64 %i.z, 3
  %i.ab = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !119
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !31
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit:                              ; preds = %bb.g
  %i.ag = shl nuw nsw i64 %i.x, 1
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ah, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ai
  %i.aj = lshr i64 1152921504606846975, %i.ai
  %i.ak = add nuw nsw i64 %i.x, %i.aj
  %i.al = and i64 %i.ak, %notmask.i
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit, %bb.h
  %.0.i24.i = phi i64 [ %i.af, %bb.h ], [ %i.al, %sz_s2u_compute.exit ] ; 2 uses
  %i.am = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.am, label %sz_s2u.exit, label %.thread87

bb.i:                                             ; preds = %bb.f
  %i.an = icmp ugt i64 %5, 8070450532247928832
  br i1 %i.an, label %arena_sdalloc.exit, label %bb.j, !prof !233

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp ult i64 %4, 16385
  br i1 %i.ao, label %.thread87, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = icmp ugt i64 %4, 8070450532247928832
  br i1 %i.ap, label %sz_s2u_compute.exit65, label %bb.l, !prof !120

bb.l:                                             ; preds = %bb.k
  %i.aq = shl nuw i64 %4, 1
  %i.ar = add i64 %i.aq, -1
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ar, i1 true) ; 2 uses
  %notmask.i63 = ashr exact i64 -1152921504606846976, %i.as
  %i.at = lshr i64 1152921504606846975, %i.as
  %i.au = add nuw nsw i64 %4, %i.at
  %i.av = and i64 %i.au, %notmask.i63
  br label %sz_s2u_compute.exit65

sz_s2u_compute.exit65:                            ; preds = %bb.k, %bb.l
  %.0.i64 = phi i64 [ %i.av, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.aw = icmp ult i64 %.0.i64, %4
  br i1 %i.aw, label %arena_sdalloc.exit, label %.thread87

.thread87:                                        ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit65, %bb.j
  %.0.i61 = phi i64 [ %.0.i64, %sz_s2u_compute.exit65 ], [ 16384, %bb.j ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.ax = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !31
  %i.ay = add nuw nsw i64 %5, 4095
  %i.az = and i64 %i.ay, 9223372036854771712
  %i.ba = add nsw i64 %i.az, -4096
  %i.bb = add nuw i64 %i.ba, %.0.i61
  %i.bc = add i64 %i.bb, %i.ax
  %i.bd = icmp ult i64 %i.bc, %.0.i61
  %..0.i = select i1 %i.bd, i64 0, i64 %.0.i61
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %.thread87, %sz_s2u.exit25.i, %bb.c, %bb.e
  %i.be = phi i64 [ %.0.i24.i, %sz_s2u.exit25.i ], [ %i.k, %bb.c ], [ %i.r, %bb.e ], [ %..0.i, %.thread87 ] ; 24 uses
  %i.bf = icmp eq i64 %i.be, 0
  %i.bg = icmp samesign ugt i64 %4, 8070450532247928832
  %i.bh = or i1 %i.bg, %i.bf
  br i1 %i.bh, label %arena_sdalloc.exit, label %bb.m, !prof !234

bb.m:                                             ; preds = %sz_s2u.exit
  br i1 %7, label %bb.n, label %bb.p, !prof !118

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.bi = call zeroext i1 @duckdb_je_arena_ralloc_no_move(ptr noundef %0, ptr noundef %2, i64 noundef %3, i64 noundef %i.be, i64 noundef 0, i1 noundef zeroext %6, ptr noundef nonnull %i.b)
  br i1 %i.bi, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load i8, ptr %9, align 8, !tbaa !236, !range !112, !noundef !113
  %i.bk = xor i8 %i.bj, 1
  %not. = zext nneg i8 %i.bk to i32
  %i.bl = ptrtoint ptr %2 to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8
  tail call void @duckdb_je_hook_invoke_expand(i32 noundef %not., ptr noundef %2, i64 noundef %3, i64 noundef %i.be, i64 noundef %i.bl, ptr noundef nonnull %i.bm) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %arena_sdalloc.exit

.critedge:                                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.p

bb.p:                                             ; preds = %.critedge, %bb.m
  %i.bn = icmp ugt i64 %3, 16383
  %i.bo = icmp ugt i64 %i.be, 16383
  %or.cond = and i1 %i.bn, %i.bo
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = tail call ptr @duckdb_je_large_ralloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.be, i64 noundef %5, i1 noundef zeroext %6, ptr noundef %8, ptr noundef %9) #17
  br label %arena_sdalloc.exit

bb.r:                                             ; preds = %bb.p
  br i1 %i.c, label %bb.s, label %bb.at

bb.s:                                             ; preds = %bb.r
  %i.bq = icmp ult i64 %i.be, 4097                ; 2 uses
  br i1 %i.bq, label %bb.t, label %bb.u, !prof !118

bb.t:                                             ; preds = %bb.s
  %i.br = add nuw nsw i64 %i.be, 7
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !119
  %i.bv = zext i8 %i.bu to i32
  br label %sz_size2index.exit.i84

bb.u:                                             ; preds = %bb.s
  %i.bw = icmp ugt i64 %i.be, 8070450532247928832
  br i1 %i.bw, label %sz_size2index.exit.i84, label %bb.v, !prof !120

bb.v:                                             ; preds = %bb.u
  %i.bx = shl nuw i64 %i.be, 1
  %i.by = add i64 %i.bx, -1
  %i.bz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.by, i1 true) ; 2 uses
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = sub nuw nsw i64 60, %i.bz
  %i.cc = add nsw i64 %i.be, -1
  %i.cd = lshr i64 %i.cc, %i.cb
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = and i32 %i.ce, 3
  %i.cg = shl nuw nsw i32 %i.ca, 2
  %reass.sub = sub nsw i32 %i.cf, %i.cg
  %i.ch = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i84

sz_size2index.exit.i84:                           ; preds = %bb.v, %bb.u, %bb.t
  %.0.i.i = phi i32 [ %i.bv, %bb.t ], [ %i.ch, %bb.v ], [ 232, %bb.u ] ; 8 uses
  %.not.i.i = icmp eq ptr %8, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.w, !prof !120

bb.w:                                             ; preds = %sz_size2index.exit.i84
  br i1 %7, label %bb.x, label %bb.ag, !prof !118

bb.x:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cj = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.cj ; 9 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !100 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !104 ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 8, !tbaa !150 ; 2 uses
  %i.cr = trunc i64 %i.cn to i16
  %.not.i25.i = icmp eq i16 %i.cq, %i.cr
  br i1 %.not.i25.i, label %bb.z, label %bb.y, !prof !120

bb.y:                                             ; preds = %bb.x
  store ptr %i.co, ptr %i.ck, align 8, !tbaa !100
  br label %cache_bin_alloc_impl.exit.thread.i

bb.z:                                             ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 20
  %i.ct = load i16, ptr %i.cs, align 4, !tbaa !101
  %.not21.i.i = icmp eq i16 %i.ct, %i.cq
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.aa, !prof !120

bb.aa:                                            ; preds = %bb.z
  store ptr %i.co, ptr %i.ck, align 8, !tbaa !100
  %i.cu = ptrtoint ptr %i.co to i64
  %i.cv = trunc i64 %i.cu to i16
  store i16 %i.cv, ptr %i.cp, align 8, !tbaa !150
  br label %cache_bin_alloc_impl.exit.thread.i

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.cw = tail call fastcc ptr @arena_choose(ptr noundef %0, ptr noundef %1) ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %.thread.i, label %bb.ab, !prof !120

bb.ab:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %.val.i = load ptr, ptr %i.ck, align 8, !tbaa !100
  %i.cy = icmp eq ptr %.val.i, @duckdb_je_disabled_bin
  br i1 %i.cy, label %bb.ac, label %bb.ad, !prof !120

bb.ac:                                            ; preds = %bb.ab
  %i.cz = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef %0, ptr noundef nonnull %i.cw, i64 noundef range(i64 1, 0) %i.be, i32 noundef %.0.i.i, i1 noundef zeroext %6, i1 noundef zeroext true)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ac, %cache_bin_alloc_impl.exit.i
  %.0.i23.ph.i = phi ptr [ %i.cz, %bb.ac ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %arena_ralloc_move_helper.exit

bb.ad:                                            ; preds = %bb.ab
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %i.ck, i32 noundef %.0.i.i, i1 noundef zeroext true) #17
  %i.da = call ptr @duckdb_je_tcache_alloc_small_hard(ptr noundef %0, ptr noundef nonnull %i.cw, ptr noundef nonnull %8, ptr noundef nonnull %i.ck, i32 noundef %.0.i.i, ptr noundef nonnull %i.a) #17
  %i.db = load i8, ptr %i.a, align 1, !tbaa !117, !range !112, !noundef !113
  %.not61.i = icmp eq i8 %i.db, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br i1 %.not61.i, label %arena_sdalloc.exit, label %cache_bin_alloc_impl.exit.thread.i

cache_bin_alloc_impl.exit.thread.i:               ; preds = %bb.ad, %bb.aa, %bb.y
  %.132.i.i = phi ptr [ %i.da, %bb.ad ], [ %i.cm, %bb.y ], [ %i.cm, %bb.aa ] ; 2 uses
  br i1 %6, label %bb.ae, label %bb.af, !prof !120

bb.ae:                                            ; preds = %cache_bin_alloc_impl.exit.thread.i
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.cj
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr align 1 %.132.i.i, i8 0, i64 %i.dd, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %cache_bin_alloc_impl.exit.thread.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !142
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !142
  br label %arena_ralloc_move_helper.exit

bb.ag:                                            ; preds = %bb.w
  %i.dh = load ptr, ptr %8, align 8, !tbaa !238
  %i.di = getelementptr i8, ptr %i.dh, i64 48
  %.val44.i = load i32, ptr %i.di, align 8, !tbaa !239
  %i.dj = icmp ult i32 %.0.i.i, %.val44.i
  br i1 %i.dj, label %bb.ah, label %.critedge.i.i, !prof !118

bb.ah:                                            ; preds = %bb.ag
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dl = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.dl ; 7 uses
  %.val39.i = load ptr, ptr %i.dm, align 8, !tbaa !100 ; 4 uses
  %.not.i = icmp eq ptr %.val39.i, @duckdb_je_disabled_bin
  br i1 %.not.i, label %.critedge.i.i, label %bb.ai, !prof !120

bb.ai:                                            ; preds = %bb.ah
  %i.dn = load ptr, ptr %.val39.i, align 8, !tbaa !104 ; 2 uses
  %i.do = ptrtoint ptr %.val39.i to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %.val39.i, i64 8 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.dr = load i16, ptr %i.dq, align 8, !tbaa !150 ; 2 uses
  %i.ds = trunc i64 %i.do to i16
  %.not.i27.i = icmp eq i16 %i.dr, %i.ds
  br i1 %.not.i27.i, label %bb.ak, label %bb.aj, !prof !120

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.dp, ptr %i.dm, align 8, !tbaa !100
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ai
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 20
  %i.du = load i16, ptr %i.dt, align 4, !tbaa !101
  %.not21.i29.i = icmp eq i16 %i.du, %i.dr
  br i1 %.not21.i29.i, label %cache_bin_alloc_impl.exit30.i, label %bb.al, !prof !120

bb.al:                                            ; preds = %bb.ak
  store ptr %i.dp, ptr %i.dm, align 8, !tbaa !100
  %i.dv = ptrtoint ptr %i.dp to i64
  %i.dw = trunc i64 %i.dv to i16
  store i16 %i.dw, ptr %i.dq, align 8, !tbaa !150
  br label %bb.aq

cache_bin_alloc_impl.exit30.i:                    ; preds = %bb.ak
  %i.dx = tail call fastcc ptr @arena_choose(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %arena_sdalloc.exit, label %bb.am, !prof !120

bb.am:                                            ; preds = %cache_bin_alloc_impl.exit30.i
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %i.dm, i32 noundef %.0.i.i, i1 noundef zeroext false) #17
  br i1 %i.bq, label %bb.an, label %bb.ao, !prof !118

bb.an:                                            ; preds = %bb.am
  %i.dz = add nuw nsw i64 %i.be, 7
  %i.ea = lshr i64 %i.dz, 3
  %i.eb = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !119
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !31
  br label %sz_s2u.exit.i.i

bb.ao:                                            ; preds = %bb.am
  %i.eg = icmp ugt i64 %i.be, 8070450532247928832
  br i1 %i.eg, label %sz_s2u.exit.i.i, label %bb.ap, !prof !120

bb.ap:                                            ; preds = %bb.ao
  %i.eh = shl nuw i64 %i.be, 1
  %i.ei = add i64 %i.eh, -1
  %i.ej = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.ei, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.ej
  %i.ek = lshr i64 1152921504606846975, %i.ej
  %i.el = add nuw nsw i64 %i.ek, %i.be
  %i.em = and i64 %i.el, %notmask.i.i
  br label %sz_s2u.exit.i.i

sz_s2u.exit.i.i:                                  ; preds = %bb.ap, %bb.ao, %bb.an
  %.0.i.i.i = phi i64 [ %i.ef, %bb.an ], [ %i.em, %bb.ap ], [ 0, %bb.ao ]
  %i.en = tail call ptr @duckdb_je_large_malloc(ptr noundef %0, ptr noundef nonnull %i.dx, i64 noundef %.0.i.i.i, i1 noundef zeroext %6) #17
  br label %arena_ralloc_move_helper.exit

bb.aq:                                            ; preds = %bb.al, %bb.aj
  br i1 %6, label %bb.ar, label %bb.as, !prof !120

bb.ar:                                            ; preds = %bb.aq
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.dl
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dn, i8 0, i64 %i.ep, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !142
  %i.es = add i64 %i.er, 1
  store i64 %i.es, ptr %i.eq, align 8, !tbaa !142
  br label %arena_ralloc_move_helper.exit

.critedge.i.i:                                    ; preds = %bb.ah, %bb.ag, %sz_size2index.exit.i84
  %i.et = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %i.be, i32 noundef %.0.i.i, i1 noundef zeroext %6, i1 noundef zeroext %7)
  br label %arena_ralloc_move_helper.exit

bb.at:                                            ; preds = %bb.r
  %i.eu = icmp ult i64 %i.be, 14337
  %i.ev = icmp samesign ult i64 %5, 4097
  %or.cond.i.i = and i1 %i.ev, %i.eu
  br i1 %or.cond.i.i, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ew = add nsw i64 %5, -1
  %i.ex = add nuw nsw i64 %i.ew, %i.be
  %i.ey = sub nsw i64 0, %5
  %i.ez = and i64 %i.ex, %i.ey                    ; 4 uses
  %i.fa = icmp samesign ult i64 %i.ez, 4097
  br i1 %i.fa, label %bb.av, label %sz_s2u_compute.exit34.i, !prof !118

bb.av:                                            ; preds = %bb.au
  %i.fb = add nuw nsw i64 %i.ez, 7
  %i.fc = lshr i64 %i.fb, 3
  %i.fd = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !119
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !31
  br label %sz_s2u.exit25.i.i

sz_s2u_compute.exit34.i:                          ; preds = %bb.au
  %i.fi = shl nuw nsw i64 %i.ez, 1
  %i.fj = add nsw i64 %i.fi, -1
  %i.fk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.fj, i1 true) ; 2 uses
  %notmask.i32.i = ashr exact i64 -1152921504606846976, %i.fk
  %i.fl = lshr i64 1152921504606846975, %i.fk
  %i.fm = add nuw nsw i64 %i.fl, %i.ez
  %i.fn = and i64 %i.fm, %notmask.i32.i
  br label %sz_s2u.exit25.i.i

sz_s2u.exit25.i.i:                                ; preds = %sz_s2u_compute.exit34.i, %bb.av
  %.0.i24.i.i = phi i64 [ %i.fh, %bb.av ], [ %i.fn, %sz_s2u_compute.exit34.i ] ; 2 uses
  %i.fo = icmp ult i64 %.0.i24.i.i, 16384
  br i1 %i.fo, label %sz_sa2u.exit.i, label %.thread58.i

bb.aw:                                            ; preds = %bb.at
  %i.fp = icmp ult i64 %i.be, 16385
  br i1 %i.fp, label %.thread58.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fq = icmp ugt i64 %i.be, 8070450532247928832
  br i1 %i.fq, label %arena_sdalloc.exit, label %sz_s2u_compute.exit37.i, !prof !120

sz_s2u_compute.exit37.i:                          ; preds = %bb.ax
  %i.fr = shl nuw i64 %i.be, 1
  %i.fs = add i64 %i.fr, -1
  %i.ft = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.fs, i1 true) ; 2 uses
  %notmask.i35.i = ashr exact i64 -1152921504606846976, %i.ft
  %i.fu = lshr i64 1152921504606846975, %i.ft
  %i.fv = add nuw nsw i64 %i.fu, %i.be
  %i.fw = and i64 %i.fv, %notmask.i35.i           ; 2 uses
  %i.fx = icmp samesign ult i64 %i.fw, %i.be
  br i1 %i.fx, label %arena_sdalloc.exit, label %.thread58.i

.thread58.i:                                      ; preds = %sz_s2u_compute.exit37.i, %bb.aw, %sz_s2u.exit25.i.i
  %.0.i22.i82 = phi i64 [ %i.fw, %sz_s2u_compute.exit37.i ], [ 16384, %bb.aw ], [ 16384, %sz_s2u.exit25.i.i ] ; 3 uses
  %i.fy = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !31
  %i.fz = add nuw nsw i64 %5, 4095
  %i.ga = and i64 %i.fz, 9223372036854771712
  %i.gb = add nsw i64 %i.ga, -4096
  %i.gc = add nuw i64 %i.gb, %.0.i22.i82
  %i.gd = add i64 %i.gc, %i.fy
  %i.ge = icmp ult i64 %i.gd, %.0.i22.i82
  %..0.i.i = select i1 %i.ge, i64 0, i64 %.0.i22.i82
  br label %sz_sa2u.exit.i

sz_sa2u.exit.i:                                   ; preds = %.thread58.i, %sz_s2u.exit25.i.i
  %.018.i.i = phi i64 [ %..0.i.i, %.thread58.i ], [ %.0.i24.i.i, %sz_s2u.exit25.i.i ] ; 2 uses
  %i.gf = add nsw i64 %.018.i.i, -8070450532247928833
  %i.gg = icmp ult i64 %i.gf, -8070450532247928832
  br i1 %i.gg, label %arena_sdalloc.exit, label %ipallocztm_explicit_slab.exit.i, !prof !234

ipallocztm_explicit_slab.exit.i:                  ; preds = %sz_sa2u.exit.i
  %i.gh = tail call ptr @duckdb_je_arena_palloc(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 8070450532247928833) %.018.i.i, i64 noundef range(i64 1, 0) %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef %8)
  br label %arena_ralloc_move_helper.exit

arena_ralloc_move_helper.exit:                    ; preds = %.thread.i, %bb.af, %sz_s2u.exit.i.i, %bb.as, %.critedge.i.i, %ipallocztm_explicit_slab.exit.i
  %.0.i83 = phi ptr [ %i.en, %sz_s2u.exit.i.i ], [ %i.gh, %ipallocztm_explicit_slab.exit.i ], [ %i.et, %.critedge.i.i ], [ %.0.i23.ph.i, %.thread.i ], [ %.132.i.i, %bb.af ], [ %i.dn, %bb.as ] ; 13 uses
  %i.gi = icmp eq ptr %.0.i83, null
  br i1 %i.gi, label %arena_sdalloc.exit, label %isdalloct.exit

isdalloct.exit:                                   ; preds = %arena_ralloc_move_helper.exit
  %i.gj = load i8, ptr %9, align 8, !tbaa !236, !range !112, !noundef !113
  %i.gk = trunc nuw i8 %i.gj to i1
  %i.gl = select i1 %i.gk, i32 8, i32 9
  %i.gm = ptrtoint ptr %.0.i83 to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  call void @duckdb_je_hook_invoke_alloc(i32 noundef %i.gl, ptr noundef nonnull %.0.i83, i64 noundef %i.gm, ptr noundef nonnull %i.gn) #17
  %i.go = load i8, ptr %9, align 8, !tbaa !236, !range !112, !noundef !113
  %i.gp = trunc nuw i8 %i.go to i1
  %i.gq = select i1 %i.gp, i32 3, i32 4
  call void @duckdb_je_hook_invoke_dalloc(i32 noundef %i.gq, ptr noundef %2, ptr noundef nonnull %i.gn) #17
  %i.gr = call i64 @llvm.umin.i64(i64 %i.be, i64 %3)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i83, ptr align 1 %2, i64 %i.gr, i1 false)
  %i.gs = icmp eq ptr %0, null
  %i.gt = icmp eq ptr %8, null
  br i1 %i.gt, label %bb.ay, label %bb.az, !prof !120

bb.ay:                                            ; preds = %isdalloct.exit
  call fastcc void @arena_sdalloc_no_tcache(ptr noundef %0, ptr noundef %2, i64 noundef %3)
  br label %arena_sdalloc.exit

bb.az:                                            ; preds = %isdalloct.exit
  %i.gu = icmp ult i64 %3, 4097
  br i1 %i.gu, label %bb.ba, label %bb.bb, !prof !118

bb.ba:                                            ; preds = %bb.az
  %i.gv = add nuw nsw i64 %3, 7
  %i.gw = lshr i64 %i.gv, 3
  %i.gx = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !119
  %i.gz = zext i8 %i.gy to i32
  br label %sz_size2index.exit.i

bb.bb:                                            ; preds = %bb.az
  %i.ha = icmp ugt i64 %3, 8070450532247928832
  br i1 %i.ha, label %sz_size2index.exit.i.thread, label %bb.bc, !prof !120

bb.bc:                                            ; preds = %bb.bb
  %i.hb = shl nuw i64 %3, 1
  %i.hc = add i64 %i.hb, -1
  %i.hd = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.hc, i1 true) ; 2 uses
  %i.he = trunc nuw nsw i64 %i.hd to i32
  %i.hf = sub nuw nsw i64 60, %i.hd
  %i.hg = add nsw i64 %3, -1
  %i.hh = lshr i64 %i.hg, %i.hf
  %i.hi = trunc i64 %i.hh to i32
  %i.hj = and i32 %i.hi, 3
  %i.hk = shl nuw nsw i32 %i.he, 2
  %reass.sub95 = sub nsw i32 %i.hj, %i.hk
  %i.hl = add nsw i32 %reass.sub95, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.bc, %bb.ba
  %.0.i.i69 = phi i32 [ %i.gz, %bb.ba ], [ %i.hl, %bb.bc ] ; 4 uses
  %i.hm = icmp samesign ult i32 %.0.i.i69, 36
  br i1 %i.hm, label %bb.bd, label %sz_size2index.exit.i.thread, !prof !154

bb.bd:                                            ; preds = %sz_size2index.exit.i
  %i.hn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ho = zext nneg i32 %.0.i.i69 to i64
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %i.ho ; 7 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !100 ; 3 uses
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 18 ; 2 uses
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !103
  %i.hu = trunc i64 %i.hr to i16
  %i.hv = icmp eq i16 %i.ht, %i.hu
  br i1 %i.hv, label %cache_bin_dalloc_easy.exit23.i, label %cache_bin_dalloc_easy.exit23.i.thread, !prof !120

cache_bin_dalloc_easy.exit23.i.thread:            ; preds = %bb.bd
  %i.hw = getelementptr inbounds i8, ptr %i.hq, i64 -8 ; 2 uses
  store ptr %i.hw, ptr %i.hp, align 8, !tbaa !100
  store ptr %2, ptr %i.hw, align 8, !tbaa !104
  br label %arena_sdalloc.exit

cache_bin_dalloc_easy.exit23.i:                   ; preds = %bb.bd
  %i.hx = icmp eq ptr %i.hq, @duckdb_je_disabled_bin
  br i1 %i.hx, label %bb.be, label %bb.bf, !prof !120

bb.be:                                            ; preds = %cache_bin_dalloc_easy.exit23.i
  call void @duckdb_je_arena_dalloc_small(ptr noundef %0, ptr noundef %2)
  br label %arena_sdalloc.exit

bb.bf:                                            ; preds = %cache_bin_dalloc_easy.exit23.i
  %i.hy = getelementptr i8, ptr %i.hp, i64 22
  %.val78 = load i16, ptr %i.hy, align 2, !tbaa !102
  %i.hz = zext i16 %.val78 to i32
  %i.ia = load i32, ptr @duckdb_je_opt_lg_tcache_flush_small_div, align 4, !tbaa !6
  %i.ib = lshr i32 %i.hz, %i.ia
  call void @duckdb_je_tcache_bin_flush_small(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %i.hp, i32 noundef %.0.i.i69, i32 noundef %i.ib) #17
  %i.ic = load ptr, ptr %i.hp, align 8, !tbaa !100 ; 2 uses
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = load i16, ptr %i.hs, align 2, !tbaa !103
  %i.if = trunc i64 %i.id to i16
  %i.ig = icmp eq i16 %i.ie, %i.if
  br i1 %i.ig, label %arena_sdalloc.exit, label %bb.bg, !prof !120

bb.bg:                                            ; preds = %bb.bf
  %i.ih = getelementptr inbounds i8, ptr %i.ic, i64 -8 ; 2 uses
  store ptr %i.ih, ptr %i.hp, align 8, !tbaa !100
  store ptr %2, ptr %i.ih, align 8, !tbaa !104
  br label %arena_sdalloc.exit

sz_size2index.exit.i.thread:                      ; preds = %bb.bb, %sz_size2index.exit.i
  %.0.i.i6990 = phi i32 [ %.0.i.i69, %sz_size2index.exit.i ], [ 232, %bb.bb ] ; 3 uses
  %i.ii = load ptr, ptr %8, align 8, !tbaa !238
  %i.ij = getelementptr i8, ptr %i.ii, i64 48
  %.val80 = load i32, ptr %i.ij, align 8, !tbaa !239
  %i.ik = icmp ult i32 %.0.i.i6990, %.val80
  br i1 %i.ik, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %sz_size2index.exit.i.thread
  %i.il = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.im = zext nneg i32 %.0.i.i6990 to i64
  %i.in = getelementptr inbounds nuw [24 x i8], ptr %i.il, i64 %i.im ; 7 uses
  %.val = load ptr, ptr %i.in, align 8, !tbaa !100 ; 3 uses
  %i.io = icmp eq ptr %.val, @duckdb_je_disabled_bin
  %i.ip = getelementptr i8, ptr %i.in, i64 22
  br i1 %i.io, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iq = ptrtoint ptr %.val to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 18 ; 2 uses
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !103
  %i.it = trunc i64 %i.iq to i16
  %i.iu = icmp eq i16 %i.is, %i.it
  br i1 %i.iu, label %cache_bin_dalloc_easy.exit26.i, label %cache_bin_dalloc_easy.exit26.i.thread, !prof !120

cache_bin_dalloc_easy.exit26.i.thread:            ; preds = %bb.bi
  %i.iv = getelementptr inbounds i8, ptr %.val, i64 -8 ; 2 uses
  store ptr %i.iv, ptr %i.in, align 8, !tbaa !100
  store ptr %2, ptr %i.iv, align 8, !tbaa !104
  br label %arena_sdalloc.exit

cache_bin_dalloc_easy.exit26.i:                   ; preds = %bb.bi
  %.val77 = load i16, ptr %i.ip, align 2, !tbaa !102
  %i.iw = zext i16 %.val77 to i32
  %i.ix = load i32, ptr @duckdb_je_opt_lg_tcache_flush_large_div, align 4, !tbaa !6
  %i.iy = lshr i32 %i.iw, %i.ix
  call void @duckdb_je_tcache_bin_flush_large(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %i.in, i32 noundef %.0.i.i6990, i32 noundef %i.iy) #17
  %i.iz = load ptr, ptr %i.in, align 8, !tbaa !100 ; 2 uses
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = load i16, ptr %i.ir, align 2, !tbaa !103
  %i.jc = trunc i64 %i.ja to i16
  %i.jd = icmp eq i16 %i.jb, %i.jc
  br i1 %i.jd, label %arena_sdalloc.exit, label %bb.bj, !prof !120

bb.bj:                                            ; preds = %cache_bin_dalloc_easy.exit26.i
  %i.je = getelementptr inbounds i8, ptr %i.iz, i64 -8 ; 2 uses
  store ptr %i.je, ptr %i.in, align 8, !tbaa !100
  store ptr %2, ptr %i.je, align 8, !tbaa !104
  br label %arena_sdalloc.exit

bb.bk:                                            ; preds = %bb.bh, %sz_size2index.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  br i1 %i.gs, label %bb.bl, label %bb.bm, !prof !120

bb.bl:                                            ; preds = %bb.bk
  call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %10) #17
  br label %tsdn_rtree_ctx.exit.i

bb.bm:                                            ; preds = %bb.bk
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %tsdn_rtree_ctx.exit.i

tsdn_rtree_ctx.exit.i:                            ; preds = %bb.bm, %bb.bl
  %.0.i.i71 = phi ptr [ %10, %bb.bl ], [ %i.jf, %bb.bm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.jg = ptrtoint ptr %2 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef %0, ptr noundef nonnull %.0.i.i71, i64 noundef %i.jg)
  %i.jh = load ptr, ptr %11, align 8, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @duckdb_je_large_dalloc(ptr noundef %0, ptr noundef %i.jh) #17
  br label %arena_sdalloc.exit

arena_sdalloc.exit:                               ; preds = %sz_s2u_compute.exit37.i, %bb.ax, %cache_bin_alloc_impl.exit30.i, %bb.ad, %sz_sa2u.exit.i, %sz_s2u_compute.exit65, %bb.i, %bb.d, %bb.ay, %bb.bf, %bb.bg, %cache_bin_dalloc_easy.exit23.i.thread, %bb.be, %cache_bin_dalloc_easy.exit26.i.thread, %bb.bj, %cache_bin_dalloc_easy.exit26.i, %tsdn_rtree_ctx.exit.i, %bb.o, %arena_ralloc_move_helper.exit, %sz_s2u.exit, %bb.q
  %.2 = phi ptr [ %2, %bb.o ], [ %i.bp, %bb.q ], [ null, %sz_s2u.exit ], [ null, %sz_s2u_compute.exit65 ], [ null, %arena_ralloc_move_helper.exit ], [ %.0.i83, %bb.ay ], [ %.0.i83, %tsdn_rtree_ctx.exit.i ], [ %.0.i83, %cache_bin_dalloc_easy.exit26.i ], [ %.0.i83, %bb.bj ], [ %.0.i83, %cache_bin_dalloc_easy.exit26.i.thread ], [ %.0.i83, %bb.be ], [ %.0.i83, %cache_bin_dalloc_easy.exit23.i.thread ], [ %.0.i83, %bb.bg ], [ %.0.i83, %bb.bf ], [ null, %bb.d ], [ null, %bb.i ], [ null, %sz_sa2u.exit.i ], [ null, %bb.ad ], [ null, %cache_bin_alloc_impl.exit30.i ], [ null, %bb.ax ], [ null, %sz_s2u_compute.exit37.i ]
  ret ptr %.2
}

declare void @duckdb_je_hook_invoke_expand(i32 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @duckdb_je_large_ralloc(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_hook_invoke_alloc(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_hook_invoke_dalloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare ptr @duckdb_je_base_ehooks_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @duckdb_je_arena_set_extent_hooks(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !240 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 78952
  %.val = load i32, ptr %i.a, align 8, !tbaa !114
  %i.b = load ptr, ptr @duckdb_je_background_thread_info, align 8, !tbaa !116
  %i.c = zext i32 %.val to i64
  %i.d = load i64, ptr @duckdb_je_max_background_threads, align 8, !tbaa !31
  %i.e = urem i64 %i.c, %i.d
  %i.f = getelementptr inbounds nuw [208 x i8], ptr %i.b, i64 %i.e ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.h = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.g) #17
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.i) #17
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store atomic i8 1, ptr %i.j monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !86
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !87
  %.not.i.i = icmp eq ptr %i.o, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.n, align 8, !tbaa !87
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !88
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !88
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10664
  tail call void @duckdb_je_pa_shard_disable_hpa(ptr noundef %0, ptr noundef nonnull %i.s) #17
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 78960
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !84
  %i.v = tail call ptr @duckdb_je_base_extent_hooks_set(ptr noundef %i.u, ptr noundef %2) #17
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store atomic i8 0, ptr %i.w monotonic, align 8
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #17 ; 0 uses
  ret ptr %i.v
}
end_hunk_2
begin_hunk_3_@arena_choose:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !136  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %arena_choose_impl.exit, !prof !120

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @duckdb_je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) #17 ; 7 uses
  %i.k = load i8, ptr %0, align 8, !tbaa !117, !range !112, !noundef !113
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %arena_choose_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !149  ; 2 uses
  %.not30.i = icmp eq ptr %i.p, null
  br i1 %.not30.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not31.i = icmp eq ptr %i.p, %i.j
  br i1 %.not31.i, label %arena_choose_impl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @duckdb_je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #17
  br label %arena_choose_impl.exit

bb.j:                                             ; preds = %bb.g
  tail call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #17
  br label %arena_choose_impl.exit

arena_choose_impl.exit:                           ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j
  %.025.i = phi ptr [ %1, %bb.a ], [ %i.j, %bb.j ], [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.025.i
}

declare ptr @duckdb_je_arena_choose_hard(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @duckdb_je_tcache_arena_reassociate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_tcache_arena_associate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @arena_bin_malloc_no_fresh_slab(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !guid !299 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131  ; 10 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %arena_bin_slabs_full_insert.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.b, align 8, !tbaa !123
  %i.d = and i64 %.val, 274609471488
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 78952
  %.val.i = load i32, ptr %i.f, align 8, !tbaa !114
  %i.g = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !6
  %i.h = icmp ult i32 %.val.i, %i.g
  br i1 %i.h, label %arena_bin_slabs_full_insert.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.b, ptr %i.j, align 8, !tbaa !119
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  store ptr %i.b, ptr %i.k, align 8, !tbaa !119
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !126  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %edata_list_active_append.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !119
  store ptr %i.o, ptr %i.j, align 8, !tbaa !119
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !126
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.b, ptr %i.q, align 8, !tbaa !119
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !119
  store ptr %i.t, ptr %i.k, align 8, !tbaa !119
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !126  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !119
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr %i.u, ptr %i.x, align 8, !tbaa !119
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !119
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %i.b, ptr %i.z, align 8, !tbaa !119
  %.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !119
  br label %edata_list_active_append.exit.i.i

edata_list_active_append.exit.i.i:                ; preds = %bb.e, %bb.d
  %i.aa = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.b, %bb.d ]
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !126
  br label %arena_bin_slabs_full_insert.exit.i

arena_bin_slabs_full_insert.exit.i:               ; preds = %bb.a, %edata_list_active_append.exit.i.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ac = tail call ptr @duckdb_je_edata_heap_remove_first(ptr noundef nonnull %i.ab) #17 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %arena_bin_refill_slabcur_no_fresh_slab.exit.thread, label %arena_bin_refill_slabcur_no_fresh_slab.exit

arena_bin_refill_slabcur_no_fresh_slab.exit.thread: ; preds = %arena_bin_slabs_full_insert.exit.i
  store ptr null, ptr %i.a, align 8, !tbaa !131
  br label %bb.g

arena_bin_refill_slabcur_no_fresh_slab.exit:      ; preds = %arena_bin_slabs_full_insert.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !140
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !140
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !138
  %i.aj = add i64 %i.ai, -1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !138
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !131
  br label %bb.f

bb.f:                                             ; preds = %arena_bin_refill_slabcur_no_fresh_slab.exit, %bb.b
  %i.ak = phi ptr [ %i.ac, %arena_bin_refill_slabcur_no_fresh_slab.exit ], [ %i.b, %bb.b ] ; 4 uses
  %i.al = zext i32 %2 to i64
  %i.am = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 3 uses
  %.0101.i.i = load i64, ptr %i.an, align 8, !tbaa !31 ; 2 uses
  %i.ao = icmp eq i64 %.0101.i.i, 0
  br i1 %i.ao, label %.lr.ph.i.i, label %arena_slab_reg_alloc.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.02.i.i = phi i32 [ %i.ap, %.lr.ph.i.i ], [ 0, %bb.f ]
  %i.ap = add i32 %.02.i.i, 1                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aq
  %.010.i.i = load i64, ptr %i.ar, align 8, !tbaa !31 ; 2 uses
  %i.as = icmp eq i64 %.010.i.i, 0
  br i1 %i.as, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.at = shl i32 %i.ap, 6
  %i.au = zext i32 %i.at to i64
  br label %arena_slab_reg_alloc.exit

arena_slab_reg_alloc.exit:                        ; preds = %bb.f, %._crit_edge.loopexit.i.i
  %.0.lcssa.i.i = phi i64 [ 0, %bb.f ], [ %i.au, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.010.lcssa.i.i = phi i64 [ %.0101.i.i, %bb.f ], [ %.010.i.i, %._crit_edge.loopexit.i.i ]
  %i.av = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.010.lcssa.i.i, i1 true) ; 2 uses
  %i.aw = add nuw nsw i64 %i.av, %.0.lcssa.i.i
  %i.ax = lshr exact i64 %.0.lcssa.i.i, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !31
  %i.ba = shl nuw i64 1, %i.av
  %i.bb = xor i64 %i.ba, %i.az
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !31
  %i.bc = getelementptr i8, ptr %i.ak, i64 8
  %.val.i10 = load ptr, ptr %i.bc, align 8, !tbaa !122
  %i.bd = load i64, ptr %i.am, align 8, !tbaa !139
  %i.be = mul i64 %i.bd, %i.aw
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i10, i64 %i.be
  %i.bg = load i64, ptr %i.ak, align 8, !tbaa !123
  %i.bh = add i64 %i.bg, -268435456
  store i64 %i.bh, ptr %i.ak, align 8, !tbaa !123
  br label %bb.g

bb.g:                                             ; preds = %arena_bin_refill_slabcur_no_fresh_slab.exit.thread, %arena_slab_reg_alloc.exit
  %.0 = phi ptr [ %i.bf, %arena_slab_reg_alloc.exit ], [ null, %arena_bin_refill_slabcur_no_fresh_slab.exit.thread ]
  ret ptr %.0
}

declare void @duckdb_je_tcache_bin_flush_stashed(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @duckdb_je_tcache_alloc_small_hard(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_edata_heap_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_edata_heap_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_sdalloc_no_tcache(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #15 !guid !300 {
bb.a:
  %i.a = icmp ult i64 %2, 4097
  br i1 %i.a, label %bb.b, label %bb.c, !prof !118

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %2, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !119
  %i.f = zext i8 %i.e to i32
  br label %sz_size2index.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.g, label %sz_size2index.exit.thread, label %bb.d, !prof !120

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.i, i1 true) ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = sub nuw nsw i64 60, %i.j
  %i.m = add nsw i64 %2, -1
  %i.n = lshr i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 3
  %i.q = shl nuw nsw i32 %i.k, 2
  %reass.sub = sub nsw i32 %i.p, %i.q
  %i.r = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.r, %bb.d ]
  %i.s = icmp samesign ult i32 %.0.i, 36
  br i1 %i.s, label %bb.e, label %sz_size2index.exit.thread, !prof !154

bb.e:                                             ; preds = %sz_size2index.exit
  tail call void @duckdb_je_arena_dalloc_small(ptr noundef %0, ptr noundef %1)
  br label %bb.f

sz_size2index.exit.thread:                        ; preds = %bb.c, %sz_size2index.exit
  tail call fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %sz_size2index.exit.thread, %bb.e
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1) unnamed_addr #15 !guid !301 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !120

bb.b:                                             ; preds = %bb.a
  call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %2) #17
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %2, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i, i64 noundef %i.c)
  %i.d = load ptr, ptr %3, align 8, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @duckdb_je_large_dalloc(ptr noundef %0, ptr noundef %i.d) #17
  ret void
}

declare void @duckdb_je_tcache_bin_flush_small(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @duckdb_je_tsd_slow_update(ptr noundef) local_unnamed_addr #3

declare ptr @duckdb_je_arena_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{i64 4181703989391714664}
!8 = !{i64 5236284115719774834}
!9 = !{i64 -3640695748765492190}
!10 = !{i64 4447719708837419962}
!11 = !{i64 -339898963167627597}
!12 = !{i64 3904633419098040916}
!13 = !{i64 -2654546535724141950}
!14 = !{i64 -2838903256831942530}
!15 = !{i64 -2725846393710532497}
!16 = !{i64 6141239986871818618}
!17 = !{i64 5144076893826512775}
!18 = !{i64 7753565509944213189}
!19 = !{i64 7237127400330967958}
!20 = !{i64 3860811241799837103}
!21 = !{i64 2572761502376986571}
!22 = !{i64 2614456307579853218}
!23 = !{i64 -1574123611335063223}
!24 = !{i64 2401123897020499479}
!25 = !{i64 -5419068414652332182}
!26 = !{i64 -6333388228595095741}
!27 = !{!"any pointer", !4, i64 0}
!28 = !{!"p1 omnipotent char", !27, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"long", !4, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"", !5, i64 0}
!33 = !{!"p1 _ZTS6tsdn_s", !27, i64 0}
!34 = !{!"", !30, i64 0}
!35 = !{!"locked_u64_s", !34, i64 0}
!36 = !{!"pac_decay_stats_s", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!"pac_stats_s", !36, i64 0, !36, i64 24, !30, i64 48, !34, i64 56, !34, i64 64}
!38 = !{!"pa_shard_stats_s", !30, i64 0, !37, i64 8}
!39 = !{!"arena_stats_s", !30, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !34, i64 48, !30, i64 56, !30, i64 64, !30, i64 72, !30, i64 80, !30, i64 88, !30, i64 96, !38, i64 104, !30, i64 184, !30, i64 192, !4, i64 200, !4, i64 968, !34, i64 10376}
!40 = !{!"p1 _ZTS13tcache_slow_s", !27, i64 0}
!41 = !{!"", !40, i64 0}
!42 = !{!"p1 _ZTS28cache_bin_array_descriptor_s", !27, i64 0}
!43 = !{!"", !42, i64 0}
!44 = !{!"malloc_mutex_s", !4, i64 0}
!45 = !{!"p1 _ZTS7edata_s", !27, i64 0}
!46 = !{!"", !45, i64 0}
!47 = !{!"", !46, i64 0}
!48 = !{!"p1 _ZTS12pa_central_s", !27, i64 0}
!49 = !{!"_Bool", !4, i64 0}
!50 = !{!"", !49, i64 0}
!51 = !{!"pai_s", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !27, i64 48}
!52 = !{!"eset_s", !4, i64 0, !4, i64 32, !4, i64 6432, !47, i64 9632, !34, i64 9640, !5, i64 9648}
!53 = !{!"ecache_s", !44, i64 0, !52, i64 112, !52, i64 9768, !5, i64 19424, !5, i64 19428, !49, i64 19432}
!54 = !{!"p1 _ZTS6base_s", !27, i64 0}
!55 = !{!"p1 _ZTS6emap_s", !27, i64 0}
!56 = !{!"p1 _ZTS13edata_cache_s", !27, i64 0}
!57 = !{!"exp_grow_s", !5, i64 0, !5, i64 4}
!58 = !{!"san_bump_alloc_s", !44, i64 0, !45, i64 112}
!59 = !{!"decay_s", !44, i64 0, !49, i64 112, !34, i64 120, !34, i64 128, !34, i64 136, !30, i64 144, !34, i64 152, !30, i64 160, !30, i64 168, !4, i64 176, !30, i64 1776}
!60 = !{!"p1 _ZTS14malloc_mutex_s", !27, i64 0}
!61 = !{!"p1 _ZTS11pac_stats_s", !27, i64 0}
!62 = !{!"pac_s", !51, i64 0, !53, i64 56, !53, i64 19496, !53, i64 38936, !54, i64 58376, !55, i64 58384, !56, i64 58392, !57, i64 58400, !44, i64 58408, !58, i64 58520, !34, i64 58640, !59, i64 58648, !59, i64 60432, !60, i64 62216, !61, i64 62224, !34, i64 62232}
!63 = !{!"p1 _ZTS5pai_s", !27, i64 0}
!64 = !{!"sec_opts_s", !30, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32}
!65 = !{!"p1 _ZTS11sec_shard_s", !27, i64 0}
!66 = !{!"sec_s", !51, i64 0, !63, i64 56, !64, i64 64, !65, i64 104, !5, i64 112}
!67 = !{!"p1 _ZTS13hpa_central_s", !27, i64 0}
!68 = !{!"edata_cache_fast_s", !47, i64 0, !56, i64 8, !49, i64 16}
!69 = !{!"psset_bin_stats_s", !30, i64 0, !30, i64 8, !30, i64 16}
!70 = !{!"psset_stats_s", !4, i64 0, !4, i64 3072, !4, i64 3120}
!71 = !{!"p1 _ZTS8hpdata_s", !27, i64 0}
!72 = !{!"", !71, i64 0}
!73 = !{!"", !72, i64 0}
!74 = !{!"psset_s", !4, i64 0, !4, i64 1024, !69, i64 1032, !70, i64 1056, !73, i64 4224, !4, i64 4232, !4, i64 5256, !73, i64 5272}
!75 = !{!"hpa_shard_opts_s", !30, i64 0, !30, i64 8, !5, i64 16, !49, i64 20, !30, i64 24, !30, i64 32, !49, i64 40}
!76 = !{!"hpa_shard_nonderived_stats_s", !30, i64 0, !30, i64 8, !30, i64 16, !30, i64 24}
!77 = !{!"hpa_shard_s", !51, i64 0, !67, i64 56, !44, i64 64, !44, i64 176, !54, i64 288, !68, i64 296, !74, i64 320, !30, i64 5600, !5, i64 5608, !55, i64 5616, !75, i64 5624, !30, i64 5672, !76, i64 5680, !34, i64 5712}
!78 = !{!"ph_s", !27, i64 0, !30, i64 8}
!79 = !{!"", !78, i64 0}
!80 = !{!"edata_cache_s", !79, i64 0, !34, i64 16, !44, i64 24, !54, i64 136}
!81 = !{!"p1 _ZTS16pa_shard_stats_s", !27, i64 0}
!82 = !{!"pa_shard_s", !48, i64 0, !34, i64 8, !50, i64 16, !49, i64 17, !62, i64 24, !66, i64 62264, !77, i64 62384, !80, i64 68104, !5, i64 68248, !60, i64 68256, !81, i64 68264, !55, i64 68272, !54, i64 68280}
!83 = !{!"arena_s", !4, i64 0, !32, i64 8, !33, i64 16, !39, i64 24, !41, i64 10408, !43, i64 10416, !44, i64 10424, !32, i64 10536, !47, i64 10544, !44, i64 10552, !82, i64 10664, !5, i64 78952, !54, i64 78960, !34, i64 78968, !4, i64 78976, !4, i64 79040}
!84 = !{!83, !54, i64 78960}
!85 = !{!"", !34, i64 0, !34, i64 8, !30, i64 16, !30, i64 24, !5, i64 32, !32, i64 36, !30, i64 40, !33, i64 48, !30, i64 56}
!86 = !{!85, !30, i64 56}
!87 = !{!85, !33, i64 48}
!88 = !{!85, !30, i64 40}
!89 = !{!83, !42, i64 10416}
!90 = !{!"", !42, i64 0, !42, i64 8}
!91 = !{!"p1 _ZTS11cache_bin_s", !27, i64 0}
!92 = !{!"cache_bin_array_descriptor_s", !90, i64 0, !91, i64 16}
!93 = !{!92, !91, i64 16}
!94 = !{!92, !42, i64 0}
!95 = !{!"any p2 pointer", !27, i64 0}
!96 = !{!"cache_bin_stats_s", !30, i64 0}
!97 = !{!"short", !4, i64 0}
!98 = !{!"cache_bin_info_s", !97, i64 0}
!99 = !{!"cache_bin_s", !95, i64 0, !96, i64 8, !97, i64 16, !97, i64 18, !97, i64 20, !98, i64 22}
!100 = !{!99, !95, i64 0}
!101 = !{!99, !97, i64 20}
!102 = !{!99, !97, i64 22}
!103 = !{!99, !97, i64 18}
!104 = !{!27, !27, i64 0}
!105 = !{!"bitmap_info_s", !30, i64 0, !30, i64 8}
!106 = !{!"bin_info_s", !30, i64 0, !30, i64 8, !5, i64 16, !5, i64 20, !105, i64 24}
!107 = !{!106, !5, i64 20}
end_hunk_3
