Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/tcache?download=true
inline.NumInlined: 257
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@tcache_event:bb.a
  %i.aa = ptrtoint ptr %.val.i43 to i64
  %i.ab = trunc i64 %i.aa to i16
  %i.ac = sub i16 %.val4.i, %i.ab
  %i.ad = lshr i16 %i.ac, 3
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.f
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !28
  %i.ag = load i64, ptr @duckdb_je_opt_tcache_gc_delay_bytes, align 8, !tbaa !28
  %i.ah = udiv i64 %i.ag, %i.af
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 255)
  %i.ai = trunc nuw i64 %spec.select.i.i to i8
  store i8 %i.ai, ptr %i.u, align 1, !tbaa !52
  %i.aj = zext nneg i16 %i.ad to i32
  %i.ak = sub nsw i32 %i.aj, %i.s
  tail call void @duckdb_je_tcache_bin_flush_small(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.i, i32 noundef %i.e, i32 noundef %i.ak)
  %.val27.i = load i16, ptr %i.l, align 2, !tbaa !53
  %i.al = zext i16 %.val27.i to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.f ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !52  ; 2 uses
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = lshr i32 %i.al, %i.ap
  %i.ar = icmp samesign ugt i32 %i.aq, 1
  br i1 %i.ar, label %bb.h, label %tcache_gc_small.exit

bb.h:                                             ; preds = %bb.g
  %i.as = add i8 %i.ao, 1
  store i8 %i.as, ptr %i.an, align 1, !tbaa !52
  br label %tcache_gc_small.exit

bb.i:                                             ; preds = %bb.d
  %.val.i44 = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.at = ptrtoint ptr %.val.i44 to i64
  %i.au = trunc i64 %i.at to i16
  %i.av = sub i16 %.val4.i, %i.au
  %i.aw = lshr i16 %i.av, 3
  %i.ax = zext nneg i16 %i.aw to i32
  %i.ay = zext nneg i16 %i.p to i32               ; 2 uses
  %i.az = lshr i32 %i.ay, 2
  %i.ba = sub nsw i32 %i.az, %i.ay
  %i.bb = add nsw i32 %i.ba, %i.ax
  tail call void @duckdb_je_tcache_bin_flush_large(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.i, i32 noundef %i.e, i32 noundef %i.bb)
  br label %tcache_gc_small.exit

bb.j:                                             ; preds = %bb.c
  br i1 %i.g, label %bb.k, label %tcache_gc_small.exit

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.f ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !30, !range !31, !noundef !32
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.l, label %tcache_gc_small.exit

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.f ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !52  ; 2 uses
  %i.bj = icmp ugt i8 %i.bi, 1
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bk = add i8 %i.bi, -1
  store i8 %i.bk, ptr %i.bh, align 1, !tbaa !52
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i8 0, ptr %i.bd, align 1, !tbaa !30
  br label %tcache_gc_small.exit

tcache_gc_small.exit:                             ; preds = %bb.h, %bb.g, %bb.f, %bb.j, %bb.k, %bb.n, %bb.i
  %i.bl = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = trunc i64 %i.bm to i16
  store i16 %i.bn, ptr %i.m, align 8, !tbaa !50
  %.pre = load i32, ptr %i.d, align 4, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %tcache_gc_small.exit
  %i.bo = phi i32 [ %i.e, %bb.b ], [ %.pre, %tcache_gc_small.exit ]
  %i.bp = add i32 %i.bo, 1                        ; 2 uses
  %.val41 = load i32, ptr %i.k, align 8, !tbaa !54
  %i.bq = icmp eq i32 %i.bp, %.val41
  %spec.store.select = select i1 %i.bq, i32 0, i32 %i.bp
  store i32 %spec.store.select, ptr %i.d, align 4, !tbaa !43
  br label %tcache_get.exit.thread

