inline.NumInlined: 376
inline.NumDeleted: 126
begin_hunk_0_@duckdb_je_arena_malloc_hard:bb.a

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !170  ; 2 uses
  %.not30.i.i = icmp eq ptr %i.r, null
  br i1 %.not30.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not31.i.i = icmp eq ptr %i.r, %i.l
  br i1 %.not31.i.i, label %atomic_load_zu.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @duckdb_je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef %i.l) #18
  br label %atomic_load_zu.exit

bb.k:                                             ; preds = %bb.h
  tail call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef %i.l) #18
  br label %atomic_load_zu.exit

atomic_load_zu.exit:                              ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.c
  %.011.i = phi ptr [ %i.d, %bb.c ], [ %i.i, %bb.e ], [ %i.l, %bb.k ], [ %i.k, %bb.f ], [ %i.l, %bb.g ], [ %i.l, %bb.i ], [ %i.l, %bb.j ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i, i64 69328
  %i.t = load atomic i64, ptr %i.s monotonic, align 8
  %.not14.i = icmp ult i64 %2, %i.t
  br i1 %.not14.i, label %.thread, label %bb.l, !prof !119

bb.l:                                             ; preds = %atomic_load_zu.exit
  %i.u = getelementptr i8, ptr %.011.i, i64 78952
  %.011.i.val = load i32, ptr %i.u, align 8, !tbaa !115
  %i.v = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  %i.w = icmp ult i32 %.011.i.val, %i.v
  br i1 %i.w, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @duckdb_je_arena_choose_huge(ptr noundef nonnull %0)
  br label %arena_choose_maybe_huge.exit

arena_choose_maybe_huge.exit:                     ; preds = %bb.m, %bb.a
  %.014 = phi ptr [ %1, %bb.a ], [ %i.x, %bb.m ]  ; 4 uses
  %i.y = icmp eq ptr %.014, null
  br i1 %i.y, label %arena_malloc_small.exit, label %bb.n, !prof !174

bb.n:                                             ; preds = %arena_choose_maybe_huge.exit
  br i1 %5, label %bb.o, label %bb.ak, !prof !119

.thread:                                          ; preds = %atomic_load_zu.exit, %bb.l, %bb.b
  %.014.ph = phi ptr [ %.011.i, %atomic_load_zu.exit ], [ %.011.i, %bb.l ], [ %1, %bb.b ] ; 2 uses
  br i1 %5, label %.thread24, label %bb.ak, !prof !119

.thread24:                                        ; preds = %.thread
  %i.z = zext i32 %3 to i64                       ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !10
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = zext i32 %3 to i64                      ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !10 ; 2 uses
  br i1 %i.b, label %duckdb_je_arena_bin_choose.exit.i, label %bb.p

bb.p:                                             ; preds = %.thread24, %bb.o
  %i.af = phi i64 [ %i.ab, %.thread24 ], [ %i.ae, %bb.o ] ; 2 uses
  %i.ag = phi i64 [ %i.z, %.thread24 ], [ %i.ac, %bb.o ] ; 3 uses
  %.014202326 = phi ptr [ %.014.ph, %.thread24 ], [ %.014, %bb.o ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !142
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %duckdb_je_arena_bin_choose.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ag
  %i.am = load i8, ptr %i.al, align 1, !tbaa !120
  %i.an = zext i8 %i.am to i32
  br label %duckdb_je_arena_bin_choose.exit.i

duckdb_je_arena_bin_choose.exit.i:                ; preds = %bb.q, %bb.p, %bb.o
  %i.ao = phi i64 [ %i.af, %bb.q ], [ %i.af, %bb.p ], [ %i.ae, %bb.o ]
  %i.ap = phi i64 [ %i.ag, %bb.q ], [ %i.ag, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %.014202327 = phi ptr [ %.014202326, %bb.q ], [ %.014202326, %bb.p ], [ %.014, %bb.o ] ; 7 uses
  %.0.i.i16 = phi i32 [ %i.an, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @duckdb_je_arena_bin_offsets, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.014202327, i64 %i.as ; 2 uses
  %i.au = load i32, ptr @duckdb_je_bin_info_nbatched_sizes, align 4, !tbaa !3
  %i.av = icmp ult i32 %3, %i.au
  %i.aw = zext nneg i32 %.0.i.i16 to i64          ; 2 uses
  %i.ax = getelementptr inbounds nuw [648 x i8], ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [256 x i8], ptr %i.at, i64 %i.aw
  %.0.i.i.i = select i1 %i.av, ptr %i.ax, ptr %i.ay ; 17 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 72 ; 5 uses
  %i.ba = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.az) #18
  %.not.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %duckdb_je_arena_bin_choose.exit.i
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %.0.i.i.i) #18
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store atomic i8 1, ptr %i.bb monotonic, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %duckdb_je_arena_bin_choose.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56 ; 4 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !72
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !72
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48 ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !74
  %.not.i.i.i = icmp eq ptr %i.bg, %0
  br i1 %.not.i.i.i, label %malloc_mutex_lock.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %0, ptr %i.bf, align 8, !tbaa !74
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !75
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !75
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.t, %bb.s
  %i.bk = tail call fastcc ptr @arena_bin_malloc_no_fresh_slab(ptr noundef nonnull %.014202327, ptr noundef nonnull %.0.i.i.i, i32 noundef %3) ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %malloc_mutex_lock.exit.i
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %i.ap ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64 ; 3 uses
  store atomic i8 0, ptr %i.bn monotonic, align 8
  %i.bo = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.az) #18 ; 0 uses
  %i.bp = tail call fastcc ptr @arena_slab_alloc(ptr noundef %0, ptr noundef nonnull %.014202327, i32 noundef %3, i32 noundef %.0.i.i16, ptr noundef nonnull %i.bm) ; 7 uses
  %i.bq = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.az) #18
  %.not.i53.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i53.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %.0.i.i.i) #18
  store atomic i8 1, ptr %i.bn monotonic, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.br = load i64, ptr %i.bc, align 8, !tbaa !72
  %i.bs = add i64 %i.br, 1
  store i64 %i.bs, ptr %i.bc, align 8, !tbaa !72
  %i.bt = load ptr, ptr %i.bf, align 8, !tbaa !74
  %.not.i.i54.i = icmp eq ptr %i.bt, %0
  br i1 %.not.i.i54.i, label %malloc_mutex_lock.exit55.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %0, ptr %i.bf, align 8, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !75
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !75
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
  %i.ca = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.az) #18 ; 0 uses
  br label %arena_malloc_small.exit

bb.aa:                                            ; preds = %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 160 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !161
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !161
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 176 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !137
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !137
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 224
  store ptr %i.bp, ptr %i.ch, align 8, !tbaa !135
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 64 ; 3 uses
  %.0101.i.i.i.i = load i64, ptr %i.ci, align 8, !tbaa !10 ; 2 uses
  %i.cj = icmp eq i64 %.0101.i.i.i.i, 0
  br i1 %i.cj, label %.lr.ph.i.i.i.i, label %arena_bin_malloc_with_fresh_slab.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aa, %.lr.ph.i.i.i.i
  %.02.i.i.i.i = phi i32 [ %i.ck, %.lr.ph.i.i.i.i ], [ 0, %bb.aa ]
  %i.ck = add i32 %.02.i.i.i.i, 1                 ; 3 uses
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cl
  %.010.i.i.i.i = load i64, ptr %i.cm, align 8, !tbaa !10 ; 2 uses
  %i.cn = icmp eq i64 %.010.i.i.i.i, 0
  br i1 %i.cn, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i
  %i.co = shl i32 %i.ck, 6
  %6 = zext i32 %i.co to i64
  br label %arena_bin_malloc_with_fresh_slab.exit.i

arena_bin_malloc_with_fresh_slab.exit.i:          ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.aa
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.aa ], [ %6, %._crit_edge.loopexit.i.i.i.i ] ; 2 uses
  %.010.lcssa.i.i.i.i = phi i64 [ %.0101.i.i.i.i, %bb.aa ], [ %.010.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ]
  %i.cp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.010.lcssa.i.i.i.i, i1 true) ; 2 uses
  %7 = add nuw nsw i64 %i.cp, %.0.lcssa.i.i.i.i
  %i.cq = lshr exact i64 %.0.lcssa.i.i.i.i, 3
  %8 = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cq ; 2 uses
  %i.cr = load i64, ptr %8, align 8, !tbaa !10
  %i.cs = shl nuw i64 1, %i.cp
  %i.ct = xor i64 %i.cs, %i.cr
  store i64 %i.ct, ptr %8, align 8, !tbaa !10
  %i.cu = getelementptr i8, ptr %i.bp, i64 8
  %.val.i.i.i = load ptr, ptr %i.cu, align 8, !tbaa !122
  %i.cv = load i64, ptr %i.bm, align 8, !tbaa !159
  %i.cw = mul i64 %i.cv, %7
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.cw
  %i.cy = load i64, ptr %i.bp, align 8, !tbaa !124
  %i.cz = add i64 %i.cy, -268435456
  store i64 %i.cz, ptr %i.bp, align 8, !tbaa !124
  br label %bb.ab