tcache_get.exit.thread:                           ; preds = %bb.o, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_gc_dalloc_event_handler(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !guid !167 {
bb.a:
  tail call fastcc void @tcache_event(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @duckdb_je_tcache_alloc_small_hard(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %5) local_unnamed_addr #0 !guid !168 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !56     ; 2 uses
  %i.b = getelementptr i8, ptr %3, i64 22
  %.val = load i16, ptr %i.b, align 2, !tbaa !53
  %i.c = zext i16 %.val to i32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = zext i32 %4 to i64                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !52
  %i.h = zext nneg i8 %i.g to i32
  %i.i = lshr i32 %i.c, %i.h                      ; 2 uses
  %i.j = trunc nuw i32 %i.i to i16
  %i.k = icmp eq i32 %i.i, 0
  %spec.store.select = select i1 %i.k, i16 1, i16 %i.j
  tail call void @duckdb_je_arena_cache_bin_fill_small(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %4, i16 noundef zeroext %spec.store.select) #15
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.e
  store i8 1, ptr %i.m, align 1, !tbaa !30
  %i.n = load ptr, ptr %3, align 8, !tbaa !49     ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !50   ; 2 uses
  %i.t = trunc i64 %i.p to i16
  %.not.i = icmp eq i16 %i.s, %i.t
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  store ptr %i.q, ptr %3, align 8, !tbaa !49
  br label %cache_bin_alloc_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.v = load i16, ptr %i.u, align 4, !tbaa !51
  %.not21.i = icmp eq i16 %i.v, %i.s
  br i1 %.not21.i, label %cache_bin_alloc_impl.exit, label %bb.d, !prof !26

bb.d:                                             ; preds = %bb.c
  store ptr %i.q, ptr %3, align 8, !tbaa !49
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = trunc i64 %i.w to i16
  store i16 %i.x, ptr %i.r, align 8, !tbaa !50
  br label %cache_bin_alloc_impl.exit

cache_bin_alloc_impl.exit:                        ; preds = %bb.c, %bb.b, %bb.d
  %.sink = phi i8 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.c ]
  %.0.i = phi ptr [ %i.o, %bb.b ], [ %i.o, %bb.d ], [ null, %bb.c ]
  store i8 %.sink, ptr %5, align 1, !tbaa !30
  ret ptr %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @duckdb_je_arena_cache_bin_fill_small(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_bin_flush_small(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !guid !169 {
bb.a:
  %5 = alloca [16 x %struct.bin_remote_free_data_s], align 16 ; 4 uses
  %i.a = getelementptr i8, ptr %2, i64 20         ; 3 uses
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext true)
  %.val = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %.val7 = load i16, ptr %i.a, align 4, !tbaa !51
  %i.b = ptrtoint ptr %.val to i64
  %i.c = trunc i64 %i.b to i16
  %i.d = sub i16 %.val7, %i.c                     ; 2 uses
  %i.e = lshr i16 %i.d, 3                         ; 2 uses
  %i.f = and i32 %4, 65535
  %i.g = zext nneg i16 %i.e to i32
  %i.h = icmp samesign ugt i32 %i.f, %i.g
  %i.i = trunc i32 %4 to i16
  %i.j = sub i16 %i.e, %i.i
  %i.k = select i1 %i.h, i16 0, i16 %i.j          ; 2 uses
  %i.l = zext i16 %i.d to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 %i.l
  %i.n = zext i16 %i.k to i64                     ; 4 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.o
  %i.q = zext i16 %i.k to i32                     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.s = zext i32 %3 to i64                       ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_bin_offsets, i64 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_binind_div_info, i64 %i.s
  %i.x = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.z = icmp eq ptr %0, null
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 156
  br label %bb.b

bb.b:                                             ; preds = %tcache_bin_flush_impl_small.exit, %bb.a
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.ly, %tcache_bin_flush_impl_small.exit ] ; 4 uses
  %i.ae = sub nsw i32 %i.q, %.0.i
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 256) ; 7 uses
  %i.af = zext nneg i32 %.0.i to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.af ; 7 uses
  %savedstack = tail call ptr @llvm.stacksave.p0()
  %i.ah = load ptr, ptr %1, align 8, !tbaa !56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !58 ; 2 uses
  %i.ak = load i8, ptr %i.t, align 1, !tbaa !52
  %i.al = zext i8 %i.ak to i32
  %i.am = add nuw nsw i32 %spec.store.select.i, 1
  %i.an = zext nneg i32 %i.am to i64              ; 2 uses
  %6 = alloca %union.emap_batch_lookup_result_u, i64 %i.an, align 16 ; 8 uses
  %i.ao = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  call fastcc void @tcache_bin_flush_edatas_lookup(ptr noundef %0, ptr %i.ag, i64 noundef %i.ao, ptr noundef %6)
  %i.ap = alloca ptr, i64 %i.an, align 16         ; 3 uses
  %.not128 = icmp eq i32 %.0.i, %i.q
  br i1 %.not128, label %._crit_edge127.thread, label %arena_get.exit

.preheader85:                                     ; preds = %arena_decay_ticks.exit
  %i.aq = trunc nuw i8 %.2.i to i1
  %.not132 = icmp eq i32 %.3, 0
  br i1 %.not132, label %.preheader84, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %.preheader85
  %wide.trip.count148 = zext i32 %.3 to i64
  br label %.lr.ph124

arena_get.exit:                                   ; preds = %bb.b, %arena_decay_ticks.exit
  %.0160.i118 = phi i8 [ %.2.i, %arena_decay_ticks.exit ], [ 0, %bb.b ] ; 3 uses
  %.0162.i117 = phi i32 [ %.1163.i.lcssa, %arena_decay_ticks.exit ], [ 0, %bb.b ] ; 9 uses
  %.0116 = phi i32 [ %.3, %arena_decay_ticks.exit ], [ 0, %bb.b ] ; 3 uses
  %.sroa.050.0115 = phi ptr [ %.sroa.050.4, %arena_decay_ticks.exit ], [ null, %bb.b ] ; 3 uses
  %i.ar = zext nneg i32 %.0162.i117 to i64        ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !52 ; 2 uses
  %.val13 = load i64, ptr %i.at, align 8, !tbaa !61 ; 2 uses
  %i.au = and i64 %.val13, 4095
  %i.av = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.au
  %i.aw = load atomic ptr, ptr %i.av acquire, align 8 ; 7 uses
  %.val15 = load i64, ptr %i.at, align 8, !tbaa !61
  %i.ax = lshr i64 %.val15, 38                    ; 2 uses
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = and i32 %i.ay, 63                       ; 2 uses
  %i.ba = load i32, ptr %i.u, align 4, !tbaa !6
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr @duckdb_je_bin_info_nbatched_sizes, align 4, !tbaa !6
  %i.be = icmp ult i32 %3, %i.bd                  ; 3 uses
  %i.bf = and i64 %i.ax, 63                       ; 2 uses
  %i.bg = getelementptr inbounds nuw [648 x i8], ptr %i.bc, i64 %i.bf ; 4 uses
  %i.bh = getelementptr inbounds nuw [256 x i8], ptr %i.bc, i64 %i.bf
  %.0.i29 = select i1 %i.be, ptr %i.bg, ptr %i.bh ; 26 uses
  %i.bi = add nuw nsw i32 %.0162.i117, 1          ; 3 uses
  %i.bj = icmp samesign ult i32 %i.bi, %spec.store.select.i
  br i1 %i.bj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %arena_get.exit
  %i.bk = add nuw nsw i64 %i.ar, 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %arena_get.exit
  %.1163.i.lcssa = phi i32 [ %i.bi, %arena_get.exit ], [ %.2164.i, %bb.e ] ; 7 uses
  %i.bl = icmp ne ptr %i.aw, %i.aj                ; 2 uses
  %i.bm = icmp ne i32 %i.az, %i.al
  %.not178.i = select i1 %i.bl, i1 true, i1 %i.bm
  %i.bn = sub i32 %.1163.i.lcssa, %.0162.i117     ; 4 uses
  %i.bo = zext i32 %i.bn to i64                   ; 4 uses
  %i.bp = load i64, ptr @duckdb_je_opt_bin_info_remote_free_max_batch, align 8, !tbaa !28
  %i.bq = icmp uge i64 %i.bp, %i.bo
  %or.cond.not.i = select i1 %i.bq, i1 %.not178.i, i1 false
  %i.br = select i1 %or.cond.not.i, i1 %i.be, i1 false ; 3 uses
  br i1 %i.br, label %bb.f, label %.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ %i.bk, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.1163.i87 = phi i32 [ %i.bi, %.lr.ph.preheader ], [ %.2164.i, %bb.e ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.val12 = load i64, ptr %i.bt, align 8, !tbaa !61 ; 2 uses
  %i.bu = xor i64 %.val12, %.val13
  %i.bv = and i64 %i.bu, 4095
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = ptrtoint ptr %i.bt to i64
  br i1 %i.bw, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.by = lshr i64 %.val12, 38
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = and i32 %i.bz, 63
  %i.cb = icmp eq i32 %i.ca, %i.az
  br i1 %i.cb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cc = zext i32 %.1163.i87 to i64              ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.cc ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.cd, align 8, !tbaa !52
  store i64 %i.bx, ptr %i.cd, align 8, !tbaa !52
  store ptr %.sroa.0.0.copyload.i, ptr %i.bs, align 8, !tbaa !52
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.cc ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !57
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !57
  store ptr %i.ch, ptr %i.ce, align 8, !tbaa !57
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !57
  %i.ci = add i32 %.1163.i87, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph
  %.2164.i = phi i32 [ %i.ci, %bb.d ], [ %.1163.i87, %bb.c ], [ %.1163.i87, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ao
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %._crit_edge
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i29, i64 72
  %i.ck = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.cj) #15
  %.not = icmp eq i32 %i.ck, 0
  br i1 %.not, label %bb.g, label %malloc_mutex_trylock.exit

bb.g:                                             ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i29, i64 56 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !66
  %i.cn = add i64 %i.cm, 1
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !66
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i29, i64 48 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !67
  %.not.i.i30 = icmp eq ptr %i.cp, %0
  br i1 %.not.i.i30, label %malloc_mutex_lock.exit.thread77, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.co, align 8, !tbaa !67
  br label %malloc_mutex_lock.exit.thread77.sink.split

malloc_mutex_trylock.exit:                        ; preds = %bb.f
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i29, i64 256 ; 2 uses
  %i.cr = tail call i64 @duckdb_je_batcher_push_begin(ptr noundef %0, ptr noundef nonnull %i.cq, i64 noundef %i.bo) #15 ; 2 uses
  %.not.i.not = icmp eq i64 %i.cr, -1
  br i1 %.not.i.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %malloc_mutex_trylock.exit
  %.not129 = icmp eq i32 %.1163.i.lcssa, %.0162.i117
  br i1 %.not129, label %._crit_edge90, label %.lr.ph89

.lr.ph89:                                         ; preds = %.preheader
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i29, i64 392
  %i.ct = getelementptr [16 x i8], ptr %i.cs, i64 %i.cr ; 3 uses
  %xtraiter = and i64 %i.bo, 1
  %i.cu = icmp eq i32 %i.bn, 1
  br i1 %i.cu, label %.epil.preheader, label %.lr.ph89.new

.lr.ph89.new:                                     ; preds = %.lr.ph89
  %unroll_iter = and i64 %i.bo, 4294967294
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph89.new
  %indvars.iv135 = phi i64 [ 0, %.lr.ph89.new ], [ %indvars.iv.next136.1, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph89.new ], [ %niter.next.1, %bb.i ]
  %i.cv = trunc nuw i64 %indvars.iv135 to i32
  %i.cw = add i32 %.0162.i117, %i.cv
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !57
  %i.da = getelementptr [16 x i8], ptr %i.ct, i64 %indvars.iv135 ; 2 uses
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !70
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.cx
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !52
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !71
  %indvars.iv.next136 = or disjoint i64 %indvars.iv135, 1 ; 2 uses
  %i.de = trunc nuw i64 %indvars.iv.next136 to i32
  %i.df = add i32 %.0162.i117, %i.de
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !57
  %i.dj = getelementptr [16 x i8], ptr %i.ct, i64 %indvars.iv.next136 ; 2 uses
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !70
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.dg
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !52
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !71
  %indvars.iv.next136.1 = add nuw nsw i64 %indvars.iv135, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge90.loopexit.unr-lcssa, label %bb.i

._crit_edge90.loopexit.unr-lcssa:                 ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge90, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge90.loopexit.unr-lcssa, %.lr.ph89
  %indvars.iv135.epil.init = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next136.1, %._crit_edge90.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod177 = trunc i32 %i.bn to i1
  tail call void @llvm.assume(i1 %lcmp.mod177)
  %i.dn = trunc nuw i64 %indvars.iv135.epil.init to i32
  %i.do = add i32 %.0162.i117, %i.dn
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !57
  %i.ds = getelementptr [16 x i8], ptr %i.ct, i64 %indvars.iv135.epil.init ; 2 uses
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !70
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.dp
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !52
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !71
  br label %._crit_edge90

._crit_edge90:                                    ; preds = %.epil.preheader, %._crit_edge90.loopexit.unr-lcssa, %.preheader
  tail call void @batcher_push_end(ptr noundef %0, ptr noundef nonnull %i.cq) #15
  br label %bb.af

.thread:                                          ; preds = %malloc_mutex_trylock.exit, %._crit_edge
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i29, i64 72
  %i.dx = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.dw) #15
  %.not.i31 = icmp eq i32 %i.dx, 0
  br i1 %.not.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %.0.i29) #15
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i29, i64 64
  store atomic i8 1, ptr %i.dy monotonic, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i29, i64 56 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !66
  %i.eb = add i64 %i.ea, 1
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !66
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i29, i64 48 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !67
  %.not.i.i32 = icmp eq ptr %i.ed, %0
  br i1 %.not.i.i32, label %malloc_mutex_lock.exit, label %.split

.split:                                           ; preds = %bb.k
  store ptr %0, ptr %i.ec, align 8, !tbaa !67
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i29, i64 40 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !72
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !72
  br i1 %i.br, label %malloc_mutex_lock.exit.thread77.sink.split, label %malloc_mutex_lock.exit.thread77

malloc_mutex_lock.exit:                           ; preds = %bb.k
  br i1 %i.br, label %malloc_mutex_lock.exit.thread77.sink.split, label %malloc_mutex_lock.exit.thread77

malloc_mutex_lock.exit.thread77.sink.split:       ; preds = %malloc_mutex_lock.exit, %.split, %bb.h
  %.sink176 = phi i64 [ 40, %bb.h ], [ 200, %.split ], [ 200, %malloc_mutex_lock.exit ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i29, i64 %.sink176 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !28
  %i.ej = add i64 %i.ei, 1
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !28
  br label %malloc_mutex_lock.exit.thread77

malloc_mutex_lock.exit.thread77:                  ; preds = %malloc_mutex_lock.exit.thread77.sink.split, %bb.g, %.split, %malloc_mutex_lock.exit
  %i.ek = trunc nuw i8 %.0160.i118 to i1
  %or.cond5.i = select i1 %i.bl, i1 true, i1 %i.ek
  br i1 %or.cond5.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %malloc_mutex_lock.exit.thread77
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i29, i64 152 ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !80
  %i.en = add i64 %i.em, 1
  store i64 %i.en, ptr %i.el, align 8, !tbaa !80
  %i.eo = load i64, ptr %i.v, align 8, !tbaa !81
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i29, i64 128 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !82
  %i.er = add i64 %i.eq, %i.eo
  store i64 %i.er, ptr %i.ep, align 8, !tbaa !82
  store i64 0, ptr %i.v, align 8, !tbaa !81
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %malloc_mutex_lock.exit.thread77
  %.1.i = phi i8 [ %.0160.i118, %malloc_mutex_lock.exit.thread77 ], [ 1, %bb.l ]
  %i.es = load i32, ptr %i.w, align 4, !tbaa !6   ; 2 uses
  %i.et = icmp ult i32 %.0162.i117, %.1163.i.lcssa
  br i1 %i.et, label %.lr.ph96, label %._crit_edge97

.lr.ph96:                                         ; preds = %bb.m
  %i.eu = zext i32 %i.es to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i29, i64 224
  br label %bb.n

._crit_edge97.loopexit:                           ; preds = %arena_dalloc_bin_locked_step.exit
  %i.ew = xor i32 %.0162.i117, -1
  %i.ex = add i32 %.1163.i.lcssa, %i.ew
  %i.ey = zext i32 %i.ex to i64
  %i.ez = add nuw nsw i64 %i.ey, 1
  br label %._crit_edge97

._crit_edge97:                                    ; preds = %._crit_edge97.loopexit, %bb.m
  %.sroa.7.0.lcssa = phi i64 [ 0, %bb.m ], [ %i.ez, %._crit_edge97.loopexit ] ; 4 uses
  %.sroa.050.2.lcssa = phi ptr [ %.sroa.050.0115, %bb.m ], [ %.sroa.050.5, %._crit_edge97.loopexit ] ; 4 uses
  %.1.lcssa = phi i32 [ %.0116, %bb.m ], [ %.4, %._crit_edge97.loopexit ] ; 4 uses
  br i1 %i.be, label %bb.v, label %arena_bin_flush_batch_impl.exit

bb.n:                                             ; preds = %.lr.ph96, %arena_dalloc_bin_locked_step.exit
  %indvars.iv139 = phi i64 [ %i.ar, %.lr.ph96 ], [ %indvars.iv.next140, %arena_dalloc_bin_locked_step.exit ] ; 3 uses
  %.193 = phi i32 [ %.0116, %.lr.ph96 ], [ %.4, %arena_dalloc_bin_locked_step.exit ] ; 8 uses
  %.sroa.050.292 = phi ptr [ %.sroa.050.0115, %.lr.ph96 ], [ %.sroa.050.5, %arena_dalloc_bin_locked_step.exit ] ; 7 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv139
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !57
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv139
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !52 ; 15 uses
  %i.fe = ptrtoint ptr %i.fb to i64
  %i.ff = getelementptr i8, ptr %i.fd, i64 8
  %.val17 = load ptr, ptr %i.ff, align 8, !tbaa !83
  %i.fg = ptrtoint ptr %.val17 to i64
  %i.fh = sub i64 %i.fe, %i.fg
  %i.fi = mul i64 %i.fh, %i.eu                    ; 2 uses
  %i.fj = lshr i64 %i.fi, 32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 64
  %i.fl = lshr i64 %i.fi, 38
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fl ; 2 uses
end_hunk_0
begin_hunk_1_@duckdb_je_tcache_bin_flush_small:bb.a
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  store ptr %.sroa.050.6106, ptr %i.it, align 8, !tbaa !52
  %i.iu = load ptr, ptr %i.il, align 8, !tbaa !52
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 40
  store ptr %i.hk, ptr %i.iv, align 8, !tbaa !52
  %.pre.i33 = load ptr, ptr %i.ik, align 8, !tbaa !52
  br label %arena_dalloc_bin_locked_step.exit.i

bb.ac:                                            ; preds = %bb.x
  %i.iw = icmp eq i32 %i.id, 1
  br i1 %i.iw, label %bb.ad, label %arena_dalloc_bin_locked_step.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.ix = load ptr, ptr %i.gx, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.hk, %i.ix
  br i1 %.not.i.i, label %arena_dalloc_bin_locked_step.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty(ptr noundef %0, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.hk, ptr noundef nonnull %.0.i29) #15
  br label %arena_dalloc_bin_locked_step.exit.i

arena_dalloc_bin_locked_step.exit.i:              ; preds = %bb.ab, %bb.aa, %bb.ae, %bb.ad, %bb.ac, %bb.z
  %.sroa.050.7 = phi ptr [ %.sroa.050.6106, %bb.z ], [ %.sroa.050.6106, %bb.ac ], [ %.sroa.050.6106, %bb.ad ], [ %.sroa.050.6106, %bb.ae ], [ %.pre.i33, %bb.ab ], [ %i.hk, %bb.aa ] ; 2 uses
  %.6 = phi i32 [ %i.ij, %bb.z ], [ %.5107, %bb.ac ], [ %.5107, %bb.ad ], [ %.5107, %bb.ae ], [ %.5107, %bb.ab ], [ %.5107, %bb.aa ] ; 2 uses
  %i.iy = add nuw i64 %.0.i6108, 1                ; 2 uses
  %exitcond144.not = icmp eq i64 %i.iy, %i.gr
  br i1 %exitcond144.not, label %._crit_edge111.loopexit, label %bb.x

arena_bin_flush_batch_impl.exit:                  ; preds = %._crit_edge111, %bb.v, %._crit_edge97
  %.sroa.7.1 = phi i64 [ %.sroa.7.0.lcssa, %._crit_edge97 ], [ %.sroa.7.2.lcssa, %._crit_edge111 ], [ %.sroa.7.0.lcssa, %bb.v ] ; 2 uses
  %.sroa.050.3 = phi ptr [ %.sroa.050.2.lcssa, %._crit_edge97 ], [ %.sroa.050.6.lcssa, %._crit_edge111 ], [ %.sroa.050.2.lcssa, %bb.v ]
  %.2 = phi i32 [ %.1.lcssa, %._crit_edge97 ], [ %.5.lcssa, %._crit_edge111 ], [ %.1.lcssa, %bb.v ]
  %i.iz = getelementptr inbounds nuw i8, ptr %.0.i29, i64 120 ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !92
  %i.jb = add i64 %i.ja, %.sroa.7.1
  store i64 %i.jb, ptr %i.iz, align 8, !tbaa !92
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.i29, i64 136 ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !93
  %i.je = sub i64 %i.jd, %.sroa.7.1
  store i64 %i.je, ptr %i.jc, align 8, !tbaa !93
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.i29, i64 64
  store atomic i8 0, ptr %i.jf monotonic, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %.0.i29, i64 72
  %i.jh = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.jg) #15 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge90, %arena_bin_flush_batch_impl.exit
  %.sroa.050.4 = phi ptr [ %.sroa.050.0115, %._crit_edge90 ], [ %.sroa.050.3, %arena_bin_flush_batch_impl.exit ] ; 3 uses
  %.3 = phi i32 [ %.0116, %._crit_edge90 ], [ %.2, %arena_bin_flush_batch_impl.exit ] ; 3 uses
  %.2.i = phi i8 [ %.0160.i118, %._crit_edge90 ], [ %.1.i, %arena_bin_flush_batch_impl.exit ] ; 2 uses
  br i1 %i.z, label %arena_decay_ticks.exit, label %bb.ag, !prof !26

bb.ag:                                            ; preds = %bb.af
  %i.ji = load i8, ptr %i.ac, align 1, !tbaa !52
  %i.jj = load i32, ptr %i.aa, align 4, !tbaa !95
  %i.jk = sub nsw i32 %i.jj, %i.bn                ; 2 uses
  store i32 %i.jk, ptr %i.aa, align 4, !tbaa !95
  %i.jl = icmp slt i32 %i.jk, 0
  br i1 %i.jl, label %bb.ah, label %arena_decay_ticks.exit, !prof !26

bb.ah:                                            ; preds = %bb.ag
  %i.jm = icmp sgt i8 %i.ji, 0
  br i1 %i.jm, label %ticker_geom_ticks.exit, label %bb.ai

ticker_geom_ticks.exit:                           ; preds = %bb.ah
  store i32 0, ptr %i.aa, align 4, !tbaa !95
  br label %arena_decay_ticks.exit

bb.ai:                                            ; preds = %bb.ah
  %i.jn = load i64, ptr %i.ab, align 8, !tbaa !28
  %i.jo = mul i64 %i.jn, 6364136223846793005
  %i.jp = add i64 %i.jo, 1442695040888963407      ; 2 uses
  store i64 %i.jp, ptr %i.ab, align 8, !tbaa !28
  %i.jq = lshr i64 %i.jp, 58
  %i.jr = load i32, ptr %i.ad, align 4, !tbaa !96
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr @duckdb_je_ticker_geom_table, i64 %i.jq
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !52
  %i.jv = zext i8 %i.ju to i64
  %i.jw = mul nsw i64 %i.jv, %i.js
  %i.jx = udiv i64 %i.jw, 61
  %i.jy = trunc i64 %i.jx to i32
  store i32 %i.jy, ptr %i.aa, align 8, !tbaa !95
  tail call void @duckdb_je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.aw, i1 noundef zeroext false, i1 noundef zeroext false) #15
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.ag, %ticker_geom_ticks.exit, %bb.af, %bb.ai
  %i.jz = icmp ult i32 %.1163.i.lcssa, %spec.store.select.i
  br i1 %i.jz, label %arena_get.exit, label %.preheader85