bb.ab:                                            ; preds = %arena_bin_malloc_with_fresh_slab.exit.i, %malloc_mutex_lock.exit55.i, %malloc_mutex_lock.exit.i
  %.048.i = phi ptr [ null, %arena_bin_malloc_with_fresh_slab.exit.i ], [ %i.bp, %malloc_mutex_lock.exit55.i ], [ null, %malloc_mutex_lock.exit.i ] ; 2 uses
  %.0.i17 = phi ptr [ %i.cx, %arena_bin_malloc_with_fresh_slab.exit.i ], [ %i.bx, %malloc_mutex_lock.exit55.i ], [ %i.bk, %malloc_mutex_lock.exit.i ] ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 112 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !125
  %i.dc = add i64 %i.db, 1
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !125
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 128 ; 2 uses
  %i.de = load <2 x i64>, ptr %i.dd, align 8, !tbaa !10
  %i.df = add <2 x i64> %i.de, splat (i64 1)
  store <2 x i64> %i.df, ptr %i.dd, align 8, !tbaa !10
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store atomic i8 0, ptr %i.dg monotonic, align 8
  %i.dh = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.az) #18 ; 0 uses
  %.not.i18 = icmp eq ptr %.048.i, null
  br i1 %.not.i18, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1, !tbaa !118
  %i.di = getelementptr inbounds nuw i8, ptr %.014202327, i64 10664
  call void @duckdb_je_pa_dalloc(ptr noundef %0, ptr noundef nonnull %i.di, ptr noundef nonnull %.048.i, ptr noundef nonnull %i.a) #18
  %i.dj = load i8, ptr %i.a, align 1, !tbaa !118, !range !113, !noundef !114
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.ad, label %duckdb_je_arena_slab_dalloc.exit.i

bb.ad:                                            ; preds = %bb.ac
  call void @duckdb_je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %.014202327)
  br label %duckdb_je_arena_slab_dalloc.exit.i

duckdb_je_arena_slab_dalloc.exit.i:               ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.ae

bb.ae:                                            ; preds = %duckdb_je_arena_slab_dalloc.exit.i, %bb.ab
  br i1 %4, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i17, i8 0, i64 %i.ao, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br i1 %i.b, label %arena_malloc_small.exit, label %bb.ah, !prof !121

bb.ah:                                            ; preds = %bb.ag
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !120
  %i.dp = load i32, ptr %i.dl, align 4, !tbaa !165 ; 2 uses
  %i.dq = add nsw i32 %i.dp, -1
  store i32 %i.dq, ptr %i.dl, align 4, !tbaa !165
  %i.dr = icmp slt i32 %i.dp, 1
  br i1 %i.dr, label %bb.ai, label %arena_malloc_small.exit, !prof !121