.preheader84:                                     ; preds = %.lr.ph124, %.preheader85
  %i.ka = icmp eq ptr %.sroa.050.4, null
  br i1 %i.ka, label %._crit_edge127, label %.lr.ph126

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %.lr.ph124
  %indvars.iv145 = phi i64 [ 0, %.lr.ph124.preheader ], [ %indvars.iv.next146, %.lr.ph124 ] ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv145
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !87 ; 2 uses
  %.val22 = load i64, ptr %i.kc, align 8, !tbaa !61
  %i.kd = and i64 %.val22, 4095
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.kd
  %i.kf = load atomic ptr, ptr %i.ke monotonic, align 8
  tail call void @duckdb_je_arena_slab_dalloc(ptr noundef %0, ptr noundef %i.kf, ptr noundef nonnull %i.kc) #15
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count148
  br i1 %exitcond149.not, label %.preheader84, label %.lr.ph124

.lr.ph126:                                        ; preds = %.preheader84, %edata_list_active_remove.exit
  %.sroa.050.1125 = phi ptr [ %.sroa.050.10, %edata_list_active_remove.exit ], [ %.sroa.050.4, %.preheader84 ] ; 6 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.050.1125, i64 40 ; 3 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !52 ; 3 uses
  %i.ki = icmp eq ptr %i.kh, %.sroa.050.1125
  br i1 %i.ki, label %edata_list_active_remove.exit, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph126
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 48
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !52
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.050.1125, i64 48 ; 4 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !52
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  store ptr %i.kk, ptr %i.kn, align 8, !tbaa !52
  %i.ko = load ptr, ptr %i.kl, align 8, !tbaa !52 ; 2 uses
  %i.kp = load ptr, ptr %i.kg, align 8, !tbaa !52
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 48
  store ptr %i.ko, ptr %i.kq, align 8, !tbaa !52
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 40
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !52
  store ptr %i.ks, ptr %i.kl, align 8, !tbaa !52
  %i.kt = load ptr, ptr %i.kg, align 8, !tbaa !52 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 48
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !52
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 40
  store ptr %i.kt, ptr %i.kw, align 8, !tbaa !52
  %i.kx = load ptr, ptr %i.kl, align 8, !tbaa !52
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  store ptr %.sroa.050.1125, ptr %i.ky, align 8, !tbaa !52
  br label %edata_list_active_remove.exit

edata_list_active_remove.exit:                    ; preds = %.lr.ph126, %.thread.i
  %.sroa.050.10 = phi ptr [ %i.kh, %.thread.i ], [ null, %.lr.ph126 ] ; 2 uses
  %.val23 = load i64, ptr %.sroa.050.1125, align 8, !tbaa !61
  %i.kz = and i64 %.val23, 4095
  %i.la = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.kz
  %i.lb = load atomic ptr, ptr %i.la monotonic, align 8
  tail call void @duckdb_je_arena_slab_dalloc(ptr noundef %0, ptr noundef %i.lb, ptr noundef nonnull %.sroa.050.1125) #15
  %i.lc = icmp eq ptr %.sroa.050.10, null
  br i1 %i.lc, label %._crit_edge127, label %.lr.ph126

._crit_edge127:                                   ; preds = %edata_list_active_remove.exit, %.preheader84
  br i1 %i.aq, label %tcache_bin_flush_impl_small.exit, label %._crit_edge127.thread

._crit_edge127.thread:                            ; preds = %bb.b, %._crit_edge127
  %i.ld = tail call ptr @duckdb_je_arena_bin_choose(ptr noundef %0, ptr noundef %i.aj, i32 noundef %3, ptr noundef null) #15 ; 9 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 72 ; 2 uses
  %i.lf = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.le) #15
  %.not.i36 = icmp eq i32 %i.lf, 0
  br i1 %.not.i36, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge127.thread
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ld) #15
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 64
  store atomic i8 1, ptr %i.lg monotonic, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge127.thread
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 56 ; 2 uses
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !66
  %i.lj = add i64 %i.li, 1
  store i64 %i.lj, ptr %i.lh, align 8, !tbaa !66
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ld, i64 48 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !67
  %.not.i.i37 = icmp eq ptr %i.ll, %0
  br i1 %.not.i.i37, label %malloc_mutex_lock.exit38, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %0, ptr %i.lk, align 8, !tbaa !67
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ld, i64 40 ; 2 uses
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !72
  %i.lo = add i64 %i.ln, 1
  store i64 %i.lo, ptr %i.lm, align 8, !tbaa !72
  br label %malloc_mutex_lock.exit38

malloc_mutex_lock.exit38:                         ; preds = %bb.ak, %bb.al
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ld, i64 152 ; 2 uses
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !80
  %i.lr = add i64 %i.lq, 1
  store i64 %i.lr, ptr %i.lp, align 8, !tbaa !80
  %i.ls = load i64, ptr %i.v, align 8, !tbaa !81
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ld, i64 128 ; 2 uses
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !82
  %i.lv = add i64 %i.lu, %i.ls
  store i64 %i.lv, ptr %i.lt, align 8, !tbaa !82
  store i64 0, ptr %i.v, align 8, !tbaa !81
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ld, i64 64
  store atomic i8 0, ptr %i.lw monotonic, align 8
  %i.lx = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.le) #15 ; 0 uses
  br label %tcache_bin_flush_impl_small.exit

tcache_bin_flush_impl_small.exit:                 ; preds = %._crit_edge127, %malloc_mutex_lock.exit38
  call void @llvm.stackrestore.p0(ptr %savedstack)
  %i.ly = add nuw nsw i32 %spec.store.select.i, %.0.i ; 2 uses
  %i.lz = icmp samesign ult i32 %i.ly, %i.q
  br i1 %i.lz, label %bb.b, label %tcache_bin_flush_impl.exit

tcache_bin_flush_impl.exit:                       ; preds = %tcache_bin_flush_impl_small.exit
  %.val.i = load ptr, ptr %2, align 8, !tbaa !49  ; 3 uses
  %.val8.i = load i16, ptr %i.a, align 4, !tbaa !51
  %i.ma = ptrtoint ptr %.val.i to i64
  %i.mb = trunc i64 %i.ma to i16
  %i.mc = sub i16 %.val8.i, %i.mb
  %i.md = lshr i16 %i.mc, 3
  %i.me = zext nneg i16 %i.md to i64
  %i.mf = sub nsw i64 %i.me, %i.n
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.n
  %i.mh = shl nsw i64 %i.mf, 3
  %i.mi = and i64 %i.mh, 34359738360
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.mg, ptr align 8 %.val.i, i64 %i.mi, i1 false)
  %i.mj = load ptr, ptr %2, align 8, !tbaa !49
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.n ; 2 uses
  store ptr %i.mk, ptr %2, align 8, !tbaa !49
  %.val3.i.i = load i16, ptr %i.a, align 4, !tbaa !51 ; 2 uses
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = trunc i64 %i.ml to i16                  ; 2 uses
  %i.mn = sub i16 %.val3.i.i, %i.mm
  %i.mo = lshr i16 %i.mn, 3
  %i.mp = getelementptr i8, ptr %2, i64 16        ; 2 uses
  %.val4.i.i = load i16, ptr %i.mp, align 8, !tbaa !50
  %i.mq = sub i16 %.val3.i.i, %.val4.i.i
  %i.mr = lshr i16 %i.mq, 3
  %i.ms = icmp samesign ult i16 %i.mo, %i.mr
  br i1 %i.ms, label %bb.am, label %cache_bin_finish_flush.exit