bb.ai:                                            ; preds = %bb.ah
  %i.ds = icmp sgt i8 %i.do, 0
  br i1 %i.ds, label %ticker_geom_ticks.exit.i, label %bb.aj

ticker_geom_ticks.exit.i:                         ; preds = %bb.ai
  store i32 0, ptr %i.dl, align 4, !tbaa !165
  br label %arena_malloc_small.exit

bb.aj:                                            ; preds = %bb.ai
  %i.dt = load i64, ptr %i.dm, align 8, !tbaa !10
  %i.du = mul i64 %i.dt, 6364136223846793005
  %i.dv = add i64 %i.du, 1442695040888963407      ; 2 uses
  store i64 %i.dv, ptr %i.dm, align 8, !tbaa !10
  %i.dw = lshr i64 %i.dv, 58
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !167
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @duckdb_je_ticker_geom_table, i64 %i.dw
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !120
  %i.ec = zext i8 %i.eb to i64
  %i.ed = mul nsw i64 %i.ec, %i.dz
  %i.ee = udiv i64 %i.ed, 61
  %i.ef = trunc i64 %i.ee to i32
  store i32 %i.ef, ptr %i.dl, align 8, !tbaa !165
  call void @duckdb_je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %.014202327, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %arena_malloc_small.exit

bb.ak:                                            ; preds = %.thread, %bb.n
  %.0142022 = phi ptr [ %.014.ph, %.thread ], [ %.014, %bb.n ]
  %i.eg = zext i32 %3 to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !10
  %i.ej = tail call ptr @duckdb_je_large_malloc(ptr noundef %0, ptr noundef nonnull %.0142022, i64 noundef %i.ei, i1 noundef zeroext %4) #18
  br label %arena_malloc_small.exit

arena_malloc_small.exit:                          ; preds = %bb.aj, %ticker_geom_ticks.exit.i, %bb.ah, %bb.ag, %bb.z, %arena_choose_maybe_huge.exit, %bb.ak
  %.0 = phi ptr [ %i.ej, %bb.ak ], [ null, %arena_choose_maybe_huge.exit ], [ null, %bb.z ], [ %.0.i17, %ticker_geom_ticks.exit.i ], [ %.0.i17, %bb.aj ], [ %.0.i17, %bb.ag ], [ %.0.i17, %bb.ah ]
  ret ptr %.0
}

declare ptr @duckdb_je_large_malloc(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @duckdb_je_arena_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  br i1 %5, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 4097
  br i1 %i.b, label %bb.c, label %bb.d, !prof !119

bb.c:                                             ; preds = %bb.b
  %i.c = add nuw nsw i64 %2, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !120
  %i.g = zext i8 %i.f to i32
  br label %sz_size2index.exit

bb.d:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.h, label %sz_size2index.exit, label %bb.e, !prof !121

bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw i64 %2, 1
  %i.j = add i64 %i.i, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.j, i1 true) ; 3 uses
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = sub nuw nsw i64 60, %i.k
  %i.n = ashr exact i64 -1152921504606846976, %i.k
  %i.o = add nsw i64 %2, -1
  %i.p = and i64 %i.n, %i.o
  %i.q = lshr i64 %i.p, %i.m
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 3
  %i.t = shl nuw nsw i32 %i.l, 2
  %reass.sub = sub nsw i32 %i.s, %i.t
  %i.u = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.e, %bb.d, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.c ], [ %i.u, %bb.e ], [ 232, %bb.d ] ; 5 uses
  %.not.i = icmp eq ptr %6, null
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !121

bb.f:                                             ; preds = %sz_size2index.exit
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = zext nneg i32 %.0.i to i64               ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.w ; 9 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !90   ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !103  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !175 ; 2 uses
  %i.ae = trunc i64 %i.aa to i16
  %.not.i22 = icmp eq i16 %i.ad, %i.ae
  br i1 %.not.i22, label %bb.h, label %bb.g, !prof !121

bb.g:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !90
  br label %cache_bin_alloc_impl.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !96
  %.not21.i = icmp eq i16 %i.ag, %i.ad
  br i1 %.not21.i, label %cache_bin_alloc_impl.exit, label %bb.i, !prof !121

bb.i:                                             ; preds = %bb.h
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !90
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = trunc i64 %i.ah to i16
  store i16 %i.ai, ptr %i.ac, align 8, !tbaa !175
  br label %cache_bin_alloc_impl.exit.thread

cache_bin_alloc_impl.exit:                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.aj = tail call fastcc ptr @arena_choose(ptr noundef %0, ptr noundef %1) ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.thread, label %bb.j, !prof !121

bb.j:                                             ; preds = %cache_bin_alloc_impl.exit
  %.val = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.al = icmp eq ptr %.val, @duckdb_je_disabled_bin
  br i1 %i.al, label %bb.k, label %bb.l, !prof !121

bb.k:                                             ; preds = %bb.j
  %i.am = tail call ptr @duckdb_je_arena_malloc_hard(ptr noundef %0, ptr noundef nonnull %i.aj, i64 noundef %2, i32 noundef %.0.i, i1 noundef zeroext %4, i1 noundef zeroext true)
  br label %.thread

.thread:                                          ; preds = %cache_bin_alloc_impl.exit, %bb.k
  %.0.i21.ph = phi ptr [ %i.am, %bb.k ], [ null, %cache_bin_alloc_impl.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %arena_malloc.exit

bb.l:                                             ; preds = %bb.j
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %i.x, i32 noundef %.0.i, i1 noundef zeroext true) #18
end_hunk_0
begin_hunk_1_@arena_prepare_base_deletion_sync:bb.a
malloc_mutex_lock.exit.i:                         ; preds = %bb.g, %bb.f
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !141 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store atomic i8 0, ptr %i.af monotonic, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ah = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ag) #18 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %arena_prepare_base_deletion_sync_finish.exit, label %.lr.ph.i

arena_prepare_base_deletion_sync_finish.exit:     ; preds = %malloc_mutex_lock.exit.i, %malloc_mutex_trylock.exit
  %.0 = phi i32 [ %i.n, %malloc_mutex_trylock.exit ], [ 0, %malloc_mutex_lock.exit.i ]
  store i32 %.0, ptr %3, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %arena_prepare_base_deletion_sync_finish.exit, %bb.d
  ret void
}

declare i64 @duckdb_je_batcher_pop_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @duckdb_je_batcher_pop_get_pushes(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @batcher_pop_end(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #15

declare void @duckdb_je_bitmap_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @arena_choose(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null, ret: address, provenance) %1) unnamed_addr #16 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %arena_choose_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !120
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.e, !prof !121

bb.c:                                             ; preds = %bb.b
  %i.d = load atomic ptr, ptr @duckdb_je_arenas acquire, align 8 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %arena_choose_impl.exit, !prof !121

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @duckdb_je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default) #18
  br label %arena_choose_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %arena_choose_impl.exit, !prof !121

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @duckdb_je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) #18 ; 7 uses
  %i.k = load i8, ptr %0, align 8, !tbaa !118, !range !113, !noundef !114
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %arena_choose_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !170  ; 2 uses
  %.not30.i = icmp eq ptr %i.p, null
  br i1 %.not30.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not31.i = icmp eq ptr %i.p, %i.j
  br i1 %.not31.i, label %arena_choose_impl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @duckdb_je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #18
  br label %arena_choose_impl.exit

bb.j:                                             ; preds = %bb.g
  tail call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #18
  br label %arena_choose_impl.exit

arena_choose_impl.exit:                           ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j
  %.0.i = phi ptr [ %1, %bb.a ], [ %i.j, %bb.j ], [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.0.i
}