bb.am:                                            ; preds = %tcache_bin_flush_impl.exit
  store i16 %i.mm, ptr %i.mp, align 8, !tbaa !50
  br label %cache_bin_finish_flush.exit

cache_bin_finish_flush.exit:                      ; preds = %tcache_bin_flush_impl.exit, %bb.am
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_bin_flush_large(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !guid !170 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 20         ; 3 uses
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext false)
  %.val = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %.val5 = load i16, ptr %i.a, align 4, !tbaa !51
  %i.b = ptrtoint ptr %.val to i64
  %i.c = trunc i64 %i.b to i16
  %i.d = sub i16 %.val5, %i.c                     ; 2 uses
  %i.e = lshr i16 %i.d, 3                         ; 2 uses
  %i.f = and i32 %4, 65535
  %i.g = zext nneg i16 %i.e to i32
  %i.h = icmp samesign ugt i32 %i.f, %i.g
  %i.i = trunc i32 %4 to i16
  %i.j = sub i16 %i.e, %i.i
  %i.k = select i1 %i.h, i16 0, i16 %i.j          ; 2 uses
  %i.l = zext i16 %i.d to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 %i.l
  %i.n = zext i16 %i.k to i64                     ; 4 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.o
  %i.q = zext i16 %i.k to i32                     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.s = zext i32 %3 to i64                       ; 2 uses
  %i.t = icmp eq ptr %0, null
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 156
  br label %bb.b

bb.b:                                             ; preds = %tcache_bin_flush_impl_large.exit, %bb.a
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.de, %tcache_bin_flush_impl_large.exit ] ; 4 uses
  %i.y = sub nsw i32 %i.q, %.0.i
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.y, i32 256) ; 4 uses
  %i.z = zext nneg i32 %.0.i to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.z ; 3 uses
  %savedstack = tail call ptr @llvm.stacksave.p0()
  %i.ab = load ptr, ptr %1, align 8, !tbaa !56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 3 uses
  %i.ae = add nuw nsw i32 %spec.store.select.i, 1
  %i.af = zext nneg i32 %i.ae to i64
  %5 = alloca %union.emap_batch_lookup_result_u, i64 %i.af, align 16 ; 5 uses
  %i.ag = zext nneg i32 %spec.store.select.i to i64
  call fastcc void @tcache_bin_flush_edatas_lookup(ptr noundef %0, ptr %i.aa, i64 noundef %i.ag, ptr noundef %5)
  %.not.i32 = icmp eq i32 %.0.i, %i.q
  br i1 %.not.i32, label %._crit_edge.thread, label %arena_get.exit.lr.ph

arena_get.exit.lr.ph:                             ; preds = %bb.b
  %i.ah = getelementptr i8, ptr %i.ad, i64 -736
  %i.ai = getelementptr [48 x i8], ptr %i.ah, i64 %i.s ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  br label %arena_get.exit

arena_get.exit:                                   ; preds = %arena_get.exit.lr.ph, %arena_decay_ticks.exit
  %.069.i34 = phi i8 [ 0, %arena_get.exit.lr.ph ], [ %.170.i, %arena_decay_ticks.exit ] ; 2 uses
  %.071.i33 = phi i32 [ %spec.store.select.i, %arena_get.exit.lr.ph ], [ %.1.i, %arena_decay_ticks.exit ] ; 2 uses
  %i.al = load ptr, ptr %5, align 16, !tbaa !52
  %.val12 = load i64, ptr %i.al, align 8, !tbaa !61 ; 2 uses
  %i.am = trunc i64 %.val12 to i32
  %i.an = and i32 %i.am, 4095                     ; 2 uses
  %i.ao = and i64 %.val12, 4095
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.ao
  %i.aq = load atomic ptr, ptr %i.ap acquire, align 8 ; 11 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 78952  ; 2 uses
  %.val14 = load i32, ptr %i.ar, align 8, !tbaa !136
  %i.as = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !6
  %i.at = icmp ult i32 %.val14, %i.as
  br i1 %i.at, label %malloc_mutex_lock.exit, label %bb.c

bb.c:                                             ; preds = %arena_get.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 10624
  %i.av = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.au) #15
  %.not.i18 = icmp eq i32 %i.av, 0
  br i1 %.not.i18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 10552
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.aw) #15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 10616
  store atomic i8 1, ptr %i.ax monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 10608 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !66
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !66
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 10600 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !67
  %.not.i.i = icmp eq ptr %i.bc, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.bb, align 8, !tbaa !67
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 10592 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !72
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !72
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.f, %bb.e, %arena_get.exit
  %i.bg = icmp ne ptr %i.ad, %i.aq
  %i.bh = trunc nuw i8 %.069.i34 to i1
  %or.cond.i = select i1 %i.bg, i1 true, i1 %i.bh
  br i1 %or.cond.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %malloc_mutex_lock.exit
  %i.bi = load i64, ptr %i.r, align 8, !tbaa !81
  %i.bj = atomicrmw add ptr %i.aj, i64 %i.bi monotonic, align 8 ; 0 uses
  %i.bk = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8 ; 0 uses
  store i64 0, ptr %i.r, align 8, !tbaa !81
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %malloc_mutex_lock.exit
  %.170.i = phi i8 [ %.069.i34, %malloc_mutex_lock.exit ], [ 1, %bb.g ] ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %.071.i33, i32 1)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.l
  %.val13 = load i32, ptr %i.ar, align 8, !tbaa !136
  %i.bl = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !6
  %i.bm = icmp ult i32 %.val13, %i.bl
  br i1 %i.bm, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.m, %bb.i
  br label %bb.r

bb.j:                                             ; preds = %bb.h, %bb.l
  %indvars.iv = phi i64 [ 0, %bb.h ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !52 ; 2 uses
  %.val10 = load i64, ptr %i.bo, align 8, !tbaa !61
  %i.bp = trunc i64 %.val10 to i32
  %i.bq = and i32 %i.bp, 4095
  %i.br = icmp eq i32 %i.bq, %i.an
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @duckdb_je_large_dalloc_prep_locked(ptr noundef %0, ptr noundef nonnull %i.bo) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aq, i64 10616
  store atomic i8 0, ptr %i.bs monotonic, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 10624
  %i.bu = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bt) #15 ; 0 uses
  br label %.preheader

bb.n:                                             ; preds = %bb.u
  br i1 %i.t, label %arena_decay_ticks.exit, label %bb.o, !prof !26

bb.o:                                             ; preds = %bb.n
  %.neg = sub i32 %.1.i, %.071.i33
  %i.bv = load i8, ptr %i.w, align 1, !tbaa !52
  %i.bw = load i32, ptr %i.u, align 4, !tbaa !95
  %i.bx = add i32 %i.bw, %.neg                    ; 2 uses
  store i32 %i.bx, ptr %i.u, align 4, !tbaa !95
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %bb.p, label %arena_decay_ticks.exit, !prof !26

bb.p:                                             ; preds = %bb.o
  %i.bz = icmp sgt i8 %i.bv, 0
  br i1 %i.bz, label %ticker_geom_ticks.exit, label %bb.q

ticker_geom_ticks.exit:                           ; preds = %bb.p
  store i32 0, ptr %i.u, align 4, !tbaa !95
  br label %arena_decay_ticks.exit

bb.q:                                             ; preds = %bb.p
  %i.ca = load i64, ptr %i.v, align 8, !tbaa !28
  %i.cb = mul i64 %i.ca, 6364136223846793005
  %i.cc = add i64 %i.cb, 1442695040888963407      ; 2 uses
  store i64 %i.cc, ptr %i.v, align 8, !tbaa !28
  %i.cd = lshr i64 %i.cc, 58
  %i.ce = load i32, ptr %i.x, align 4, !tbaa !96
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @duckdb_je_ticker_geom_table, i64 %i.cd
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !52
  %i.ci = zext i8 %i.ch to i64
  %i.cj = mul nsw i64 %i.ci, %i.cf
  %i.ck = udiv i64 %i.cj, 61
  %i.cl = trunc i64 %i.ck to i32
  store i32 %i.cl, ptr %i.u, align 8, !tbaa !95
  tail call void @duckdb_je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.aq, i1 noundef zeroext false, i1 noundef zeroext false) #15
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.o, %ticker_geom_ticks.exit, %bb.n, %bb.q
  %.not.i = icmp eq i32 %.1.i, 0
  br i1 %.not.i, label %._crit_edge, label %arena_get.exit

bb.r:                                             ; preds = %.preheader, %bb.u
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %bb.u ], [ 0, %.preheader ] ; 3 uses
  %.067.i30 = phi i32 [ %.1.i, %bb.u ], [ 0, %.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv36
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !52 ; 3 uses
  %.val11 = load i64, ptr %i.cn, align 8, !tbaa !61
  %i.co = trunc i64 %.val11 to i32
  %i.cp = and i32 %i.co, 4095
  %.not73.i = icmp eq i32 %i.cp, %i.an
  br i1 %.not73.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv36
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !57
  %i.cs = zext i32 %.067.i30 to i64               ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.cs
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !57
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cs
  store ptr %i.cn, ptr %i.cu, align 8, !tbaa !52
  %i.cv = add i32 %.067.i30, 1
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void @duckdb_je_large_dalloc_finish(ptr noundef %0, ptr noundef nonnull %i.cn) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.i = phi i32 [ %i.cv, %bb.s ], [ %.067.i30, %bb.t ] ; 4 uses
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count
  br i1 %exitcond41.not, label %bb.n, label %bb.r

._crit_edge:                                      ; preds = %arena_decay_ticks.exit
  %i.cw = trunc nuw i8 %.170.i to i1
  br i1 %i.cw, label %tcache_bin_flush_impl_large.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %i.cx = load i64, ptr %i.r, align 8, !tbaa !81
  %i.cy = getelementptr i8, ptr %i.ad, i64 -736
  %i.cz = getelementptr [48 x i8], ptr %i.cy, i64 %i.s ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = atomicrmw add ptr %i.da, i64 %i.cx monotonic, align 8 ; 0 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.dd = atomicrmw add ptr %i.dc, i64 1 monotonic, align 8 ; 0 uses
  store i64 0, ptr %i.r, align 8, !tbaa !81
  br label %tcache_bin_flush_impl_large.exit

tcache_bin_flush_impl_large.exit:                 ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.stackrestore.p0(ptr %savedstack)
  %i.de = add nuw nsw i32 %spec.store.select.i, %.0.i ; 2 uses
  %i.df = icmp samesign ult i32 %i.de, %i.q
  br i1 %i.df, label %bb.b, label %tcache_bin_flush_impl.exit

tcache_bin_flush_impl.exit:                       ; preds = %tcache_bin_flush_impl_large.exit
  %.val.i = load ptr, ptr %2, align 8, !tbaa !49  ; 3 uses
  %.val8.i = load i16, ptr %i.a, align 4, !tbaa !51
  %i.dg = ptrtoint ptr %.val.i to i64
  %i.dh = trunc i64 %i.dg to i16
  %i.di = sub i16 %.val8.i, %i.dh
  %i.dj = lshr i16 %i.di, 3
  %i.dk = zext nneg i16 %i.dj to i64
  %i.dl = sub nsw i64 %i.dk, %i.n
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.n
  %i.dn = shl nsw i64 %i.dl, 3
  %i.do = and i64 %i.dn, 34359738360
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dm, ptr align 8 %.val.i, i64 %i.do, i1 false)
  %i.dp = load ptr, ptr %2, align 8, !tbaa !49
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.n ; 2 uses
  store ptr %i.dq, ptr %2, align 8, !tbaa !49
  %.val3.i.i = load i16, ptr %i.a, align 4, !tbaa !51 ; 2 uses
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = trunc i64 %i.dr to i16                  ; 2 uses
  %i.dt = sub i16 %.val3.i.i, %i.ds
  %i.du = lshr i16 %i.dt, 3
  %i.dv = getelementptr i8, ptr %2, i64 16        ; 2 uses
  %.val4.i.i = load i16, ptr %i.dv, align 8, !tbaa !50
  %i.dw = sub i16 %.val3.i.i, %.val4.i.i
  %i.dx = lshr i16 %i.dw, 3
  %i.dy = icmp samesign ult i16 %i.du, %i.dx
  br i1 %i.dy, label %bb.v, label %cache_bin_finish_flush.exit

bb.v:                                             ; preds = %tcache_bin_flush_impl.exit
  store i16 %i.ds, ptr %i.dv, align 8, !tbaa !50
  br label %cache_bin_finish_flush.exit

cache_bin_finish_flush.exit:                      ; preds = %tcache_bin_flush_impl.exit, %bb.v
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_bin_flush_stashed(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 !guid !171 {
bb.a:
  %5 = alloca [16 x %struct.bin_remote_free_data_s], align 16 ; 4 uses
  %i.a = getelementptr i8, ptr %2, i64 20         ; 2 uses
  %.val24 = load i16, ptr %i.a, align 4, !tbaa !51 ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 22         ; 2 uses
  %.val27 = load i16, ptr %i.b, align 2, !tbaa !53 ; 2 uses
  %i.c = shl i16 %.val27, 3
  %.neg = sub i16 %i.c, %.val24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !172
  %i.f = add i16 %.neg, %i.e
  %i.g = lshr i16 %i.f, 3                         ; 3 uses
  %i.h = icmp eq i16 %i.g, 0
  br i1 %i.h, label %bb.bf, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.i = ptrtoint ptr %.val to i64
  %i.j = trunc i64 %i.i to i16
  %i.k = sub i16 %.val24, %i.j
  %i.l = zext nneg i16 %i.g to i32                ; 6 uses
  %i.m = zext i16 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m
  %i.o = zext i16 %.val27 to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.p ; 3 uses
  %i.r = zext nneg i16 %i.g to i64
  %i.s = zext i32 %3 to i64                       ; 7 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !28
  tail call void @duckdb_je_san_check_stashed_ptrs(ptr noundef %i.q, i64 noundef %i.r, i64 noundef %i.u) #15
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.w = icmp eq ptr %0, null                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.s
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_bin_offsets, i64 %i.s
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_binind_div_info, i64 %i.s
  %i.af = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %i.s
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  br i1 %4, label %.split178.us, label %.split178

.split178.us:                                     ; preds = %bb.b, %tcache_bin_flush_impl_small.exit.us
  %.0.i.us = phi i32 [ %i.lq, %tcache_bin_flush_impl_small.exit.us ], [ 0, %bb.b ] ; 4 uses
  %i.ah = sub nsw i32 %i.l, %.0.i.us
  %spec.store.select.i.us = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 256) ; 7 uses
  %i.ai = zext nneg i32 %.0.i.us to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ai ; 7 uses
  %savedstack.us = tail call ptr @llvm.stacksave.p0()
  %i.ak = load ptr, ptr %1, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !58 ; 2 uses
  %i.an = load i8, ptr %i.ac, align 1, !tbaa !52
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nuw nsw i32 %spec.store.select.i.us, 1
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %6 = alloca %union.emap_batch_lookup_result_u, i64 %i.aq, align 16 ; 8 uses
  %i.ar = zext nneg i32 %spec.store.select.i.us to i64 ; 2 uses
  call fastcc void @tcache_bin_flush_edatas_lookup(ptr noundef %0, ptr %i.aj, i64 noundef %i.ar, ptr noundef %6)
  %i.as = alloca ptr, i64 %i.aq, align 16         ; 3 uses
  %.not = icmp eq i32 %.0.i.us, %i.l
  br i1 %.not, label %._crit_edge177.us.thread, label %arena_get.exit.us

arena_get.exit.us:                                ; preds = %.split178.us, %arena_decay_ticks.exit23.us
  %.0160.i168.us = phi i8 [ %.2.i.us, %arena_decay_ticks.exit23.us ], [ 0, %.split178.us ] ; 3 uses
  %.0162.i167.us = phi i32 [ %.1163.i.lcssa.us, %arena_decay_ticks.exit23.us ], [ 0, %.split178.us ] ; 9 uses
  %.0166.us = phi i32 [ %.3.us, %arena_decay_ticks.exit23.us ], [ 0, %.split178.us ] ; 3 uses
  %.sroa.087.0165.us = phi ptr [ %.sroa.087.4.us, %arena_decay_ticks.exit23.us ], [ null, %.split178.us ] ; 3 uses
  %i.at = zext nneg i32 %.0162.i167.us to i64     ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !52 ; 2 uses
  %.val34.us = load i64, ptr %i.av, align 8, !tbaa !61 ; 2 uses
  %i.aw = and i64 %.val34.us, 4095
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.aw
  %i.ay = load atomic ptr, ptr %i.ax acquire, align 8 ; 7 uses
  %.val36.us = load i64, ptr %i.av, align 8, !tbaa !61
  %i.az = lshr i64 %.val36.us, 38                 ; 2 uses
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = and i32 %i.ba, 63                       ; 2 uses
  %i.bc = load i32, ptr %i.ad, align 4, !tbaa !6
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr @duckdb_je_bin_info_nbatched_sizes, align 4, !tbaa !6
  %i.bg = icmp ult i32 %3, %i.bf                  ; 3 uses
  %i.bh = and i64 %i.az, 63                       ; 2 uses
  %i.bi = getelementptr inbounds nuw [648 x i8], ptr %i.be, i64 %i.bh ; 4 uses
  %i.bj = getelementptr inbounds nuw [256 x i8], ptr %i.be, i64 %i.bh
  %.0.i50.us = select i1 %i.bg, ptr %i.bi, ptr %i.bj ; 26 uses
  %i.bk = add nuw nsw i32 %.0162.i167.us, 1       ; 3 uses
  %i.bl = icmp samesign ult i32 %i.bk, %spec.store.select.i.us
  br i1 %i.bl, label %.lr.ph.us.preheader, label %._crit_edge136.us

.lr.ph.us.preheader:                              ; preds = %arena_get.exit.us
  %i.bm = add nuw nsw i64 %i.at, 1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.e
  %indvars.iv192 = phi i64 [ %i.bm, %.lr.ph.us.preheader ], [ %indvars.iv.next193, %bb.e ] ; 3 uses
  %.1163.i135.us = phi i32 [ %i.bk, %.lr.ph.us.preheader ], [ %.2164.i.us, %bb.e ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv192 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.val33.us = load i64, ptr %i.bo, align 8, !tbaa !61 ; 2 uses
  %i.bp = xor i64 %.val33.us, %.val34.us
  %i.bq = and i64 %i.bp, 4095
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = ptrtoint ptr %i.bo to i64
  br i1 %i.br, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.us
  %i.bt = lshr i64 %.val33.us, 38
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = and i32 %i.bu, 63
  %i.bw = icmp eq i32 %i.bv, %i.bb
  br i1 %i.bw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bx = zext i32 %.1163.i135.us to i64          ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bx ; 2 uses
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.by, align 8, !tbaa !52
  store i64 %i.bs, ptr %i.by, align 8, !tbaa !52
  store ptr %.sroa.0.0.copyload.i.us, ptr %i.bn, align 8, !tbaa !52
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.bx ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !57
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv192 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !57
  store ptr %i.cc, ptr %i.bz, align 8, !tbaa !57
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !57
  %i.cd = add i32 %.1163.i135.us, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.us
  %.2164.i.us = phi i32 [ %i.cd, %bb.d ], [ %.1163.i135.us, %bb.c ], [ %.1163.i135.us, %.lr.ph.us ] ; 2 uses
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next193, %i.ar
  br i1 %exitcond195.not, label %._crit_edge136.us, label %.lr.ph.us

._crit_edge136.us:                                ; preds = %bb.e, %arena_get.exit.us
  %.1163.i.lcssa.us = phi i32 [ %i.bk, %arena_get.exit.us ], [ %.2164.i.us, %bb.e ] ; 7 uses
  %i.ce = icmp ne ptr %i.ay, %i.am                ; 2 uses
  %i.cf = icmp ne i32 %i.bb, %i.ao
  %.not178.i.us = select i1 %i.ce, i1 true, i1 %i.cf
  %i.cg = sub i32 %.1163.i.lcssa.us, %.0162.i167.us ; 4 uses
  %i.ch = zext i32 %i.cg to i64                   ; 4 uses
  %i.ci = load i64, ptr @duckdb_je_opt_bin_info_remote_free_max_batch, align 8, !tbaa !28
  %i.cj = icmp uge i64 %i.ci, %i.ch
  %or.cond.not.i.us = select i1 %i.cj, i1 %.not178.i.us, i1 false
  %i.ck = select i1 %or.cond.not.i.us, i1 %i.bg, i1 false ; 3 uses
  br i1 %i.ck, label %bb.f, label %.thread.us

bb.f:                                             ; preds = %._crit_edge136.us
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 72
  %i.cm = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.cl) #15
  %.not.us = icmp eq i32 %i.cm, 0
  br i1 %.not.us, label %bb.j, label %malloc_mutex_trylock.exit.us

malloc_mutex_trylock.exit.us:                     ; preds = %bb.f
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 256 ; 2 uses
  %i.co = tail call i64 @duckdb_je_batcher_push_begin(ptr noundef %0, ptr noundef nonnull %i.cn, i64 noundef %i.ch) #15 ; 2 uses
  %.not.i.not.us = icmp eq i64 %i.co, -1
  br i1 %.not.i.not.us, label %.thread.us, label %.preheader.us

bb.g:                                             ; preds = %bb.g, %.lr.ph139.us.new
  %indvars.iv196 = phi i64 [ 0, %.lr.ph139.us.new ], [ %indvars.iv.next197.1, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph139.us.new ], [ %niter.next.1, %bb.g ]
  %i.cp = trunc nuw i64 %indvars.iv196 to i32
  %i.cq = add i32 %.0162.i167.us, %i.cp
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !57
  %i.cu = getelementptr [16 x i8], ptr %i.lv, i64 %indvars.iv196 ; 2 uses
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !70
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.cr
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !52
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !71
  %indvars.iv.next197 = or disjoint i64 %indvars.iv196, 1 ; 2 uses
  %i.cy = trunc nuw i64 %indvars.iv.next197 to i32
  %i.cz = add i32 %.0162.i167.us, %i.cy
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !57
  %i.dd = getelementptr [16 x i8], ptr %i.lv, i64 %indvars.iv.next197 ; 2 uses
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !70
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.da
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !52
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !71
  %indvars.iv.next197.1 = add nuw nsw i64 %indvars.iv196, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge140.us.loopexit.unr-lcssa, label %bb.g

._crit_edge140.us.loopexit.unr-lcssa:             ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge140.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge140.us.loopexit.unr-lcssa, %.lr.ph139.us
  %indvars.iv196.epil.init = phi i64 [ 0, %.lr.ph139.us ], [ %indvars.iv.next197.1, %._crit_edge140.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod243 = trunc i32 %i.cg to i1
  tail call void @llvm.assume(i1 %lcmp.mod243)
  %i.dh = trunc nuw i64 %indvars.iv196.epil.init to i32
  %i.di = add i32 %.0162.i167.us, %i.dh
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !57
  %i.dm = getelementptr [16 x i8], ptr %i.lv, i64 %indvars.iv196.epil.init ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !70
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.dj
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !52
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !71
  br label %._crit_edge140.us

._crit_edge140.us:                                ; preds = %.epil.preheader, %._crit_edge140.us.loopexit.unr-lcssa, %.preheader.us
  tail call void @batcher_push_end(ptr noundef %0, ptr noundef nonnull %i.cn) #15
  br label %bb.af

.thread.us:                                       ; preds = %malloc_mutex_trylock.exit.us, %._crit_edge136.us
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 72
  %i.dr = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.dq) #15
  %.not.i52.us = icmp eq i32 %i.dr, 0
  br i1 %.not.i52.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread.us
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %.0.i50.us) #15
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 64
  store atomic i8 1, ptr %i.ds monotonic, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread.us
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 56 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !66
  %i.dv = add i64 %i.du, 1
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !66
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 48 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !67
  %.not.i.i53.us = icmp eq ptr %i.dx, %0
  br i1 %.not.i.i53.us, label %malloc_mutex_lock.exit.us, label %.split.us