declare ptr @duckdb_je_arena_choose_hard(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @duckdb_je_tcache_arena_reassociate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_tcache_arena_associate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @arena_bin_malloc_no_fresh_slab(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 10 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %arena_bin_slabs_full_insert.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.b, align 8, !tbaa !124
  %i.d = and i64 %.val, 274609471488
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 78952
  %.val.i = load i32, ptr %i.f, align 8, !tbaa !115
  %i.g = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  %i.h = icmp ult i32 %.val.i, %i.g
  br i1 %i.h, label %arena_bin_slabs_full_insert.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.b, ptr %i.j, align 8, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  store ptr %i.b, ptr %i.k, align 8, !tbaa !120
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !127  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %edata_list_active_append.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !120
  store ptr %i.o, ptr %i.j, align 8, !tbaa !120
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !127
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.b, ptr %i.q, align 8, !tbaa !120
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !120
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !120
  store ptr %i.t, ptr %i.k, align 8, !tbaa !120
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !127  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !120
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr %i.u, ptr %i.x, align 8, !tbaa !120
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !120
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %i.b, ptr %i.z, align 8, !tbaa !120
  %.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !120
  br label %edata_list_active_append.exit.i.i

edata_list_active_append.exit.i.i:                ; preds = %bb.e, %bb.d
  %i.aa = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.b, %bb.d ]
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !127
  br label %arena_bin_slabs_full_insert.exit.i

arena_bin_slabs_full_insert.exit.i:               ; preds = %bb.a, %edata_list_active_append.exit.i.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ac = tail call ptr @duckdb_je_edata_heap_remove_first(ptr noundef nonnull %i.ab) #18 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %arena_bin_refill_slabcur_no_fresh_slab.exit.thread, label %arena_bin_refill_slabcur_no_fresh_slab.exit

arena_bin_refill_slabcur_no_fresh_slab.exit.thread: ; preds = %arena_bin_slabs_full_insert.exit.i
  store ptr null, ptr %i.a, align 8, !tbaa !135
  br label %bb.g

arena_bin_refill_slabcur_no_fresh_slab.exit:      ; preds = %arena_bin_slabs_full_insert.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !160
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !160
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !157
  %i.aj = add i64 %i.ai, -1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !157
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !135
  br label %bb.f

bb.f:                                             ; preds = %arena_bin_refill_slabcur_no_fresh_slab.exit, %bb.b
  %i.ak = phi ptr [ %i.ac, %arena_bin_refill_slabcur_no_fresh_slab.exit ], [ %i.b, %bb.b ] ; 4 uses
  %i.al = zext i32 %2 to i64
  %i.am = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 3 uses
  %.0101.i.i = load i64, ptr %i.an, align 8, !tbaa !10 ; 2 uses
  %i.ao = icmp eq i64 %.0101.i.i, 0
  br i1 %i.ao, label %.lr.ph.i.i, label %arena_slab_reg_alloc.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.02.i.i = phi i32 [ %i.ap, %.lr.ph.i.i ], [ 0, %bb.f ]
  %i.ap = add i32 %.02.i.i, 1                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aq
  %.010.i.i = load i64, ptr %i.ar, align 8, !tbaa !10 ; 2 uses
  %i.as = icmp eq i64 %.010.i.i, 0
  br i1 %i.as, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.at = shl i32 %i.ap, 6
  %3 = zext i32 %i.at to i64
  br label %arena_slab_reg_alloc.exit

arena_slab_reg_alloc.exit:                        ; preds = %bb.f, %._crit_edge.loopexit.i.i
  %.0.lcssa.i.i = phi i64 [ 0, %bb.f ], [ %3, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.010.lcssa.i.i = phi i64 [ %.0101.i.i, %bb.f ], [ %.010.i.i, %._crit_edge.loopexit.i.i ]
  %i.au = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.010.lcssa.i.i, i1 true) ; 2 uses
  %4 = add nuw nsw i64 %i.au, %.0.lcssa.i.i
  %i.av = lshr exact i64 %.0.lcssa.i.i, 3
  %5 = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.av ; 2 uses
  %i.aw = load i64, ptr %5, align 8, !tbaa !10
  %i.ax = shl nuw i64 1, %i.au
  %i.ay = xor i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %5, align 8, !tbaa !10
  %i.az = getelementptr i8, ptr %i.ak, i64 8
  %.val.i10 = load ptr, ptr %i.az, align 8, !tbaa !122
  %i.ba = load i64, ptr %i.am, align 8, !tbaa !159
  %i.bb = mul i64 %i.ba, %4
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i10, i64 %i.bb
  %i.bd = load i64, ptr %i.ak, align 8, !tbaa !124
  %i.be = add i64 %i.bd, -268435456
  store i64 %i.be, ptr %i.ak, align 8, !tbaa !124
  br label %bb.g

bb.g:                                             ; preds = %arena_bin_refill_slabcur_no_fresh_slab.exit.thread, %arena_slab_reg_alloc.exit
  %.0 = phi ptr [ %i.bc, %arena_slab_reg_alloc.exit ], [ null, %arena_bin_refill_slabcur_no_fresh_slab.exit.thread ]
  ret ptr %.0
}