.split.us:                                        ; preds = %bb.i
  store ptr %0, ptr %i.dw, align 8, !tbaa !67
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 40 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !72
  %i.ea = add i64 %i.dz, 1
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !72
  br i1 %i.ck, label %malloc_mutex_lock.exit.thread114.us.sink.split, label %malloc_mutex_lock.exit.thread114.us

malloc_mutex_lock.exit.us:                        ; preds = %bb.i
  br i1 %i.ck, label %malloc_mutex_lock.exit.thread114.us.sink.split, label %malloc_mutex_lock.exit.thread114.us

bb.j:                                             ; preds = %bb.f
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 56 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !66
  %i.ed = add i64 %i.ec, 1
  store i64 %i.ed, ptr %i.eb, align 8, !tbaa !66
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 48 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !67
  %.not.i.i51.us = icmp eq ptr %i.ef, %0
  br i1 %.not.i.i51.us, label %malloc_mutex_lock.exit.thread114.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %0, ptr %i.ee, align 8, !tbaa !67
  br label %malloc_mutex_lock.exit.thread114.us.sink.split

malloc_mutex_lock.exit.thread114.us.sink.split:   ; preds = %.split.us, %malloc_mutex_lock.exit.us, %bb.k
  %.sink240 = phi i64 [ 40, %bb.k ], [ 200, %malloc_mutex_lock.exit.us ], [ 200, %.split.us ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 %.sink240 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !28
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !28
  br label %malloc_mutex_lock.exit.thread114.us

malloc_mutex_lock.exit.thread114.us:              ; preds = %malloc_mutex_lock.exit.thread114.us.sink.split, %bb.j, %malloc_mutex_lock.exit.us, %.split.us
  %i.ej = trunc nuw i8 %.0160.i168.us to i1
  %or.cond5.i.us = select i1 %i.ce, i1 true, i1 %i.ej
  br i1 %or.cond5.i.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %malloc_mutex_lock.exit.thread114.us
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 152 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !80
  %i.em = add i64 %i.el, 1
  store i64 %i.em, ptr %i.ek, align 8, !tbaa !80
  %i.en = load i64, ptr %i.v, align 8, !tbaa !81
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 128 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !82
  %i.eq = add i64 %i.ep, %i.en
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !82
  store i64 0, ptr %i.v, align 8, !tbaa !81
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %malloc_mutex_lock.exit.thread114.us
  %.1.i.us = phi i8 [ %.0160.i168.us, %malloc_mutex_lock.exit.thread114.us ], [ 1, %bb.l ]
  %i.er = load i32, ptr %i.ae, align 4, !tbaa !6  ; 2 uses
  %i.es = icmp ult i32 %.0162.i167.us, %.1163.i.lcssa.us
  br i1 %i.es, label %.lr.ph146.us, label %._crit_edge147.us

bb.n:                                             ; preds = %.lr.ph146.us, %arena_dalloc_bin_locked_step.exit.us
  %indvars.iv201 = phi i64 [ %i.at, %.lr.ph146.us ], [ %indvars.iv.next202, %arena_dalloc_bin_locked_step.exit.us ] ; 3 uses
  %.1143.us = phi i32 [ %.0166.us, %.lr.ph146.us ], [ %.4.us, %arena_dalloc_bin_locked_step.exit.us ] ; 8 uses
  %.sroa.087.2142.us = phi ptr [ %.sroa.087.0165.us, %.lr.ph146.us ], [ %.sroa.087.5.us, %arena_dalloc_bin_locked_step.exit.us ] ; 7 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv201
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !57
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv201
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !52 ; 15 uses
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = getelementptr i8, ptr %i.ew, i64 8
  %.val38.us = load ptr, ptr %i.ey, align 8, !tbaa !83
  %i.ez = ptrtoint ptr %.val38.us to i64
  %i.fa = sub i64 %i.ex, %i.ez
  %i.fb = mul i64 %i.fa, %i.lx                    ; 2 uses
  %i.fc = lshr i64 %i.fb, 32
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.fe = lshr i64 %i.fb, 38
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fe ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !28
  %i.fh = and i64 %i.fc, 63
  %i.fi = shl nuw i64 1, %i.fh
  %i.fj = xor i64 %i.fi, %i.fg
  store i64 %i.fj, ptr %i.ff, align 8, !tbaa !28
  %i.fk = load i64, ptr %i.ew, align 8, !tbaa !61
  %i.fl = add i64 %i.fk, 268435456                ; 2 uses
  store i64 %i.fl, ptr %i.ew, align 8, !tbaa !61
  %i.fm = lshr i64 %i.fl, 28
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = and i32 %i.fn, 1023                     ; 2 uses
  %i.fp = load i32, ptr %i.ag, align 8, !tbaa !86
  %i.fq = icmp eq i32 %i.fo, %i.fp
  br i1 %i.fq, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fr = icmp eq i32 %i.fo, 1
  br i1 %i.fr, label %bb.p, label %arena_dalloc_bin_locked_step.exit.us

bb.p:                                             ; preds = %bb.o
end_hunk_1
begin_hunk_2_@duckdb_je_tcache_bin_flush_stashed:bb.a
  br label %arena_dalloc_bin_locked_step.exit.i.us

arena_dalloc_bin_locked_step.exit.i.us:           ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y
  %.sroa.087.7.us = phi ptr [ %.sroa.087.6156.us, %bb.ae ], [ %.sroa.087.6156.us, %bb.y ], [ %.sroa.087.6156.us, %bb.z ], [ %.sroa.087.6156.us, %bb.aa ], [ %.pre.i54.us, %bb.ad ], [ %i.gt, %bb.ac ] ; 2 uses
  %.6.us = phi i32 [ %i.ig, %bb.ae ], [ %.5157.us, %bb.y ], [ %.5157.us, %bb.z ], [ %.5157.us, %bb.aa ], [ %.5157.us, %bb.ad ], [ %.5157.us, %bb.ac ] ; 2 uses
  %i.ih = add nuw i64 %.0.i22158.us, 1            ; 2 uses
  %exitcond206.not = icmp eq i64 %i.ih, %i.go
  br i1 %exitcond206.not, label %._crit_edge161.us.loopexit, label %bb.x

._crit_edge161.us.loopexit:                       ; preds = %arena_dalloc_bin_locked_step.exit.i.us
  %i.ii = add i64 %i.go, %.sroa.7.0.lcssa.us
  br label %._crit_edge161.us

._crit_edge161.us:                                ; preds = %._crit_edge154.us.thread, %._crit_edge161.us.loopexit
  %.sroa.7.2.lcssa.us = phi i64 [ %.sroa.7.0.lcssa.us, %._crit_edge154.us.thread ], [ %i.ii, %._crit_edge161.us.loopexit ]
  %.sroa.087.6.lcssa.us = phi ptr [ %.sroa.087.2.lcssa.us, %._crit_edge154.us.thread ], [ %.sroa.087.7.us, %._crit_edge161.us.loopexit ]
  %.5.lcssa.us = phi i32 [ %.1.lcssa.us, %._crit_edge154.us.thread ], [ %.6.us, %._crit_edge161.us.loopexit ]
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 192 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !89
  %i.il = add i64 %i.ik, 1
  store i64 %i.il, ptr %i.ij, align 8, !tbaa !89
  %i.im = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 208 ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !90
  %i.io = add i64 %i.in, %i.gq
  store i64 %i.io, ptr %i.im, align 8, !tbaa !90
  %i.ip = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 216 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !91
  %i.ir = add i64 %i.iq, %i.go
  store i64 %i.ir, ptr %i.ip, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %arena_bin_flush_batch_impl.exit.us

arena_bin_flush_batch_impl.exit.us:               ; preds = %._crit_edge161.us, %bb.v, %._crit_edge147.us
  %.sroa.7.1.us = phi i64 [ %.sroa.7.0.lcssa.us, %._crit_edge147.us ], [ %.sroa.7.2.lcssa.us, %._crit_edge161.us ], [ %.sroa.7.0.lcssa.us, %bb.v ] ; 2 uses
  %.sroa.087.3.us = phi ptr [ %.sroa.087.2.lcssa.us, %._crit_edge147.us ], [ %.sroa.087.6.lcssa.us, %._crit_edge161.us ], [ %.sroa.087.2.lcssa.us, %bb.v ]
  %.2.us = phi i32 [ %.1.lcssa.us, %._crit_edge147.us ], [ %.5.lcssa.us, %._crit_edge161.us ], [ %.1.lcssa.us, %bb.v ]
  %i.is = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 120 ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !92
  %i.iu = add i64 %i.it, %.sroa.7.1.us
  store i64 %i.iu, ptr %i.is, align 8, !tbaa !92
  %i.iv = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 136 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !93
  %i.ix = sub i64 %i.iw, %.sroa.7.1.us
  store i64 %i.ix, ptr %i.iv, align 8, !tbaa !93
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 64
  store atomic i8 0, ptr %i.iy monotonic, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 72
  %i.ja = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.iz) #15 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %arena_bin_flush_batch_impl.exit.us, %._crit_edge140.us
  %.sroa.087.4.us = phi ptr [ %.sroa.087.0165.us, %._crit_edge140.us ], [ %.sroa.087.3.us, %arena_bin_flush_batch_impl.exit.us ] ; 3 uses
  %.3.us = phi i32 [ %.0166.us, %._crit_edge140.us ], [ %.2.us, %arena_bin_flush_batch_impl.exit.us ] ; 3 uses
  %.2.i.us = phi i8 [ %.0160.i168.us, %._crit_edge140.us ], [ %.1.i.us, %arena_bin_flush_batch_impl.exit.us ] ; 2 uses
  br i1 %i.w, label %arena_decay_ticks.exit23.us, label %bb.ag, !prof !26

bb.ag:                                            ; preds = %bb.af
  %i.jb = load i8, ptr %i.z, align 1, !tbaa !52
  %i.jc = load i32, ptr %i.x, align 4, !tbaa !95
  %i.jd = sub nsw i32 %i.jc, %i.cg                ; 2 uses
  store i32 %i.jd, ptr %i.x, align 4, !tbaa !95
  %i.je = icmp slt i32 %i.jd, 0
  br i1 %i.je, label %bb.ah, label %arena_decay_ticks.exit23.us, !prof !26

bb.ah:                                            ; preds = %bb.ag
  %i.jf = icmp sgt i8 %i.jb, 0
  br i1 %i.jf, label %ticker_geom_ticks.exit.us, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jg = load i64, ptr %i.y, align 8, !tbaa !28
  %i.jh = mul i64 %i.jg, 6364136223846793005
  %i.ji = add i64 %i.jh, 1442695040888963407      ; 2 uses
  store i64 %i.ji, ptr %i.y, align 8, !tbaa !28
  %i.jj = lshr i64 %i.ji, 58
  %i.jk = load i32, ptr %i.aa, align 4, !tbaa !96
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr @duckdb_je_ticker_geom_table, i64 %i.jj
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !52
  %i.jo = zext i8 %i.jn to i64
  %i.jp = mul nsw i64 %i.jo, %i.jl
  %i.jq = udiv i64 %i.jp, 61
  %i.jr = trunc i64 %i.jq to i32
  store i32 %i.jr, ptr %i.x, align 8, !tbaa !95
  tail call void @duckdb_je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.ay, i1 noundef zeroext false, i1 noundef zeroext false) #15
  br label %arena_decay_ticks.exit23.us

ticker_geom_ticks.exit.us:                        ; preds = %bb.ah
  store i32 0, ptr %i.x, align 4, !tbaa !95
  br label %arena_decay_ticks.exit23.us

arena_decay_ticks.exit23.us:                      ; preds = %ticker_geom_ticks.exit.us, %bb.ai, %bb.ag, %bb.af
  %i.js = icmp ult i32 %.1163.i.lcssa.us, %spec.store.select.i.us
  br i1 %i.js, label %arena_get.exit.us, label %.preheader127.us

.lr.ph174.us:                                     ; preds = %.lr.ph174.us.preheader, %.lr.ph174.us
  %indvars.iv207 = phi i64 [ 0, %.lr.ph174.us.preheader ], [ %indvars.iv.next208, %.lr.ph174.us ] ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv207
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !87 ; 2 uses
  %.val43.us = load i64, ptr %i.ju, align 8, !tbaa !61
  %i.jv = and i64 %.val43.us, 4095
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.jv
  %i.jx = load atomic ptr, ptr %i.jw monotonic, align 8
  tail call void @duckdb_je_arena_slab_dalloc(ptr noundef %0, ptr noundef %i.jx, ptr noundef nonnull %i.ju) #15
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; 2 uses
  %exitcond211.not = icmp eq i64 %indvars.iv.next208, %wide.trip.count210
  br i1 %exitcond211.not, label %.preheader126.us, label %.lr.ph174.us

.lr.ph176.us:                                     ; preds = %.preheader126.us, %edata_list_active_remove.exit.us
  %.sroa.087.1175.us = phi ptr [ %.sroa.087.10.us, %edata_list_active_remove.exit.us ], [ %.sroa.087.4.us, %.preheader126.us ] ; 6 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.087.1175.us, i64 40 ; 3 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !52 ; 3 uses
  %i.ka = icmp eq ptr %i.jz, %.sroa.087.1175.us
  br i1 %i.ka, label %edata_list_active_remove.exit.us, label %.thread.i.us

.thread.i.us:                                     ; preds = %.lr.ph176.us
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !52
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.087.1175.us, i64 48 ; 4 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !52
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 40
  store ptr %i.kc, ptr %i.kf, align 8, !tbaa !52
  %i.kg = load ptr, ptr %i.kd, align 8, !tbaa !52 ; 2 uses
  %i.kh = load ptr, ptr %i.jy, align 8, !tbaa !52
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 48
  store ptr %i.kg, ptr %i.ki, align 8, !tbaa !52
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 40
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !52
  store ptr %i.kk, ptr %i.kd, align 8, !tbaa !52
  %i.kl = load ptr, ptr %i.jy, align 8, !tbaa !52 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 48
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !52
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 40
  store ptr %i.kl, ptr %i.ko, align 8, !tbaa !52
  %i.kp = load ptr, ptr %i.kd, align 8, !tbaa !52
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 40
  store ptr %.sroa.087.1175.us, ptr %i.kq, align 8, !tbaa !52
  br label %edata_list_active_remove.exit.us

edata_list_active_remove.exit.us:                 ; preds = %.thread.i.us, %.lr.ph176.us
  %.sroa.087.10.us = phi ptr [ %i.jz, %.thread.i.us ], [ null, %.lr.ph176.us ] ; 2 uses
  %.val44.us = load i64, ptr %.sroa.087.1175.us, align 8, !tbaa !61
  %i.kr = and i64 %.val44.us, 4095
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.kr
  %i.kt = load atomic ptr, ptr %i.ks monotonic, align 8
  tail call void @duckdb_je_arena_slab_dalloc(ptr noundef %0, ptr noundef %i.kt, ptr noundef nonnull %.sroa.087.1175.us) #15
  %i.ku = icmp eq ptr %.sroa.087.10.us, null
  br i1 %i.ku, label %._crit_edge177.us, label %.lr.ph176.us

._crit_edge177.us:                                ; preds = %edata_list_active_remove.exit.us, %.preheader126.us
  br i1 %i.lt, label %tcache_bin_flush_impl_small.exit.us, label %._crit_edge177.us.thread

._crit_edge177.us.thread:                         ; preds = %.split178.us, %._crit_edge177.us
  %i.kv = tail call ptr @duckdb_je_arena_bin_choose(ptr noundef %0, ptr noundef %i.am, i32 noundef %3, ptr noundef null) #15 ; 9 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 72 ; 2 uses
  %i.kx = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.kw) #15
  %.not.i57.us = icmp eq i32 %i.kx, 0
  br i1 %.not.i57.us, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge177.us.thread
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.kv) #15
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 64
  store atomic i8 1, ptr %i.ky monotonic, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge177.us.thread
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 56 ; 2 uses
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !66
  %i.lb = add i64 %i.la, 1
  store i64 %i.lb, ptr %i.kz, align 8, !tbaa !66
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kv, i64 48 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !67
  %.not.i.i58.us = icmp eq ptr %i.ld, %0
  br i1 %.not.i.i58.us, label %malloc_mutex_lock.exit59.us, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %0, ptr %i.lc, align 8, !tbaa !67
  %i.le = getelementptr inbounds nuw i8, ptr %i.kv, i64 40 ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !72
  %i.lg = add i64 %i.lf, 1
  store i64 %i.lg, ptr %i.le, align 8, !tbaa !72
  br label %malloc_mutex_lock.exit59.us

malloc_mutex_lock.exit59.us:                      ; preds = %bb.al, %bb.ak
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kv, i64 152 ; 2 uses
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !80
  %i.lj = add i64 %i.li, 1
  store i64 %i.lj, ptr %i.lh, align 8, !tbaa !80
  %i.lk = load i64, ptr %i.v, align 8, !tbaa !81
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kv, i64 128 ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !82
  %i.ln = add i64 %i.lm, %i.lk
  store i64 %i.ln, ptr %i.ll, align 8, !tbaa !82
  store i64 0, ptr %i.v, align 8, !tbaa !81
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kv, i64 64
  store atomic i8 0, ptr %i.lo monotonic, align 8
  %i.lp = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.kw) #15 ; 0 uses
  br label %tcache_bin_flush_impl_small.exit.us

tcache_bin_flush_impl_small.exit.us:              ; preds = %malloc_mutex_lock.exit59.us, %._crit_edge177.us
  call void @llvm.stackrestore.p0(ptr %savedstack.us)
  %i.lq = add nuw nsw i32 %spec.store.select.i.us, %.0.i.us ; 2 uses
  %i.lr = icmp samesign ult i32 %i.lq, %i.l
  br i1 %i.lr, label %.split178.us, label %tcache_bin_flush_impl.exit

.preheader.us:                                    ; preds = %malloc_mutex_trylock.exit.us
  %.not179 = icmp eq i32 %.1163.i.lcssa.us, %.0162.i167.us
  br i1 %.not179, label %._crit_edge140.us, label %.lr.ph139.us

.preheader126.us:                                 ; preds = %.lr.ph174.us, %.preheader127.us
  %i.ls = icmp eq ptr %.sroa.087.4.us, null
  br i1 %i.ls, label %._crit_edge177.us, label %.lr.ph176.us

.preheader127.us:                                 ; preds = %arena_decay_ticks.exit23.us
  %i.lt = trunc nuw i8 %.2.i.us to i1
  %.not182 = icmp eq i32 %.3.us, 0
  br i1 %.not182, label %.preheader126.us, label %.lr.ph174.us.preheader

.lr.ph174.us.preheader:                           ; preds = %.preheader127.us
  %wide.trip.count210 = zext i32 %.3.us to i64
  br label %.lr.ph174.us

.lr.ph139.us:                                     ; preds = %.preheader.us
  %i.lu = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 392
  %i.lv = getelementptr [16 x i8], ptr %i.lu, i64 %i.co ; 3 uses
  %xtraiter = and i64 %i.ch, 1
  %i.lw = icmp eq i32 %i.cg, 1
  br i1 %i.lw, label %.epil.preheader, label %.lr.ph139.us.new

.lr.ph139.us.new:                                 ; preds = %.lr.ph139.us
  %unroll_iter = and i64 %i.ch, 4294967294
  br label %bb.g

.lr.ph146.us:                                     ; preds = %bb.m
  %i.lx = zext i32 %i.er to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 224
  br label %bb.n

.lr.ph160.us:                                     ; preds = %bb.w
  %i.lz = getelementptr inbounds nuw i8, ptr %i.bi, i64 392
  %i.ma = shl nuw i64 %i.go, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 8 %i.lz, i64 %i.ma, i1 false)
  tail call void @batcher_pop_end(ptr noundef %0, ptr noundef nonnull %i.gn) #15
  %i.mb = zext i32 %i.er to i64
  %i.mc = getelementptr inbounds nuw i8, ptr %i.bi, i64 224
  br label %bb.x

.split178:                                        ; preds = %bb.b, %tcache_bin_flush_impl_large.exit
  %.0.i = phi i32 [ %i.pj, %tcache_bin_flush_impl_large.exit ], [ 0, %bb.b ] ; 4 uses
  %i.md = sub nsw i32 %i.l, %.0.i
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.md, i32 256) ; 4 uses
  %i.me = zext nneg i32 %.0.i to i64
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.me ; 3 uses
  %savedstack20 = tail call ptr @llvm.stacksave.p0()
  %i.mg = load ptr, ptr %1, align 8, !tbaa !56
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 40
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !58 ; 3 uses
  %i.mj = add nuw nsw i32 %spec.store.select.i, 1
  %i.mk = zext nneg i32 %i.mj to i64
  %7 = alloca %union.emap_batch_lookup_result_u, i64 %i.mk, align 16 ; 5 uses
  %i.ml = zext nneg i32 %spec.store.select.i to i64
  call fastcc void @tcache_bin_flush_edatas_lookup(ptr noundef %0, ptr %i.mf, i64 noundef %i.ml, ptr noundef %7)
  %.not.i17131 = icmp eq i32 %.0.i, %i.l
  br i1 %.not.i17131, label %._crit_edge.thread, label %arena_get.exit61.lr.ph

arena_get.exit61.lr.ph:                           ; preds = %.split178
  %i.mm = getelementptr i8, ptr %i.mi, i64 -736
  %i.mn = getelementptr [48 x i8], ptr %i.mm, i64 %i.s ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 32
  br label %arena_get.exit61

arena_get.exit61:                                 ; preds = %arena_get.exit61.lr.ph, %arena_decay_ticks.exit
  %.069.i133 = phi i8 [ 0, %arena_get.exit61.lr.ph ], [ %.170.i, %arena_decay_ticks.exit ] ; 2 uses
  %.071.i132 = phi i32 [ %spec.store.select.i, %arena_get.exit61.lr.ph ], [ %.1.i19, %arena_decay_ticks.exit ] ; 2 uses
  %i.mq = load ptr, ptr %7, align 16, !tbaa !52
  %.val32 = load i64, ptr %i.mq, align 8, !tbaa !61 ; 2 uses
  %i.mr = trunc i64 %.val32 to i32
  %i.ms = and i32 %i.mr, 4095                     ; 2 uses
  %i.mt = and i64 %.val32, 4095
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.mt
  %i.mv = load atomic ptr, ptr %i.mu acquire, align 8 ; 11 uses
  %i.mw = getelementptr i8, ptr %i.mv, i64 78952  ; 2 uses
  %.val48 = load i32, ptr %i.mw, align 8, !tbaa !136
  %i.mx = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !6
  %i.my = icmp ult i32 %.val48, %i.mx
  br i1 %i.my, label %malloc_mutex_lock.exit64, label %bb.am

bb.am:                                            ; preds = %arena_get.exit61
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 10624
  %i.na = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.mz) #15
  %.not.i62 = icmp eq i32 %i.na, 0
  br i1 %.not.i62, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mv, i64 10552
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.nb) #15
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mv, i64 10616
  store atomic i8 1, ptr %i.nc monotonic, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mv, i64 10608 ; 2 uses
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !66
  %i.nf = add i64 %i.ne, 1
  store i64 %i.nf, ptr %i.nd, align 8, !tbaa !66
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mv, i64 10600 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !67
  %.not.i.i63 = icmp eq ptr %i.nh, %0
  br i1 %.not.i.i63, label %malloc_mutex_lock.exit64, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store ptr %0, ptr %i.ng, align 8, !tbaa !67
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mv, i64 10592 ; 2 uses
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !72
  %i.nk = add i64 %i.nj, 1
  store i64 %i.nk, ptr %i.ni, align 8, !tbaa !72
  br label %malloc_mutex_lock.exit64