declare void @duckdb_je_tcache_bin_flush_stashed(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @duckdb_je_tcache_alloc_small_hard(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_edata_heap_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @duckdb_je_edata_heap_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_sdalloc_no_tcache(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #16 {
bb.a:
  %i.a = icmp ult i64 %2, 4097
  br i1 %i.a, label %bb.b, label %bb.c, !prof !119

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %2, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !120
  %i.f = zext i8 %i.e to i32
  br label %sz_size2index.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.g, label %sz_size2index.exit.thread, label %bb.d, !prof !121

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -2305843009213693952) %i.i, i1 true) ; 3 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = sub nuw nsw i64 60, %i.j
  %i.m = ashr exact i64 -1152921504606846976, %i.j
  %i.n = add nsw i64 %2, -1
  %i.o = and i64 %i.m, %i.n
  %i.p = lshr i64 %i.o, %i.l
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 3
  %i.s = shl nuw nsw i32 %i.k, 2
  %reass.sub = sub nsw i32 %i.r, %i.s
  %i.t = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.t, %bb.d ]
  %i.u = icmp samesign ult i32 %.0.i, 36
  br i1 %i.u, label %bb.e, label %sz_size2index.exit.thread, !prof !187

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
define internal fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1) unnamed_addr #16 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !121

bb.b:                                             ; preds = %bb.a
  call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %2) #18
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %2, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i, i64 noundef %i.c)
  %i.d = load ptr, ptr %3, align 8, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @duckdb_je_large_dalloc(ptr noundef %0, ptr noundef %i.d) #18
  ret void
}