malloc_mutex_lock.exit64:                         ; preds = %bb.ap, %bb.ao, %arena_get.exit61
  %i.nl = icmp ne ptr %i.mi, %i.mv
  %i.nm = trunc nuw i8 %.069.i133 to i1
  %or.cond.i = select i1 %i.nl, i1 true, i1 %i.nm
  br i1 %or.cond.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %malloc_mutex_lock.exit64
  %i.nn = load i64, ptr %i.v, align 8, !tbaa !81
  %i.no = atomicrmw add ptr %i.mo, i64 %i.nn monotonic, align 8 ; 0 uses
  %i.np = atomicrmw add ptr %i.mp, i64 1 monotonic, align 8 ; 0 uses
  store i64 0, ptr %i.v, align 8, !tbaa !81
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %malloc_mutex_lock.exit64
  %.170.i = phi i8 [ %.069.i133, %malloc_mutex_lock.exit64 ], [ 1, %bb.aq ] ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %.071.i132, i32 1)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  br label %bb.at

bb.as:                                            ; preds = %bb.av
  %.val47 = load i32, ptr %i.mw, align 8, !tbaa !136
  %i.nq = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !6
  %i.nr = icmp ult i32 %.val47, %i.nq
  br i1 %i.nr, label %.preheader, label %bb.aw

.preheader:                                       ; preds = %bb.aw, %bb.as
  br label %bb.bb

bb.at:                                            ; preds = %bb.ar, %bb.av
  %indvars.iv = phi i64 [ 0, %bb.ar ], [ %indvars.iv.next, %bb.av ] ; 2 uses
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !52 ; 2 uses
  %.val30 = load i64, ptr %i.nt, align 8, !tbaa !61
  %i.nu = trunc i64 %.val30 to i32
  %i.nv = and i32 %i.nu, 4095
  %i.nw = icmp eq i32 %i.nv, %i.ms
  br i1 %i.nw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @duckdb_je_large_dalloc_prep_locked(ptr noundef %0, ptr noundef nonnull %i.nt) #15
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.as, label %bb.at

bb.aw:                                            ; preds = %bb.as
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mv, i64 10616
  store atomic i8 0, ptr %i.nx monotonic, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mv, i64 10624
  %i.nz = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ny) #15 ; 0 uses
  br label %.preheader

bb.ax:                                            ; preds = %bb.be
  br i1 %i.w, label %arena_decay_ticks.exit, label %bb.ay, !prof !26

bb.ay:                                            ; preds = %bb.ax
  %.neg125 = sub i32 %.1.i19, %.071.i132
  %i.oa = load i8, ptr %i.z, align 1, !tbaa !52
  %i.ob = load i32, ptr %i.x, align 4, !tbaa !95
  %i.oc = add i32 %i.ob, %.neg125                 ; 2 uses
  store i32 %i.oc, ptr %i.x, align 4, !tbaa !95
  %i.od = icmp slt i32 %i.oc, 0
  br i1 %i.od, label %bb.az, label %arena_decay_ticks.exit, !prof !26

bb.az:                                            ; preds = %bb.ay
  %i.oe = icmp sgt i8 %i.oa, 0
  br i1 %i.oe, label %ticker_geom_ticks.exit69, label %bb.ba

ticker_geom_ticks.exit69:                         ; preds = %bb.az
  store i32 0, ptr %i.x, align 4, !tbaa !95
  br label %arena_decay_ticks.exit

bb.ba:                                            ; preds = %bb.az
  %i.of = load i64, ptr %i.y, align 8, !tbaa !28
  %i.og = mul i64 %i.of, 6364136223846793005
  %i.oh = add i64 %i.og, 1442695040888963407      ; 2 uses
  store i64 %i.oh, ptr %i.y, align 8, !tbaa !28
  %i.oi = lshr i64 %i.oh, 58
  %i.oj = load i32, ptr %i.aa, align 4, !tbaa !96
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw i8, ptr @duckdb_je_ticker_geom_table, i64 %i.oi
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !52
  %i.on = zext i8 %i.om to i64
  %i.oo = mul nsw i64 %i.on, %i.ok
  %i.op = udiv i64 %i.oo, 61
  %i.oq = trunc i64 %i.op to i32
  store i32 %i.oq, ptr %i.x, align 8, !tbaa !95
  tail call void @duckdb_je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.mv, i1 noundef zeroext false, i1 noundef zeroext false) #15
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.ay, %ticker_geom_ticks.exit69, %bb.ax, %bb.ba
  %.not.i17 = icmp eq i32 %.1.i19, 0
  br i1 %.not.i17, label %._crit_edge, label %arena_get.exit61

bb.bb:                                            ; preds = %.preheader, %bb.be
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %bb.be ], [ 0, %.preheader ] ; 3 uses
  %.067.i129 = phi i32 [ %.1.i19, %bb.be ], [ 0, %.preheader ] ; 3 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv186
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !52 ; 3 uses
  %.val31 = load i64, ptr %i.os, align 8, !tbaa !61
  %i.ot = trunc i64 %.val31 to i32
  %i.ou = and i32 %i.ot, 4095
  %.not73.i = icmp eq i32 %i.ou, %i.ms
  br i1 %.not73.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv186
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !57
  %i.ox = zext i32 %.067.i129 to i64              ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %i.ox
  store ptr %i.ow, ptr %i.oy, align 8, !tbaa !57
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ox
  store ptr %i.os, ptr %i.oz, align 8, !tbaa !52
  %i.pa = add i32 %.067.i129, 1
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  tail call void @duckdb_je_large_dalloc_finish(ptr noundef %0, ptr noundef nonnull %i.os) #15
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.1.i19 = phi i32 [ %i.pa, %bb.bc ], [ %.067.i129, %bb.bd ] ; 4 uses
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond191.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count
  br i1 %exitcond191.not, label %bb.ax, label %bb.bb

._crit_edge:                                      ; preds = %arena_decay_ticks.exit
  %i.pb = trunc nuw i8 %.170.i to i1
  br i1 %i.pb, label %tcache_bin_flush_impl_large.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.split178, %._crit_edge
  %i.pc = load i64, ptr %i.v, align 8, !tbaa !81
  %i.pd = getelementptr i8, ptr %i.mi, i64 -736
  %i.pe = getelementptr [48 x i8], ptr %i.pd, i64 %i.s ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pg = atomicrmw add ptr %i.pf, i64 %i.pc monotonic, align 8 ; 0 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 32
  %i.pi = atomicrmw add ptr %i.ph, i64 1 monotonic, align 8 ; 0 uses
  store i64 0, ptr %i.v, align 8, !tbaa !81
  br label %tcache_bin_flush_impl_large.exit

tcache_bin_flush_impl_large.exit:                 ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.stackrestore.p0(ptr %savedstack20)
  %i.pj = add nuw nsw i32 %spec.store.select.i, %.0.i ; 2 uses
  %i.pk = icmp samesign ult i32 %i.pj, %i.l
  br i1 %i.pk, label %.split178, label %tcache_bin_flush_impl.exit

tcache_bin_flush_impl.exit:                       ; preds = %tcache_bin_flush_impl_large.exit, %tcache_bin_flush_impl_small.exit.us
  %.val.i.i70 = load i16, ptr %i.b, align 2, !tbaa !53
  %.val3.i.i71 = load ptr, ptr %2, align 8, !tbaa !49 ; 2 uses
  %.val4.i.i72 = load i16, ptr %i.a, align 4, !tbaa !51
  %i.pl = ptrtoint ptr %.val3.i.i71 to i64
  %i.pm = trunc i64 %i.pl to i16
  %i.pn = sub i16 %.val4.i.i72, %i.pm
  %i.po = zext i16 %i.pn to i64
  %i.pp = getelementptr inbounds nuw i8, ptr %.val3.i.i71, i64 %i.po
  %i.pq = zext i16 %.val.i.i70 to i64
  %i.pr = sub nsw i64 0, %i.pq
  %i.ps = getelementptr inbounds [8 x i8], ptr %i.pp, i64 %i.pr
  %i.pt = ptrtoint ptr %i.ps to i64
  %i.pu = trunc i64 %i.pt to i16
  store i16 %i.pu, ptr %i.d, align 2, !tbaa !172
  br label %bb.bf

bb.bf:                                            ; preds = %bb.a, %tcache_bin_flush_impl.exit
  ret void
}

declare void @duckdb_je_san_check_stashed_ptrs(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @duckdb_je_tcache_bin_ncached_max_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #5 !guid !173 {
bb.a:
  %i.a = icmp ugt i64 %1, 8388608                 ; 2 uses
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !30, !range !31, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ult i64 %1, 4097
  br i1 %i.d, label %bb.d, label %bb.e, !prof !137

bb.d:                                             ; preds = %bb.c
  %i.e = add nuw nsw i64 %1, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !52
  %i.i = zext i8 %i.h to i32
  br label %sz_size2index.exit

bb.e:                                             ; preds = %bb.c
  %i.j = tail call fastcc i32 @sz_size2index_compute(i64 noundef %1)
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.l = zext nneg i32 %.0.i to i64
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %.val = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.n = icmp eq ptr %.val, @duckdb_je_disabled_bin
  br i1 %i.n, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %sz_size2index.exit
  %i.o = getelementptr i8, ptr %i.m, i64 22
  %.val15 = load i16, ptr %i.o, align 2, !tbaa !53
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %sz_size2index.exit, %bb.b
  %.sink = phi i16 [ 0, %bb.b ], [ %.val15, %bb.f ], [ 0, %sz_size2index.exit ]
  store i16 %.sink, ptr %2, align 2, !tbaa !174
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_arena_associate(ptr noundef %0, ptr noundef initializes((40, 48)) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !guid !175 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %3, ptr %i.a, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 10496 ; 2 uses
  %i.c = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.b) #15
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 10424
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.d) #15
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 10488
  store atomic i8 1, ptr %i.e monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 10480 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !66
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 10472 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67
  %.not.i.i = icmp eq ptr %i.j, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.i, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 10464 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !72
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !72
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  store ptr %1, ptr %1, align 8, !tbaa !138
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr %1, ptr %i.n, align 8, !tbaa !139
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 10408 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !140  ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !139
  store ptr %i.s, ptr %1, align 8, !tbaa !138
  store ptr %1, ptr %i.r, align 8, !tbaa !139
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !139
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !138  ; 2 uses
  store ptr %i.u, ptr %i.n, align 8, !tbaa !139
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !139
  store ptr %i.p, ptr %i.v, align 8, !tbaa !138
  store ptr %1, ptr %i.u, align 8, !tbaa !138
  %.pre = load ptr, ptr %1, align 8, !tbaa !138
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %malloc_mutex_lock.exit
  %i.w = phi ptr [ %.pre, %bb.e ], [ %1, %malloc_mutex_lock.exit ]
  store ptr %i.w, ptr %i.o, align 8, !tbaa !140
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.x, ptr %i.x, align 8, !tbaa !141
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !142
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !176
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 10416 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !143 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !142
  store ptr %i.af, ptr %i.x, align 8, !tbaa !141
  store ptr %i.x, ptr %i.ae, align 8, !tbaa !142
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !144
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !141 ; 2 uses
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !144
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !142
  store ptr %i.ac, ptr %i.ai, align 8, !tbaa !141
  store ptr %i.x, ptr %i.ah, align 8, !tbaa !141
  %.pre39 = load ptr, ptr %i.x, align 8, !tbaa !145
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = phi ptr [ %.pre39, %bb.g ], [ %i.x, %bb.f ]
  store ptr %i.aj, ptr %i.ab, align 16, !tbaa !143
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 10488
  store atomic i8 0, ptr %i.ak monotonic, align 8
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #15 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_arena_reassociate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !guid !177 {
bb.a:
  tail call fastcc void @tcache_arena_dissociate(ptr noundef %0, ptr noundef %1)
  tail call void @duckdb_je_tcache_arena_associate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tcache_arena_dissociate(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !guid !178 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 10496 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.c) #15
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 10424
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.e) #15
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 10488
  store atomic i8 1, ptr %i.f monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 10480 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !66
  %i.i = add i64 %i.h, 1
end_hunk_2