declare void @duckdb_je_tcache_bin_flush_small(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @duckdb_je_tsd_slow_update(ptr noundef) local_unnamed_addr #3

declare ptr @duckdb_je_arena_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 omnipotent char", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!13, !38, i64 78960}
!13 = !{!"arena_s", !5, i64 0, !14, i64 8, !15, i64 16, !16, i64 24, !22, i64 10408, !24, i64 10416, !26, i64 10424, !14, i64 10536, !27, i64 10544, !26, i64 10552, !30, i64 10664, !4, i64 78952, !38, i64 78960, !17, i64 78968, !5, i64 78976, !5, i64 79040}
!14 = !{!"", !4, i64 0}
!15 = !{!"p1 _ZTS6tsdn_s", !9, i64 0}
!16 = !{!"arena_stats_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !17, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !18, i64 104, !11, i64 184, !11, i64 192, !5, i64 200, !5, i64 968, !17, i64 10376}
!17 = !{!"", !11, i64 0}
!18 = !{!"pa_shard_stats_s", !11, i64 0, !19, i64 8}
!19 = !{!"pac_stats_s", !20, i64 0, !20, i64 24, !11, i64 48, !17, i64 56, !17, i64 64}
!20 = !{!"pac_decay_stats_s", !21, i64 0, !21, i64 8, !21, i64 16}
!21 = !{!"locked_u64_s", !17, i64 0}
!22 = !{!"", !23, i64 0}
!23 = !{!"p1 _ZTS13tcache_slow_s", !9, i64 0}
!24 = !{!"", !25, i64 0}
!25 = !{!"p1 _ZTS28cache_bin_array_descriptor_s", !9, i64 0}
!26 = !{!"malloc_mutex_s", !5, i64 0}
!27 = !{!"", !28, i64 0}
!28 = !{!"", !29, i64 0}
!29 = !{!"p1 _ZTS7edata_s", !9, i64 0}
!30 = !{!"pa_shard_s", !31, i64 0, !17, i64 8, !32, i64 16, !33, i64 17, !34, i64 24, !46, i64 62264, !50, i64 62384, !61, i64 68104, !4, i64 68248, !44, i64 68256, !64, i64 68264, !39, i64 68272, !38, i64 68280}
!31 = !{!"p1 _ZTS12pa_central_s", !9, i64 0}
!32 = !{!"", !33, i64 0}
!33 = !{!"_Bool", !5, i64 0}
!34 = !{!"pac_s", !35, i64 0, !36, i64 56, !36, i64 19496, !36, i64 38936, !38, i64 58376, !39, i64 58384, !40, i64 58392, !41, i64 58400, !26, i64 58408, !42, i64 58520, !17, i64 58640, !43, i64 58648, !43, i64 60432, !44, i64 62216, !45, i64 62224, !17, i64 62232}
!35 = !{!"pai_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!36 = !{!"ecache_s", !26, i64 0, !37, i64 112, !37, i64 9768, !4, i64 19424, !4, i64 19428, !33, i64 19432}
!37 = !{!"eset_s", !5, i64 0, !5, i64 32, !5, i64 6432, !27, i64 9632, !17, i64 9640, !4, i64 9648}
!38 = !{!"p1 _ZTS6base_s", !9, i64 0}
!39 = !{!"p1 _ZTS6emap_s", !9, i64 0}
!40 = !{!"p1 _ZTS13edata_cache_s", !9, i64 0}
!41 = !{!"exp_grow_s", !4, i64 0, !4, i64 4}
!42 = !{!"san_bump_alloc_s", !26, i64 0, !29, i64 112}
!43 = !{!"decay_s", !26, i64 0, !33, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !11, i64 144, !17, i64 152, !11, i64 160, !11, i64 168, !5, i64 176, !11, i64 1776}
!44 = !{!"p1 _ZTS14malloc_mutex_s", !9, i64 0}
!45 = !{!"p1 _ZTS11pac_stats_s", !9, i64 0}
!46 = !{!"sec_s", !35, i64 0, !47, i64 56, !48, i64 64, !49, i64 104, !4, i64 112}
!47 = !{!"p1 _ZTS5pai_s", !9, i64 0}
!48 = !{!"sec_opts_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!49 = !{!"p1 _ZTS11sec_shard_s", !9, i64 0}
!50 = !{!"hpa_shard_s", !35, i64 0, !51, i64 56, !26, i64 64, !26, i64 176, !38, i64 288, !52, i64 296, !53, i64 320, !11, i64 5600, !4, i64 5608, !39, i64 5616, !59, i64 5624, !11, i64 5672, !60, i64 5680, !17, i64 5712}
!51 = !{!"p1 _ZTS13hpa_central_s", !9, i64 0}
!52 = !{!"edata_cache_fast_s", !27, i64 0, !40, i64 8, !33, i64 16}
!53 = !{!"psset_s", !5, i64 0, !5, i64 1024, !54, i64 1032, !55, i64 1056, !56, i64 4224, !5, i64 4232, !5, i64 5256, !56, i64 5272}
!54 = !{!"psset_bin_stats_s", !11, i64 0, !11, i64 8, !11, i64 16}
!55 = !{!"psset_stats_s", !5, i64 0, !5, i64 3072, !5, i64 3120}
!56 = !{!"", !57, i64 0}
!57 = !{!"", !58, i64 0}
!58 = !{!"p1 _ZTS8hpdata_s", !9, i64 0}
!59 = !{!"hpa_shard_opts_s", !11, i64 0, !11, i64 8, !4, i64 16, !33, i64 20, !11, i64 24, !11, i64 32, !33, i64 40}
end_hunk_1
