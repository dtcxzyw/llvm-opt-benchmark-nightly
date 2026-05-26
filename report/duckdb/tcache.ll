inline.NumInlined: 257
inline.NumDeleted: 85
begin_hunk_0_@duckdb_je_tcache_bin_flush_small:bb.a
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 48
  store ptr %i.ko, ptr %i.kq, align 8, !tbaa !33
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 40
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !33
  store ptr %i.ks, ptr %i.kl, align 8, !tbaa !33
  %i.kt = load ptr, ptr %i.kg, align 8, !tbaa !33 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 48
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !33
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 40
  store ptr %i.kt, ptr %i.kw, align 8, !tbaa !33
  %i.kx = load ptr, ptr %i.kl, align 8, !tbaa !33
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  store ptr %.sroa.050.1125, ptr %i.ky, align 8, !tbaa !33
  br label %edata_list_active_remove.exit

edata_list_active_remove.exit:                    ; preds = %.lr.ph126, %.thread.i
  %.sroa.050.10 = phi ptr [ %i.kh, %.thread.i ], [ null, %.lr.ph126 ] ; 2 uses
  %.val23 = load i64, ptr %.sroa.050.1125, align 8, !tbaa !40
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
  br i1 %.not.i36, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge127.thread
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ld) #15
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 64
  store atomic i8 1, ptr %i.lg monotonic, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge127.thread
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 56 ; 2 uses
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !43
  %i.lj = add i64 %i.li, 1
  store i64 %i.lj, ptr %i.lh, align 8, !tbaa !43
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ld, i64 48 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !48
  %.not.i.i37 = icmp eq ptr %i.ll, %0
  br i1 %.not.i.i37, label %malloc_mutex_lock.exit38, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr %0, ptr %i.lk, align 8, !tbaa !48
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ld, i64 40 ; 2 uses
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !53
  %i.lo = add i64 %i.ln, 1
  store i64 %i.lo, ptr %i.lm, align 8, !tbaa !53
  br label %malloc_mutex_lock.exit38

malloc_mutex_lock.exit38:                         ; preds = %bb.al, %bb.am
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ld, i64 152 ; 2 uses
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !54
  %i.lr = add i64 %i.lq, 1
  store i64 %i.lr, ptr %i.lp, align 8, !tbaa !54
  %i.ls = load i64, ptr %i.v, align 8, !tbaa !62
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ld, i64 128 ; 2 uses
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !63
  %i.lv = add i64 %i.lu, %i.ls
  store i64 %i.lv, ptr %i.lt, align 8, !tbaa !63
  store i64 0, ptr %i.v, align 8, !tbaa !62
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ld, i64 64
  store atomic i8 0, ptr %i.lw monotonic, align 8
  %i.lx = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.le) #15 ; 0 uses
  br label %tcache_bin_flush_impl_small.exit

tcache_bin_flush_impl_small.exit:                 ; preds = %._crit_edge127, %malloc_mutex_lock.exit38
  call void @llvm.stackrestore.p0(ptr %savedstack)
  %i.ly = add i32 %spec.store.select.i, %.0.i     ; 2 uses
  %i.lz = icmp ult i32 %i.ly, %i.q
  br i1 %i.lz, label %bb.b, label %tcache_bin_flush_impl.exit

tcache_bin_flush_impl.exit:                       ; preds = %tcache_bin_flush_impl_small.exit
  %.val.i = load ptr, ptr %2, align 8, !tbaa !25  ; 3 uses
  %.val8.i = load i16, ptr %i.a, align 4, !tbaa !32
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
  %i.mj = load ptr, ptr %2, align 8, !tbaa !25
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.n ; 2 uses
  store ptr %i.mk, ptr %2, align 8, !tbaa !25
  %.val3.i.i = load i16, ptr %i.a, align 4, !tbaa !32 ; 2 uses
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = trunc i64 %i.ml to i16                  ; 2 uses
  %i.mn = sub i16 %.val3.i.i, %i.mm
  %i.mo = lshr i16 %i.mn, 3
  %i.mp = getelementptr i8, ptr %2, i64 16        ; 2 uses
  %.val4.i.i = load i16, ptr %i.mp, align 8, !tbaa !31
  %i.mq = sub i16 %.val3.i.i, %.val4.i.i
  %i.mr = lshr i16 %i.mq, 3
  %i.ms = icmp samesign ult i16 %i.mo, %i.mr
  br i1 %i.ms, label %bb.an, label %cache_bin_finish_flush.exit

bb.an:                                            ; preds = %tcache_bin_flush_impl.exit
  store i16 %i.mm, ptr %i.mp, align 8, !tbaa !31
  br label %cache_bin_finish_flush.exit

cache_bin_finish_flush.exit:                      ; preds = %tcache_bin_flush_impl.exit, %bb.an
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_bin_flush_large(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 20         ; 3 uses
  tail call void @duckdb_je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext false)
  %.val = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %.val5 = load i16, ptr %i.a, align 4, !tbaa !32
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
  %i.y = sub i32 %i.q, %.0.i
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.y, i32 256) ; 4 uses
  %i.z = zext i32 %.0.i to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.z ; 3 uses
  %savedstack = tail call ptr @llvm.stacksave.p0()
  %i.ab = load ptr, ptr %1, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !39 ; 3 uses
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
  %.0.i434 = phi i32 [ %spec.store.select.i, %arena_get.exit.lr.ph ], [ %.1.i, %arena_decay_ticks.exit ] ; 2 uses
  %.069.i33 = phi i8 [ 0, %arena_get.exit.lr.ph ], [ %.170.i, %arena_decay_ticks.exit ] ; 2 uses
  %i.al = load ptr, ptr %5, align 16, !tbaa !33
  %.val12 = load i64, ptr %i.al, align 8, !tbaa !40 ; 2 uses
  %i.am = trunc i64 %.val12 to i32
  %i.an = and i32 %i.am, 4095                     ; 2 uses
  %i.ao = and i64 %.val12, 4095
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.ao
  %i.aq = load atomic ptr, ptr %i.ap acquire, align 8 ; 11 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 78952  ; 2 uses
  %.val14 = load i32, ptr %i.ar, align 8, !tbaa !78
  %i.as = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
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
  store atomic i8 1, ptr %i.ax monotonic, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 10608 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !43
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 10600 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !48
  %.not.i.i = icmp eq ptr %i.bc, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.bb, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 10592 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !53
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !53
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.f, %bb.e, %arena_get.exit
  %i.bg = icmp ne ptr %i.ad, %i.aq
  %i.bh = trunc nuw i8 %.069.i33 to i1
  %or.cond.i = select i1 %i.bg, i1 true, i1 %i.bh
  br i1 %or.cond.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %malloc_mutex_lock.exit
  %i.bi = load i64, ptr %i.r, align 8, !tbaa !62
  %i.bj = atomicrmw add ptr %i.aj, i64 %i.bi monotonic, align 8 ; 0 uses
  %i.bk = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8 ; 0 uses
  store i64 0, ptr %i.r, align 8, !tbaa !62
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %malloc_mutex_lock.exit
  %.170.i = phi i8 [ %.069.i33, %malloc_mutex_lock.exit ], [ 1, %bb.g ] ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %.0.i434, i32 1)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.l
  %.val13 = load i32, ptr %i.ar, align 8, !tbaa !78
  %i.bl = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  %i.bm = icmp ult i32 %.val13, %i.bl
  br i1 %i.bm, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.m, %bb.i
  br label %bb.r

bb.j:                                             ; preds = %bb.h, %bb.l
  %indvars.iv = phi i64 [ 0, %bb.h ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !33 ; 2 uses
  %.val10 = load i64, ptr %i.bo, align 8, !tbaa !40
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
  store atomic i8 0, ptr %i.bs monotonic, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 10624
  %i.bu = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bt) #15 ; 0 uses
  br label %.preheader

bb.n:                                             ; preds = %bb.u
  br i1 %i.t, label %arena_decay_ticks.exit, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  %.neg = sub i32 %.1.i, %.0.i434
  %i.bv = load i8, ptr %i.w, align 1, !tbaa !33
  %i.bw = load i32, ptr %i.u, align 4, !tbaa !75
  %i.bx = add i32 %i.bw, %.neg                    ; 2 uses
  store i32 %i.bx, ptr %i.u, align 4, !tbaa !75
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %bb.p, label %arena_decay_ticks.exit, !prof !7

bb.p:                                             ; preds = %bb.o
  %i.bz = icmp sgt i8 %i.bv, 0
  br i1 %i.bz, label %ticker_geom_ticks.exit, label %bb.q

ticker_geom_ticks.exit:                           ; preds = %bb.p
  store i32 0, ptr %i.u, align 4, !tbaa !75
  br label %arena_decay_ticks.exit

bb.q:                                             ; preds = %bb.p
  %i.ca = load i64, ptr %i.v, align 8, !tbaa !8
  %i.cb = mul i64 %i.ca, 6364136223846793005
  %i.cc = add i64 %i.cb, 1442695040888963407      ; 2 uses
  store i64 %i.cc, ptr %i.v, align 8, !tbaa !8
  %i.cd = lshr i64 %i.cc, 58
  %i.ce = load i32, ptr %i.x, align 4, !tbaa !77
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @duckdb_je_ticker_geom_table, i64 %i.cd
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !33
  %i.ci = zext i8 %i.ch to i64
  %i.cj = mul nsw i64 %i.ci, %i.cf
  %i.ck = udiv i64 %i.cj, 61
  %i.cl = trunc i64 %i.ck to i32
  store i32 %i.cl, ptr %i.u, align 8, !tbaa !75
  tail call void @duckdb_je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.aq, i1 noundef zeroext false, i1 noundef zeroext false) #15
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.o, %ticker_geom_ticks.exit, %bb.n, %bb.q
  %.not.i = icmp eq i32 %.1.i, 0
  br i1 %.not.i, label %._crit_edge, label %arena_get.exit

bb.r:                                             ; preds = %.preheader, %bb.u
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %bb.u ], [ 0, %.preheader ] ; 3 uses
  %.068.i30 = phi i32 [ %.1.i, %bb.u ], [ 0, %.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv36
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !33 ; 3 uses
  %.val11 = load i64, ptr %i.cn, align 8, !tbaa !40
  %i.co = trunc i64 %.val11 to i32
  %i.cp = and i32 %i.co, 4095
  %.not73.i = icmp eq i32 %i.cp, %i.an
  br i1 %.not73.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv36
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !38
  %i.cs = zext i32 %.068.i30 to i64               ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.cs
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !38
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cs
  store ptr %i.cn, ptr %i.cu, align 8, !tbaa !33
  %i.cv = add i32 %.068.i30, 1
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void @duckdb_je_large_dalloc_finish(ptr noundef %0, ptr noundef nonnull %i.cn) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.i = phi i32 [ %i.cv, %bb.s ], [ %.068.i30, %bb.t ] ; 4 uses
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count
  br i1 %exitcond41.not, label %bb.n, label %bb.r

._crit_edge:                                      ; preds = %arena_decay_ticks.exit
  %i.cw = trunc nuw i8 %.170.i to i1
  br i1 %i.cw, label %tcache_bin_flush_impl_large.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %i.cx = load i64, ptr %i.r, align 8, !tbaa !62
  %i.cy = getelementptr i8, ptr %i.ad, i64 -736
  %i.cz = getelementptr [48 x i8], ptr %i.cy, i64 %i.s ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = atomicrmw add ptr %i.da, i64 %i.cx monotonic, align 8 ; 0 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.dd = atomicrmw add ptr %i.dc, i64 1 monotonic, align 8 ; 0 uses
  store i64 0, ptr %i.r, align 8, !tbaa !62
  br label %tcache_bin_flush_impl_large.exit

tcache_bin_flush_impl_large.exit:                 ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.stackrestore.p0(ptr %savedstack)
  %i.de = add i32 %spec.store.select.i, %.0.i     ; 2 uses
  %i.df = icmp ult i32 %i.de, %i.q
  br i1 %i.df, label %bb.b, label %tcache_bin_flush_impl.exit

tcache_bin_flush_impl.exit:                       ; preds = %tcache_bin_flush_impl_large.exit
  %.val.i = load ptr, ptr %2, align 8, !tbaa !25  ; 3 uses
  %.val8.i = load i16, ptr %i.a, align 4, !tbaa !32
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
  %i.dp = load ptr, ptr %2, align 8, !tbaa !25
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.n ; 2 uses
  store ptr %i.dq, ptr %2, align 8, !tbaa !25
  %.val3.i.i = load i16, ptr %i.a, align 4, !tbaa !32 ; 2 uses
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = trunc i64 %i.dr to i16                  ; 2 uses
  %i.dt = sub i16 %.val3.i.i, %i.ds
  %i.du = lshr i16 %i.dt, 3
  %i.dv = getelementptr i8, ptr %2, i64 16        ; 2 uses
  %.val4.i.i = load i16, ptr %i.dv, align 8, !tbaa !31
  %i.dw = sub i16 %.val3.i.i, %.val4.i.i
  %i.dx = lshr i16 %i.dw, 3
  %i.dy = icmp samesign ult i16 %i.du, %i.dx
  br i1 %i.dy, label %bb.v, label %cache_bin_finish_flush.exit

bb.v:                                             ; preds = %tcache_bin_flush_impl.exit
  store i16 %i.ds, ptr %i.dv, align 8, !tbaa !31
  br label %cache_bin_finish_flush.exit

cache_bin_finish_flush.exit:                      ; preds = %tcache_bin_flush_impl.exit, %bb.v
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [16 x %struct.bin_remote_free_data_s], align 16 ; 4 uses
  %i.a = getelementptr i8, ptr %2, i64 20         ; 2 uses
  %.val24 = load i16, ptr %i.a, align 4, !tbaa !32 ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 22         ; 2 uses
  %.val27 = load i16, ptr %i.b, align 2, !tbaa !34 ; 2 uses
  %i.c = shl i16 %.val27, 3
  %.neg = sub i16 %i.c, %.val24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !118
  %i.f = add i16 %.neg, %i.e
  %i.g = lshr i16 %i.f, 3                         ; 3 uses
  %i.h = icmp eq i16 %i.g, 0
  br i1 %i.h, label %bb.bg, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
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
  %i.u = load i64, ptr %i.t, align 8, !tbaa !8
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
  br i1 %4, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b, %tcache_bin_flush_impl_small.exit.us
  %.0.i.us = phi i32 [ %i.cl, %tcache_bin_flush_impl_small.exit.us ], [ 0, %bb.b ] ; 4 uses
  %i.ah = sub i32 %i.l, %.0.i.us
  %spec.store.select.i.us = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 256) ; 8 uses
  %i.ai = zext i32 %.0.i.us to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ai ; 7 uses
  %savedstack.us = tail call ptr @llvm.stacksave.p0()
  %i.ak = load ptr, ptr %1, align 8, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !39 ; 2 uses
  %i.an = load i8, ptr %i.ac, align 1, !tbaa !33
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nuw nsw i32 %spec.store.select.i.us, 1
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %6 = alloca %union.emap_batch_lookup_result_u, i64 %i.aq, align 16 ; 8 uses
  %i.ar = zext nneg i32 %spec.store.select.i.us to i64
  call fastcc void @tcache_bin_flush_edatas_lookup(ptr noundef %0, ptr %i.aj, i64 noundef %i.ar, ptr noundef %6)
  %i.as = alloca ptr, i64 %i.aq, align 16         ; 3 uses
end_hunk_0
begin_hunk_1_@duckdb_je_tcache_bin_flush_stashed:bb.a
  %i.ke = lshr i64 %i.kd, 28
  %i.kf = trunc i64 %i.ke to i32
  %i.kg = and i32 %i.kf, 1023                     ; 2 uses
  %i.kh = load i32, ptr %i.ag, align 8, !tbaa !65
  %i.ki = icmp eq i32 %i.kg, %i.kh
  br i1 %i.ki, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kj = icmp eq i32 %i.kg, 1
  br i1 %i.kj, label %bb.ae, label %arena_dalloc_bin_locked_step.exit.us

bb.ae:                                            ; preds = %bb.ad
  %i.kk = load ptr, ptr %i.ly, align 8, !tbaa !69
  %.not.i21.us = icmp eq ptr %i.jo, %i.kk
  br i1 %.not.i21.us, label %arena_dalloc_bin_locked_step.exit.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @duckdb_je_arena_dalloc_bin_locked_handle_newly_nonempty(ptr noundef %0, ptr noundef %i.cx, ptr noundef nonnull %i.jo, ptr noundef nonnull %.0.i50.us) #15
  br label %arena_dalloc_bin_locked_step.exit.us

bb.ag:                                            ; preds = %bb.ac
  tail call void @duckdb_je_arena_dalloc_bin_locked_handle_newly_empty(ptr noundef %0, ptr noundef %i.cx, ptr noundef nonnull %i.jo, ptr noundef %.0.i50.us) #15
  %i.kl = icmp ult i32 %.1143.us, %spec.store.select.i.us
  br i1 %i.kl, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.km = getelementptr inbounds nuw i8, ptr %i.jo, i64 40 ; 3 uses
  store ptr %i.jo, ptr %i.km, align 8, !tbaa !33
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jo, i64 48 ; 4 uses
  store ptr %i.jo, ptr %i.kn, align 8, !tbaa !33
  %i.ko = icmp eq ptr %.sroa.087.2142.us, null
  br i1 %i.ko, label %arena_dalloc_bin_locked_step.exit.us, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.087.2142.us, i64 48 ; 3 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !33
  store ptr %i.kq, ptr %i.km, align 8, !tbaa !33
  store ptr %i.jo, ptr %i.kp, align 8, !tbaa !33
  %i.kr = load ptr, ptr %i.kn, align 8, !tbaa !33
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 40
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !33
  store ptr %i.kt, ptr %i.kn, align 8, !tbaa !33
  %i.ku = load ptr, ptr %i.kp, align 8, !tbaa !33
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 40
  store ptr %.sroa.087.2142.us, ptr %i.kv, align 8, !tbaa !33
  %i.kw = load ptr, ptr %i.kn, align 8, !tbaa !33
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 40
  store ptr %i.jo, ptr %i.kx, align 8, !tbaa !33
  %.pre.i.us = load ptr, ptr %i.km, align 8, !tbaa !33
  br label %arena_dalloc_bin_locked_step.exit.us

bb.aj:                                            ; preds = %bb.ag
  %i.ky = zext nneg i32 %.1143.us to i64
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ky
  store ptr %i.jo, ptr %i.kz, align 8, !tbaa !68
  %i.la = add nuw nsw i32 %.1143.us, 1
  br label %arena_dalloc_bin_locked_step.exit.us

arena_dalloc_bin_locked_step.exit.us:             ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ad
  %.sroa.087.5.us = phi ptr [ %.sroa.087.2142.us, %bb.aj ], [ %.sroa.087.2142.us, %bb.ad ], [ %.sroa.087.2142.us, %bb.ae ], [ %.sroa.087.2142.us, %bb.af ], [ %.pre.i.us, %bb.ai ], [ %i.jo, %bb.ah ] ; 2 uses
  %.4.us = phi i32 [ %i.la, %bb.aj ], [ %.1143.us, %bb.ad ], [ %.1143.us, %bb.ae ], [ %.1143.us, %bb.af ], [ %.1143.us, %bb.ai ], [ %.1143.us, %bb.ah ] ; 2 uses
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %lftr.wideiv203 = trunc i64 %indvars.iv.next201 to i32
  %exitcond204.not = icmp eq i32 %.1161.i.lcssa.us, %lftr.wideiv203
  br i1 %exitcond204.not, label %._crit_edge147.us.loopexit, label %bb.ac

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.am
  %indvars.iv191 = phi i64 [ %i.dl, %.lr.ph.us.preheader ], [ %indvars.iv.next192, %bb.am ] ; 3 uses
  %.1161.i135.us = phi i32 [ %i.dj, %.lr.ph.us.preheader ], [ %.2162.i.us, %bb.am ] ; 4 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv191 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8            ; 2 uses
  %.val33.us = load i64, ptr %i.lc, align 8, !tbaa !40 ; 2 uses
  %i.ld = xor i64 %.val33.us, %.val34.us
  %i.le = and i64 %i.ld, 4095
  %i.lf = icmp eq i64 %i.le, 0
  %i.lg = ptrtoint ptr %i.lc to i64
  br i1 %i.lf, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %.lr.ph.us
  %i.lh = lshr i64 %.val33.us, 38
  %i.li = trunc nuw nsw i64 %i.lh to i32
  %i.lj = and i32 %i.li, 63
  %i.lk = icmp eq i32 %i.lj, %i.da
  br i1 %i.lk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ll = zext i32 %.1161.i135.us to i64          ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ll ; 2 uses
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.lm, align 8, !tbaa !33
  store i64 %i.lg, ptr %i.lm, align 8, !tbaa !33
  store ptr %.sroa.0.0.copyload.i.us, ptr %i.lb, align 8, !tbaa !33
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ll ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !38
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv191 ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !38
  store ptr %i.lq, ptr %i.ln, align 8, !tbaa !38
  store ptr %i.lo, ptr %i.lp, align 8, !tbaa !38
  %i.lr = add i32 %.1161.i135.us, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %.lr.ph.us
  %.2162.i.us = phi i32 [ %i.lr, %bb.al ], [ %.1161.i135.us, %bb.ak ], [ %.1161.i135.us, %.lr.ph.us ] ; 2 uses
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next192 to i32
  %exitcond194.not = icmp eq i32 %spec.store.select.i.us, %lftr.wideiv
  br i1 %exitcond194.not, label %._crit_edge136.us, label %.lr.ph.us

.preheader.us:                                    ; preds = %malloc_mutex_trylock.exit.us
  %.not178 = icmp eq i32 %.1161.i.lcssa.us, %.0160.i167.us
  br i1 %.not178, label %._crit_edge140.us, label %.lr.ph139.us

.preheader126.us:                                 ; preds = %.lr.ph174.us, %.preheader127.us
  %i.ls = icmp eq ptr %.sroa.087.4.us, null
  br i1 %i.ls, label %._crit_edge177.us, label %.lr.ph176.us

.preheader127.us:                                 ; preds = %arena_decay_ticks.exit23.us
  %i.lt = trunc nuw i8 %.2.i.us to i1
  %.not181 = icmp eq i32 %.3.us, 0
  br i1 %.not181, label %.preheader126.us, label %.lr.ph174.us.preheader

.lr.ph174.us.preheader:                           ; preds = %.preheader127.us
  %wide.trip.count209 = zext i32 %.3.us to i64
  br label %.lr.ph174.us

.lr.ph139.us:                                     ; preds = %.preheader.us
  %i.lu = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 392
  %i.lv = getelementptr [16 x i8], ptr %i.lu, i64 %i.dw ; 3 uses
  %xtraiter = and i64 %i.dp, 1
  %i.lw = icmp eq i32 %i.do, 1
  br i1 %i.lw, label %.epil.preheader, label %.lr.ph139.us.new

.lr.ph139.us.new:                                 ; preds = %.lr.ph139.us
  %unroll_iter = and i64 %i.dp, 4294967294
  br label %bb.g

.lr.ph146.us:                                     ; preds = %bb.n
  %i.lx = zext i32 %i.fz to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i50.us, i64 224
  br label %bb.ac

.lr.ph160.us:                                     ; preds = %bb.p
  %i.lz = getelementptr inbounds nuw i8, ptr %i.dh, i64 392
  %i.ma = shl nuw i64 %i.gg, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 8 %i.lz, i64 %i.ma, i1 false)
  tail call void @batcher_pop_end(ptr noundef %0, ptr noundef nonnull %i.gf) #15
  %i.mb = zext i32 %i.fz to i64
  %i.mc = getelementptr inbounds nuw i8, ptr %i.dh, i64 224
  br label %bb.q

.split:                                           ; preds = %bb.b, %tcache_bin_flush_impl_large.exit
  %.0.i = phi i32 [ %i.pj, %tcache_bin_flush_impl_large.exit ], [ 0, %bb.b ] ; 4 uses
  %i.md = sub i32 %i.l, %.0.i
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.md, i32 256) ; 4 uses
  %i.me = zext i32 %.0.i to i64
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.me ; 3 uses
  %savedstack20 = tail call ptr @llvm.stacksave.p0()
  %i.mg = load ptr, ptr %1, align 8, !tbaa !36
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 40
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !39 ; 3 uses
  %i.mj = add nuw nsw i32 %spec.store.select.i, 1
  %i.mk = zext nneg i32 %i.mj to i64
  %7 = alloca %union.emap_batch_lookup_result_u, i64 %i.mk, align 16 ; 5 uses
  %i.ml = zext nneg i32 %spec.store.select.i to i64
  call fastcc void @tcache_bin_flush_edatas_lookup(ptr noundef %0, ptr %i.mf, i64 noundef %i.ml, ptr noundef %7)
  %.not.i18131 = icmp eq i32 %.0.i, %i.l
  br i1 %.not.i18131, label %._crit_edge.thread, label %arena_get.exit61.lr.ph

arena_get.exit61.lr.ph:                           ; preds = %.split
  %i.mm = getelementptr i8, ptr %i.mi, i64 -736
  %i.mn = getelementptr [48 x i8], ptr %i.mm, i64 %i.s ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 32
  br label %arena_get.exit61

arena_get.exit61:                                 ; preds = %arena_get.exit61.lr.ph, %arena_decay_ticks.exit
  %.0.i17133 = phi i32 [ %spec.store.select.i, %arena_get.exit61.lr.ph ], [ %.1.i19, %arena_decay_ticks.exit ] ; 2 uses
  %.069.i132 = phi i8 [ 0, %arena_get.exit61.lr.ph ], [ %.170.i, %arena_decay_ticks.exit ] ; 2 uses
  %i.mq = load ptr, ptr %7, align 16, !tbaa !33
  %.val32 = load i64, ptr %i.mq, align 8, !tbaa !40 ; 2 uses
  %i.mr = trunc i64 %.val32 to i32
  %i.ms = and i32 %i.mr, 4095                     ; 2 uses
  %i.mt = and i64 %.val32, 4095
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.mt
  %i.mv = load atomic ptr, ptr %i.mu acquire, align 8 ; 11 uses
  %i.mw = getelementptr i8, ptr %i.mv, i64 78952  ; 2 uses
  %.val48 = load i32, ptr %i.mw, align 8, !tbaa !78
  %i.mx = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  %i.my = icmp ult i32 %.val48, %i.mx
  br i1 %i.my, label %malloc_mutex_lock.exit64, label %bb.an

bb.an:                                            ; preds = %arena_get.exit61
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 10624
  %i.na = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.mz) #15
  %.not.i62 = icmp eq i32 %i.na, 0
  br i1 %.not.i62, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mv, i64 10552
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.nb) #15
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mv, i64 10616
  store atomic i8 1, ptr %i.nc monotonic, align 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mv, i64 10608 ; 2 uses
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !43
  %i.nf = add i64 %i.ne, 1
  store i64 %i.nf, ptr %i.nd, align 8, !tbaa !43
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mv, i64 10600 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !48
  %.not.i.i63 = icmp eq ptr %i.nh, %0
  br i1 %.not.i.i63, label %malloc_mutex_lock.exit64, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr %0, ptr %i.ng, align 8, !tbaa !48
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mv, i64 10592 ; 2 uses
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !53
  %i.nk = add i64 %i.nj, 1
  store i64 %i.nk, ptr %i.ni, align 8, !tbaa !53
  br label %malloc_mutex_lock.exit64

malloc_mutex_lock.exit64:                         ; preds = %bb.aq, %bb.ap, %arena_get.exit61
  %i.nl = icmp ne ptr %i.mi, %i.mv
  %i.nm = trunc nuw i8 %.069.i132 to i1
  %or.cond.i = select i1 %i.nl, i1 true, i1 %i.nm
  br i1 %or.cond.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %malloc_mutex_lock.exit64
  %i.nn = load i64, ptr %i.v, align 8, !tbaa !62
  %i.no = atomicrmw add ptr %i.mo, i64 %i.nn monotonic, align 8 ; 0 uses
  %i.np = atomicrmw add ptr %i.mp, i64 1 monotonic, align 8 ; 0 uses
  store i64 0, ptr %i.v, align 8, !tbaa !62
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %malloc_mutex_lock.exit64
  %.170.i = phi i8 [ %.069.i132, %malloc_mutex_lock.exit64 ], [ 1, %bb.ar ] ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %.0.i17133, i32 1)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  br label %bb.au

bb.at:                                            ; preds = %bb.aw
  %.val47 = load i32, ptr %i.mw, align 8, !tbaa !78
  %i.nq = load i32, ptr @duckdb_je_manual_arena_base, align 4, !tbaa !3
  %i.nr = icmp ult i32 %.val47, %i.nq
  br i1 %i.nr, label %.preheader, label %bb.ax

.preheader:                                       ; preds = %bb.ax, %bb.at
  br label %bb.bc

bb.au:                                            ; preds = %bb.as, %bb.aw
  %indvars.iv = phi i64 [ 0, %bb.as ], [ %indvars.iv.next, %bb.aw ] ; 2 uses
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !33 ; 2 uses
  %.val30 = load i64, ptr %i.nt, align 8, !tbaa !40
  %i.nu = trunc i64 %.val30 to i32
  %i.nv = and i32 %i.nu, 4095
  %i.nw = icmp eq i32 %i.nv, %i.ms
  br i1 %i.nw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  tail call void @duckdb_je_large_dalloc_prep_locked(ptr noundef %0, ptr noundef nonnull %i.nt) #15
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.at, label %bb.au

bb.ax:                                            ; preds = %bb.at
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mv, i64 10616
  store atomic i8 0, ptr %i.nx monotonic, align 1
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mv, i64 10624
  %i.nz = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ny) #15 ; 0 uses
  br label %.preheader

bb.ay:                                            ; preds = %bb.bf
  br i1 %i.w, label %arena_decay_ticks.exit, label %bb.az, !prof !7

bb.az:                                            ; preds = %bb.ay
  %.neg125 = sub i32 %.1.i19, %.0.i17133
  %i.oa = load i8, ptr %i.z, align 1, !tbaa !33
  %i.ob = load i32, ptr %i.x, align 4, !tbaa !75
  %i.oc = add i32 %i.ob, %.neg125                 ; 2 uses
  store i32 %i.oc, ptr %i.x, align 4, !tbaa !75
  %i.od = icmp slt i32 %i.oc, 0
  br i1 %i.od, label %bb.ba, label %arena_decay_ticks.exit, !prof !7

bb.ba:                                            ; preds = %bb.az
  %i.oe = icmp sgt i8 %i.oa, 0
  br i1 %i.oe, label %ticker_geom_ticks.exit69, label %bb.bb

ticker_geom_ticks.exit69:                         ; preds = %bb.ba
  store i32 0, ptr %i.x, align 4, !tbaa !75
  br label %arena_decay_ticks.exit

bb.bb:                                            ; preds = %bb.ba
  %i.of = load i64, ptr %i.y, align 8, !tbaa !8
  %i.og = mul i64 %i.of, 6364136223846793005
  %i.oh = add i64 %i.og, 1442695040888963407      ; 2 uses
  store i64 %i.oh, ptr %i.y, align 8, !tbaa !8
  %i.oi = lshr i64 %i.oh, 58
  %i.oj = load i32, ptr %i.aa, align 4, !tbaa !77
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw i8, ptr @duckdb_je_ticker_geom_table, i64 %i.oi
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !33
  %i.on = zext i8 %i.om to i64
  %i.oo = mul nsw i64 %i.on, %i.ok
  %i.op = udiv i64 %i.oo, 61
  %i.oq = trunc i64 %i.op to i32
  store i32 %i.oq, ptr %i.x, align 8, !tbaa !75
  tail call void @duckdb_je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.mv, i1 noundef zeroext false, i1 noundef zeroext false) #15
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.az, %ticker_geom_ticks.exit69, %bb.ay, %bb.bb
  %.not.i18 = icmp eq i32 %.1.i19, 0
  br i1 %.not.i18, label %._crit_edge, label %arena_get.exit61

bb.bc:                                            ; preds = %.preheader, %bb.bf
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %bb.bf ], [ 0, %.preheader ] ; 3 uses
  %.068.i129 = phi i32 [ %.1.i19, %bb.bf ], [ 0, %.preheader ] ; 3 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv185
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !33 ; 3 uses
  %.val31 = load i64, ptr %i.os, align 8, !tbaa !40
  %i.ot = trunc i64 %.val31 to i32
  %i.ou = and i32 %i.ot, 4095
  %.not73.i = icmp eq i32 %i.ou, %i.ms
  br i1 %.not73.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv185
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !38
  %i.ox = zext i32 %.068.i129 to i64              ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %i.ox
  store ptr %i.ow, ptr %i.oy, align 8, !tbaa !38
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ox
  store ptr %i.os, ptr %i.oz, align 8, !tbaa !33
  %i.pa = add i32 %.068.i129, 1
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  tail call void @duckdb_je_large_dalloc_finish(ptr noundef %0, ptr noundef nonnull %i.os) #15
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.1.i19 = phi i32 [ %i.pa, %bb.bd ], [ %.068.i129, %bb.be ] ; 4 uses
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond190.not = icmp eq i64 %indvars.iv.next186, %wide.trip.count
  br i1 %exitcond190.not, label %bb.ay, label %bb.bc

._crit_edge:                                      ; preds = %arena_decay_ticks.exit
  %i.pb = trunc nuw i8 %.170.i to i1
  br i1 %i.pb, label %tcache_bin_flush_impl_large.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.split, %._crit_edge
  %i.pc = load i64, ptr %i.v, align 8, !tbaa !62
  %i.pd = getelementptr i8, ptr %i.mi, i64 -736
  %i.pe = getelementptr [48 x i8], ptr %i.pd, i64 %i.s ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pg = atomicrmw add ptr %i.pf, i64 %i.pc monotonic, align 8 ; 0 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 32
  %i.pi = atomicrmw add ptr %i.ph, i64 1 monotonic, align 8 ; 0 uses
  store i64 0, ptr %i.v, align 8, !tbaa !62
  br label %tcache_bin_flush_impl_large.exit

tcache_bin_flush_impl_large.exit:                 ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.stackrestore.p0(ptr %savedstack20)
  %i.pj = add i32 %spec.store.select.i, %.0.i     ; 2 uses
  %i.pk = icmp ult i32 %i.pj, %i.l
  br i1 %i.pk, label %.split, label %tcache_bin_flush_impl.exit

tcache_bin_flush_impl.exit:                       ; preds = %tcache_bin_flush_impl_large.exit, %tcache_bin_flush_impl_small.exit.us
  %.val.i.i70 = load i16, ptr %i.b, align 2, !tbaa !34
  %.val3.i.i71 = load ptr, ptr %2, align 8, !tbaa !25 ; 2 uses
  %.val4.i.i72 = load i16, ptr %i.a, align 4, !tbaa !32
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
  store i16 %i.pu, ptr %i.d, align 2, !tbaa !118
  br label %bb.bg

bb.bg:                                            ; preds = %bb.a, %tcache_bin_flush_impl.exit
  ret void
}

declare void @duckdb_je_san_check_stashed_ptrs(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @duckdb_je_tcache_bin_ncached_max_read(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ugt i64 %1, 8388608                 ; 2 uses
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !10, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ult i64 %1, 4097
  br i1 %i.d, label %bb.d, label %bb.e, !prof !119

bb.d:                                             ; preds = %bb.c
  %i.e = add nuw nsw i64 %1, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !33
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
  %.val = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.n = icmp eq ptr %.val, @duckdb_je_disabled_bin
  br i1 %i.n, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %sz_size2index.exit
  %i.o = getelementptr i8, ptr %i.m, i64 22
  %.val15 = load i16, ptr %i.o, align 2, !tbaa !34
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %sz_size2index.exit, %bb.b
  %.sink = phi i16 [ 0, %bb.b ], [ %.val15, %bb.f ], [ 0, %sz_size2index.exit ]
  store i16 %.sink, ptr %2, align 2, !tbaa !120
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_arena_associate(ptr noundef %0, ptr noundef initializes((40, 48)) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %3, ptr %i.a, align 8, !tbaa !39
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
  %i.g = load i64, ptr %i.f, align 8, !tbaa !43
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 10472 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %.not.i.i = icmp eq ptr %i.j, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.i, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 10464 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !53
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !53
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  store ptr %1, ptr %1, align 8, !tbaa !121
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr %1, ptr %i.n, align 8, !tbaa !122
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 10408 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !123  ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !122
  store ptr %i.s, ptr %1, align 8, !tbaa !121
  store ptr %1, ptr %i.r, align 8, !tbaa !122
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !122
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !121  ; 2 uses
  store ptr %i.u, ptr %i.n, align 8, !tbaa !122
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !122
  store ptr %i.p, ptr %i.v, align 8, !tbaa !121
  store ptr %1, ptr %i.u, align 8, !tbaa !121
  %.pre = load ptr, ptr %1, align 8, !tbaa !121
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %malloc_mutex_lock.exit
  %i.w = phi ptr [ %.pre, %bb.e ], [ %1, %malloc_mutex_lock.exit ]
  store ptr %i.w, ptr %i.o, align 8, !tbaa !123
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.x, ptr %i.x, align 8, !tbaa !124
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !125
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !126
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 10416 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !127 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !125
  store ptr %i.af, ptr %i.x, align 8, !tbaa !124
  store ptr %i.x, ptr %i.ae, align 8, !tbaa !125
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !128
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !124 ; 2 uses
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !128
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !125
  store ptr %i.ac, ptr %i.ai, align 8, !tbaa !124
  store ptr %i.x, ptr %i.ah, align 8, !tbaa !124
  %.pre39 = load ptr, ptr %i.x, align 8, !tbaa !129
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = phi ptr [ %.pre39, %bb.g ], [ %i.x, %bb.f ]
  store ptr %i.aj, ptr %i.ab, align 16, !tbaa !127
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 10488
  store atomic i8 0, ptr %i.ak monotonic, align 8
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #15 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_arena_reassociate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @tcache_arena_dissociate(ptr noundef %0, ptr noundef %1)
  tail call void @duckdb_je_tcache_arena_associate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tcache_arena_dissociate(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 10 uses
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
  %i.h = load i64, ptr %i.g, align 8, !tbaa !43
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 10472 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %.not.i.i = icmp eq ptr %i.k, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.j, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 10464 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !53
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !53
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 10408 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !123  ; 2 uses
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %bb.e, label %.thread

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !121  ; 2 uses
  store ptr %i.r, ptr %i.o, align 8, !tbaa !123
  %i.s = icmp eq ptr %i.r, %1
  br i1 %i.s, label %bb.f, label %.thread

.thread:                                          ; preds = %malloc_mutex_lock.exit, %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !121
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !122  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !122  ; 2 uses
  store ptr %i.v, ptr %i.x, align 8, !tbaa !121
  %i.y = load ptr, ptr %1, align 8, !tbaa !121    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !122
  store ptr %i.v, ptr %i.w, align 8, !tbaa !122
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !122
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !121
  store ptr %1, ptr %i.v, align 8, !tbaa !121
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.o, align 8, !tbaa !123
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 10416 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !127 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.h, label %.thread7

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !124 ; 2 uses
  store ptr %i.af, ptr %i.ab, align 16, !tbaa !127
  %i.ag = icmp eq ptr %i.af, %i.ad
  br i1 %i.ag, label %bb.i, label %.thread7

.thread7:                                         ; preds = %bb.g, %bb.h
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !129
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !128 ; 2 uses
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !124
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !129 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.an, align 8, !tbaa !125
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !128
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !125
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !124
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !124
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.ab, align 16, !tbaa !127
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread7
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !130
  tail call void @duckdb_je_tcache_stats_merge(ptr noundef %0, ptr noundef %i.aq, ptr noundef nonnull %i.b)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 10488
  store atomic i8 0, ptr %i.ar monotonic, align 1
  %i.as = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #15 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !39
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @duckdb_je_tcache_create_explicit(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %2 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %3 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load i32, ptr @duckdb_je_global_do_not_change_tcache_nbins, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @duckdb_je_cache_bin_info_compute_alloc(ptr noundef nonnull @opt_tcache_ncached_max, i32 noundef %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15
  %i.d = load i64, ptr %i.a, align 8, !tbaa !8
  %i.e = add i64 %i.d, 1951
  %i.f = and i64 %i.e, 4294967288                 ; 6 uses
  %i.g = load i64, ptr %i.b, align 8, !tbaa !8    ; 7 uses
  %i.h = icmp samesign ult i64 %i.f, 14337
  %i.i = icmp ult i64 %i.g, 4097
  %or.cond.i = and i1 %i.i, %i.h
  br i1 %or.cond.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i64 %i.g, -1
  %i.k = add nsw i64 %i.j, %i.f
  %i.l = sub nsw i64 0, %i.g
  %i.m = and i64 %i.k, %i.l                       ; 5 uses
  %i.n = icmp ult i64 %i.m, 4097
  br i1 %i.n, label %bb.c, label %bb.d, !prof !119

bb.c:                                             ; preds = %bb.b
  %i.o = add nuw nsw i64 %i.m, 7
  %i.p = lshr i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !33
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !8
  br label %sz_s2u.exit

bb.d:                                             ; preds = %bb.b
  %i.v = icmp ugt i64 %i.m, 8070450532247928832
  br i1 %i.v, label %sz_sa2u.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.w = shl nuw i64 %i.m, 1
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.x, i1 true) ; 2 uses
  %notmask.i26 = ashr exact i64 -1152921504606846976, %i.y
  %i.z = lshr i64 1152921504606846975, %i.y
  %i.aa = add nuw nsw i64 %i.m, %i.z
  %i.ab = and i64 %i.aa, %notmask.i26
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.e, %bb.c
  %.0.i19 = phi i64 [ %i.u, %bb.c ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ac = icmp ult i64 %.0.i19, 16384
  br i1 %i.ac, label %sz_sa2u.exit, label %.thread30

bb.f:                                             ; preds = %bb.a
  %i.ad = icmp ugt i64 %i.g, 8070450532247928832
  br i1 %i.ad, label %sz_sa2u.exit, label %bb.g, !prof !131

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i64 %i.f, 16385
  br i1 %i.ae, label %.thread30, label %sz_s2u.exit21

sz_s2u.exit21:                                    ; preds = %bb.g
  %i.af = shl nuw nsw i64 %i.f, 1
  %i.ag = add nsw i64 %i.af, -1
  %i.ah = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ag, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ah
  %i.ai = lshr i64 1152921504606846975, %i.ah
  %i.aj = add nuw nsw i64 %i.f, %i.ai
  %i.ak = and i64 %i.aj, %notmask.i               ; 2 uses
  %i.al = icmp samesign ult i64 %i.ak, %i.f
  br i1 %i.al, label %sz_sa2u.exit, label %.thread30

.thread30:                                        ; preds = %sz_s2u.exit, %sz_s2u.exit21, %bb.g
  %.0.i = phi i64 [ %i.ak, %sz_s2u.exit21 ], [ 16384, %bb.g ], [ 16384, %sz_s2u.exit ] ; 3 uses
  %i.am = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !8
  %i.an = add nuw nsw i64 %i.g, 4095
  %i.ao = and i64 %i.an, 9223372036854771712
  %i.ap = add nsw i64 %i.ao, -4096
  %i.aq = add nsw i64 %i.ap, %.0.i
  %i.ar = add i64 %i.aq, %i.am
  %i.as = icmp ult i64 %i.ar, %.0.i
  %..0.i = select i1 %i.as, i64 0, i64 %.0.i
  br label %sz_sa2u.exit

sz_sa2u.exit:                                     ; preds = %bb.d, %sz_s2u.exit, %bb.f, %sz_s2u.exit21, %.thread30
  %.018.i = phi i64 [ 0, %bb.f ], [ %.0.i19, %sz_s2u.exit ], [ %..0.i, %.thread30 ], [ 0, %sz_s2u.exit21 ], [ 0, %bb.d ] ; 3 uses
  %i.at = load atomic ptr, ptr @duckdb_je_arenas acquire, align 8 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.h, label %arena_get.exit, !prof !7

bb.h:                                             ; preds = %sz_sa2u.exit
  %i.av = call ptr @duckdb_je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default) #15
  br label %arena_get.exit

arena_get.exit:                                   ; preds = %sz_sa2u.exit, %bb.h
  %.0.i28 = phi ptr [ %i.av, %bb.h ], [ %i.at, %sz_sa2u.exit ] ; 2 uses
  %i.aw = icmp samesign ult i64 %.018.i, 14337    ; 2 uses
  %i.ax = icmp eq ptr %0, null                    ; 2 uses
  br i1 %i.ax, label %tsdn_witness_tsdp_get.exit.i, label %tsdn_witness_tsdp_get.exit.i.thread

tsdn_witness_tsdp_get.exit.i:                     ; preds = %arena_get.exit
  %i.ay = call ptr @duckdb_je_arena_palloc(ptr noundef null, ptr noundef %.0.i28, i64 noundef %.018.i, i64 noundef %i.g, i1 noundef zeroext true, i1 noundef zeroext %i.aw, ptr noundef null) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %ipallocztm_explicit_slab.exit.thread, label %bb.i, !prof !7

tsdn_witness_tsdp_get.exit.i.thread:              ; preds = %arena_get.exit
  %i.az = call ptr @duckdb_je_arena_palloc(ptr noundef nonnull %0, ptr noundef %.0.i28, i64 noundef %.018.i, i64 noundef %i.g, i1 noundef zeroext true, i1 noundef zeroext %i.aw, ptr noundef null) #15 ; 2 uses
  %.not.i31 = icmp eq ptr %i.az, null
  br i1 %.not.i31, label %ipallocztm_explicit_slab.exit.thread, label %bb.j, !prof !7

bb.i:                                             ; preds = %tsdn_witness_tsdp_get.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %1) #15
  br label %emap_edata_lookup.exit

bb.j:                                             ; preds = %tsdn_witness_tsdp_get.exit.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %emap_edata_lookup.exit

emap_edata_lookup.exit:                           ; preds = %bb.i, %bb.j
  %i.bb = phi ptr [ %i.ay, %bb.i ], [ %i.az, %bb.j ] ; 3 uses
  %.0.i.i24 = phi ptr [ %1, %bb.i ], [ %i.ba, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.bc = ptrtoint ptr %i.bb to i64               ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0, ptr noundef nonnull %.0.i.i24, i64 noundef %i.bc)
  %i.bd = load ptr, ptr %2, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %.val = load i64, ptr %i.bd, align 8, !tbaa !40
  %i.be = and i64 %.val, 4095
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.be
  %i.bg = load atomic ptr, ptr %i.bf monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  br i1 %i.ax, label %bb.k, label %bb.l, !prof !7

bb.k:                                             ; preds = %emap_edata_lookup.exit
  call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %3) #15
  br label %bb.m

bb.l:                                             ; preds = %emap_edata_lookup.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.0.i.i22 = phi ptr [ %3, %bb.k ], [ %i.bh, %bb.l ]
  %i.bi = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %0, ptr noundef nonnull %.0.i.i22, i64 noundef %i.bc)
  %.fca.0.extract.i.i = extractvalue { i64, i32 } %i.bi, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.bj = and i64 %.fca.0.extract.i.i, 4294967295
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bn = atomicrmw add ptr %i.bm, i64 %i.bl monotonic, align 8 ; 0 uses
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bo ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1760 ; 2 uses
  %i.br = load i32, ptr @duckdb_je_global_do_not_change_tcache_nbins, align 4, !tbaa !3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 1808
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !35
  call fastcc void @tcache_init(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.bp, ptr noundef %i.bb, ptr noundef nonnull @opt_tcache_ncached_max)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !33
  %i.bv = icmp sgt i8 %i.bu, 0
  br i1 %i.bv, label %bb.n, label %bb.p, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.bw = load atomic ptr, ptr @duckdb_je_arenas acquire, align 8 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.o, label %arena_ichoose.exit, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.by = call ptr @duckdb_je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default) #15
  br label %arena_ichoose.exit

bb.p:                                             ; preds = %bb.m
  %.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bz = load ptr, ptr %.in.i.i, align 8, !tbaa !135 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.q, label %arena_ichoose.exit, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.cb = call ptr @duckdb_je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext true) #15 ; 7 uses
  %i.cc = load i8, ptr %0, align 1, !tbaa !10, !range !12, !noundef !13
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.r, label %arena_ichoose.exit

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !39 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not30.i.i = icmp eq ptr %i.ch, %i.cb
  br i1 %.not30.i.i, label %arena_ichoose.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call fastcc void @tcache_arena_dissociate(ptr noundef nonnull %0, ptr noundef nonnull %i.ce)
  call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.ce, ptr noundef nonnull %i.cf, ptr noundef %i.cb)
  br label %arena_ichoose.exit

bb.u:                                             ; preds = %bb.r
  call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.ce, ptr noundef nonnull %i.cf, ptr noundef %i.cb)
  br label %arena_ichoose.exit

arena_ichoose.exit:                               ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.s, %bb.t, %bb.u
  %.0.i.i = phi ptr [ %i.cb, %bb.u ], [ %i.bz, %bb.p ], [ %i.cb, %bb.q ], [ %i.cb, %bb.s ], [ %i.cb, %bb.t ], [ %i.by, %bb.o ], [ %i.bw, %bb.n ]
  call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.bp, ptr noundef %.0.i.i)
  br label %ipallocztm_explicit_slab.exit.thread

ipallocztm_explicit_slab.exit.thread:             ; preds = %tsdn_witness_tsdp_get.exit.i, %tsdn_witness_tsdp_get.exit.i.thread, %arena_ichoose.exit
  %.0 = phi ptr [ %i.bp, %arena_ichoose.exit ], [ null, %tsdn_witness_tsdp_get.exit.i.thread ], [ null, %tsdn_witness_tsdp_get.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.0
}

declare void @duckdb_je_cache_bin_info_compute_alloc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @tcache_init(ptr noundef %0, ptr noundef initializes((0, 8)) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr %0, ptr %1, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %1, ptr %i.b, align 8, !tbaa !130
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.c, align 4, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %2, ptr %i.e, align 8, !tbaa !136
  %i.f = getelementptr i8, ptr %0, i64 48
  %.val = load i32, ptr %i.f, align 8, !tbaa !35  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 0, ptr %i.a, align 8, !tbaa !8
  call void @duckdb_je_cache_bin_preincrement(ptr noundef %3, i32 noundef %.val, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #15
  %.not4 = icmp eq i32 %.val, 0
  br i1 %.not4, label %.lr.ph3, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %wide.trip.count = zext i32 %.val to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.g
  %i.k = icmp ult i32 %.val, 73
  br i1 %i.k, label %.lr.ph3, label %._crit_edge

.lr.ph3:                                          ; preds = %bb.a, %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = zext nneg i32 %.val to i64
  br label %bb.h

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 8 uses
  %i.n = icmp samesign ult i64 %indvars.iv, 36
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  store i8 1, ptr %i.o, align 1, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  store i8 0, ptr %i.p, align 1, !tbaa !10
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !8
  %i.s = load i64, ptr @duckdb_je_opt_tcache_gc_delay_bytes, align 8, !tbaa !8
  %i.t = udiv i64 %i.s, %i.r
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.t, i64 255)
  %i.u = trunc nuw i64 %spec.select.i to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  store i8 %i.u, ptr %i.v, align 1, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !137
  %.not = icmp eq i16 %i.y, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @duckdb_je_cache_bin_init(ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #15
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @cache_bin_init_disabled(ptr noundef nonnull %i.w, i16 noundef zeroext 0) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.b

._crit_edge:                                      ; preds = %bb.h, %.preheader
  call void @duckdb_je_cache_bin_postincrement(ptr noundef nonnull %2, ptr noundef nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.h:                                             ; preds = %.lr.ph3, %bb.h
  %indvars.iv6 = phi i64 [ %i.m, %.lr.ph3 ], [ %indvars.iv.next7, %bb.h ] ; 3 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv6
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv6
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !137
  call void @cache_bin_init_disabled(ptr noundef nonnull %i.z, i16 noundef zeroext %i.ab) #15
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1 ; 2 uses
  %i.ac = and i64 %indvars.iv.next7, 4294967295
  %exitcond9.not = icmp eq i64 %i.ac, 73
  br i1 %exitcond9.not, label %._crit_edge, label %bb.h
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @duckdb_je_tsd_tcache_enabled_data_init(ptr noundef initializes((0, 1), (304, 308)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @duckdb_je_opt_tcache, align 1, !tbaa !10, !range !12, !noundef !13
  store i8 %i.a, ptr %0, align 1, !tbaa !10
  %i.b = load i32, ptr @duckdb_je_global_do_not_change_tcache_nbins, align 4, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 %i.b, ptr %i.c, align 8, !tbaa !35
  tail call void @duckdb_je_tsd_slow_update(ptr noundef nonnull %0) #15
  %i.d = load i8, ptr @duckdb_je_opt_tcache, align 1, !tbaa !10, !range !12, !noundef !13
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @duckdb_je_tsd_tcache_data_init(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @opt_tcache_ncached_max)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 false
}

declare void @duckdb_je_tsd_slow_update(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @duckdb_je_tsd_tcache_data_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 304
  %.val.i = load i32, ptr %i.e, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @duckdb_je_cache_bin_info_compute_alloc(ptr noundef %2, i32 noundef %.val.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15
  %i.f = call zeroext i1 @duckdb_je_cache_bin_stack_use_thp() #15
  %i.g = load i64, ptr %i.a, align 8, !tbaa !8    ; 8 uses
  br i1 %i.f, label %ipallocztm_explicit_slab.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.b, align 8, !tbaa !8    ; 6 uses
  %i.i = icmp ult i64 %i.g, 14337
  %i.j = icmp ult i64 %i.h, 4097
  %or.cond.i.i = and i1 %i.i, %i.j
  br i1 %or.cond.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %i.g, -1
  %i.l = add nsw i64 %i.k, %i.h
  %i.m = sub nsw i64 0, %i.h
  %i.n = and i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp ult i64 %i.n, 4097
  br i1 %i.o, label %bb.d, label %bb.e, !prof !119

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.n, 7
  %i.q = lshr i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !33
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !8
  br label %sz_s2u.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = icmp ugt i64 %i.n, 8070450532247928832
  br i1 %i.w, label %sz_sa2u.exit.i, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.x = shl nuw i64 %i.n, 1
  %i.y = add nsw i64 %i.x, -1
  %i.z = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.y, i1 true) ; 2 uses
  %notmask.i36.i = ashr exact i64 -1152921504606846976, %i.z
  %i.aa = lshr i64 1152921504606846975, %i.z
  %i.ab = add nuw nsw i64 %i.aa, %i.n
  %i.ac = and i64 %i.ab, %notmask.i36.i
  br label %sz_s2u.exit.i

sz_s2u.exit.i:                                    ; preds = %bb.f, %bb.d
  %.0.i29.i = phi i64 [ %i.v, %bb.d ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ad = icmp ult i64 %.0.i29.i, 16384
  br i1 %i.ad, label %sz_sa2u.exit.i, label %.thread44.i

bb.g:                                             ; preds = %bb.b
  %i.ae = icmp ugt i64 %i.h, 8070450532247928832
  br i1 %i.ae, label %sz_sa2u.exit.i, label %bb.h, !prof !131

bb.h:                                             ; preds = %bb.g
  %i.af = icmp ult i64 %i.g, 16385
  br i1 %i.af, label %.thread44.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp ugt i64 %i.g, 8070450532247928832
  br i1 %i.ag, label %sz_s2u.exit31.i, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ah = shl nuw i64 %i.g, 1
  %i.ai = add i64 %i.ah, -1
  %i.aj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ai, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.aj
  %i.ak = lshr i64 1152921504606846975, %i.aj
  %i.al = add nuw nsw i64 %i.ak, %i.g
  %i.am = and i64 %i.al, %notmask.i.i
  br label %sz_s2u.exit31.i

sz_s2u.exit31.i:                                  ; preds = %bb.j, %bb.i
  %.0.i35.i = phi i64 [ %i.am, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.an = icmp ult i64 %.0.i35.i, %i.g
  br i1 %i.an, label %sz_sa2u.exit.i, label %.thread44.i

.thread44.i:                                      ; preds = %sz_s2u.exit31.i, %bb.h, %sz_s2u.exit.i
  %.0.i.i = phi i64 [ %.0.i35.i, %sz_s2u.exit31.i ], [ 16384, %bb.h ], [ 16384, %sz_s2u.exit.i ] ; 3 uses
  %i.ao = load i64, ptr @duckdb_je_sz_large_pad, align 8, !tbaa !8
  %i.ap = add nuw nsw i64 %i.h, 4095
  %i.aq = and i64 %i.ap, 9223372036854771712
  %i.ar = add nsw i64 %i.aq, -4096
  %i.as = add i64 %i.ar, %.0.i.i
  %i.at = add i64 %i.as, %i.ao
  %i.au = icmp ult i64 %i.at, %.0.i.i
  %..0.i.i = select i1 %i.au, i64 0, i64 %.0.i.i
  br label %sz_sa2u.exit.i

sz_sa2u.exit.i:                                   ; preds = %.thread44.i, %sz_s2u.exit31.i, %bb.g, %sz_s2u.exit.i, %bb.e
  %.018.i.i = phi i64 [ 0, %bb.g ], [ %.0.i29.i, %sz_s2u.exit.i ], [ %..0.i.i, %.thread44.i ], [ 0, %sz_s2u.exit31.i ], [ 0, %bb.e ] ; 3 uses
  store i64 %.018.i.i, ptr %i.a, align 8, !tbaa !8
  %i.av = load atomic ptr, ptr @duckdb_je_arenas acquire, align 8 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.k, label %tsdn_witness_tsdp_get.exit.i.i, !prof !7

bb.k:                                             ; preds = %sz_sa2u.exit.i
  %i.ax = call ptr @duckdb_je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default) #15
  br label %tsdn_witness_tsdp_get.exit.i.i

tsdn_witness_tsdp_get.exit.i.i:                   ; preds = %bb.k, %sz_sa2u.exit.i
  %.0.i40.i = phi ptr [ %i.ax, %bb.k ], [ %i.av, %sz_sa2u.exit.i ]
  %i.ay = icmp samesign ult i64 %.018.i.i, 14337
  %i.az = call ptr @duckdb_je_arena_palloc(ptr noundef nonnull %0, ptr noundef %.0.i40.i, i64 noundef %.018.i.i, i64 noundef %i.h, i1 noundef zeroext true, i1 noundef zeroext %i.ay, ptr noundef null) #15 ; 3 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %tsd_tcache_data_init_impl.exit, label %ipallocztm_explicit_slab.exit.thread46.i, !prof !7

ipallocztm_explicit_slab.exit.thread46.i:         ; preds = %tsdn_witness_tsdp_get.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull %0, ptr noundef nonnull %i.ba, i64 noundef %i.bb)
  %i.bc = load ptr, ptr %3, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %.val39.i = load i64, ptr %i.bc, align 8, !tbaa !40
  %i.bd = and i64 %.val39.i, 4095
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_arenas, i64 %i.bd
  %i.bf = load atomic ptr, ptr %i.be monotonic, align 8
  %i.bg = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %0, ptr noundef nonnull %i.ba, i64 noundef %i.bb)
  %.fca.0.extract.i.i.i = extractvalue { i64, i32 } %i.bg, 0
  %i.bh = and i64 %.fca.0.extract.i.i.i, 4294967295
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bl = atomicrmw add ptr %i.bk, i64 %i.bj monotonic, align 8 ; 0 uses
  br label %bb.l

ipallocztm_explicit_slab.exit.i:                  ; preds = %bb.a
  %i.bm = call ptr @duckdb_je_b0_alloc_tcache_stack(ptr noundef nonnull %0, i64 noundef %i.g) #15 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %tsd_tcache_data_init_impl.exit, label %bb.l

bb.l:                                             ; preds = %ipallocztm_explicit_slab.exit.i, %ipallocztm_explicit_slab.exit.thread46.i
  %.048.i = phi ptr [ %i.az, %ipallocztm_explicit_slab.exit.thread46.i ], [ %i.bm, %ipallocztm_explicit_slab.exit.i ]
  call fastcc void @tcache_init(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %.048.i, ptr noundef %2)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  store ptr null, ptr %i.bo, align 8, !tbaa !39
  %i.bp = load i32, ptr @duckdb_je_malloc_init_state, align 4, !tbaa !3
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.m, label %arena_get.exit42.i

arena_get.exit42.i:                               ; preds = %bb.l
  %i.br = load atomic ptr, ptr @duckdb_je_arenas acquire, align 8
  br label %ipallocztm_explicit_slab.exit.thread.sink.split.i

bb.m:                                             ; preds = %bb.l
  %i.bs = icmp eq ptr %1, null
  br i1 %i.bs, label %bb.n, label %ipallocztm_explicit_slab.exit.thread.sink.split.i

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !33
  %i.bv = icmp sgt i8 %i.bu, 0
  br i1 %i.bv, label %bb.o, label %bb.q, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.bw = load atomic ptr, ptr @duckdb_je_arenas acquire, align 8 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.p, label %arena_choose.exit.i, !prof !7

bb.p:                                             ; preds = %bb.o
  %i.by = call ptr @duckdb_je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @duckdb_je_arena_config_default) #15
  br label %arena_choose.exit.i

bb.q:                                             ; preds = %bb.n
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bz = load ptr, ptr %.in.i.i.i, align 8, !tbaa !135 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.r, label %arena_choose.exit.i, !prof !7

bb.r:                                             ; preds = %bb.q
  %i.cb = call ptr @duckdb_je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) #15 ; 6 uses
  %i.cc = load i8, ptr %0, align 1, !tbaa !10, !range !12, !noundef !13
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.s, label %arena_choose.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ce = load ptr, ptr %i.bo, align 8, !tbaa !39 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not30.i.i.i = icmp eq ptr %i.ce, %i.cb
  br i1 %.not30.i.i.i, label %tsd_tcache_data_init_impl.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call fastcc void @tcache_arena_dissociate(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.cb)
  br label %arena_choose.exit.i

bb.v:                                             ; preds = %bb.s
  call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.cb)
  br label %arena_choose.exit.i

arena_choose.exit.i:                              ; preds = %bb.v, %bb.u, %bb.r, %bb.q, %bb.p, %bb.o
  %.027.ph.ph.i = phi ptr [ %i.cb, %bb.v ], [ %i.bz, %bb.q ], [ %i.cb, %bb.r ], [ %i.cb, %bb.u ], [ %i.by, %bb.p ], [ %i.bw, %bb.o ]
  %.pr.pr.i = load ptr, ptr %i.bo, align 8, !tbaa !39
  %i.cf = icmp eq ptr %.pr.pr.i, null
  br i1 %i.cf, label %ipallocztm_explicit_slab.exit.thread.sink.split.i, label %tsd_tcache_data_init_impl.exit

ipallocztm_explicit_slab.exit.thread.sink.split.i: ; preds = %arena_choose.exit.i, %bb.m, %arena_get.exit42.i
  %.02750.sink.i = phi ptr [ %i.br, %arena_get.exit42.i ], [ %.027.ph.ph.i, %arena_choose.exit.i ], [ %1, %bb.m ]
  call void @duckdb_je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %.02750.sink.i)
  br label %tsd_tcache_data_init_impl.exit

tsd_tcache_data_init_impl.exit:                   ; preds = %tsdn_witness_tsdp_get.exit.i.i, %ipallocztm_explicit_slab.exit.i, %bb.t, %arena_choose.exit.i, %ipallocztm_explicit_slab.exit.thread.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_enabled_set(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !10, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %.not = xor i1 %i.b, true                       ; 2 uses
  %or.cond = and i1 %1, %.not
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @duckdb_je_tsd_tcache_data_init(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @opt_tcache_ncached_max)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %or.cond4 = or i1 %1, %.not
  br i1 %or.cond4, label %bb.d, label %duckdb_je_tcache_cleanup.exit

duckdb_je_tcache_cleanup.exit:                    ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 864
  tail call fastcc void @tcache_destroy(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i1 noundef zeroext true)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 872
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1752) %i.d, i8 0, i64 1752, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %duckdb_je_tcache_cleanup.exit, %bb.b
  %i.e = zext i1 %1 to i8
  store i8 %i.e, ptr %0, align 1, !tbaa !10
  tail call void @duckdb_je_tsd_slow_update(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_cleanup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !10, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 864
  tail call fastcc void @tcache_destroy(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i1 noundef zeroext true)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 872
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1752) %i.d, i8 0, i64 1752, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_thread_tcache_max_set(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [73 x %struct.cache_bin_info_s], align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(146) %2, i8 0, i64 146, i1 false)
  %i.c = load i8, ptr %0, align 8, !tbaa !10, !range !12, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.i = getelementptr i8, ptr %i.h, i64 30
  %.val.i = load i16, ptr %i.i, align 2, !tbaa !34
  call void @duckdb_je_cache_bin_info_init(ptr noundef nonnull %i.g, i16 noundef zeroext %.val.i) #15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 73
  br i1 %exitcond.not.i, label %tcache_bin_settings_backup.exit, label %bb.c

tcache_bin_settings_backup.exit:                  ; preds = %bb.c
  %i.j = load i8, ptr %0, align 1, !tbaa !10, !range !12, !noundef !13
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %duckdb_je_tcache_cleanup.exit

bb.d:                                             ; preds = %tcache_bin_settings_backup.exit
  call fastcc void @tcache_destroy(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i1 noundef zeroext true)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 872
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1752) %i.l, i8 0, i64 1752, i1 false)
  br label %duckdb_je_tcache_cleanup.exit

duckdb_je_tcache_cleanup.exit:                    ; preds = %tcache_bin_settings_backup.exit, %bb.d
  %i.m = icmp ult i64 %1, 4097
  br i1 %i.m, label %bb.e, label %bb.f, !prof !119

bb.e:                                             ; preds = %duckdb_je_tcache_cleanup.exit
  %i.n = add nuw nsw i64 %1, 7
  %i.o = lshr i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !33
  %i.r = zext i8 %i.q to i32
  br label %tcache_max_set.exit

bb.f:                                             ; preds = %duckdb_je_tcache_cleanup.exit
  %i.s = call fastcc i32 @sz_size2index_compute(i64 noundef %1)
  br label %tcache_max_set.exit

tcache_max_set.exit:                              ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.r, %bb.e ], [ %i.s, %bb.f ]
  %i.t = add nuw nsw i32 %.0.i.i, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.t, ptr %i.u, align 8, !tbaa !35
  call fastcc void @duckdb_je_tsd_tcache_data_init(ptr noundef nonnull %0, ptr noundef %i.f, ptr noundef nonnull %2)
  br label %bb.i

.critedge:                                        ; preds = %bb.a
  %i.v = icmp ult i64 %1, 4097
  br i1 %i.v, label %bb.g, label %bb.h, !prof !119

bb.g:                                             ; preds = %.critedge
  %i.w = add nuw nsw i64 %1, 7
  %i.x = lshr i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !33
  %i.aa = zext i8 %i.z to i32
  br label %tcache_max_set.exit12

bb.h:                                             ; preds = %.critedge
  %i.ab = tail call fastcc i32 @sz_size2index_compute(i64 noundef %1)
  br label %tcache_max_set.exit12

tcache_max_set.exit12:                            ; preds = %bb.g, %bb.h
  %.0.i.i11 = phi i32 [ %i.aa, %bb.g ], [ %i.ab, %bb.h ]
  %i.ac = add nuw nsw i32 %.0.i.i11, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %tcache_max_set.exit12, %tcache_max_set.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @tcache_bin_info_default_init(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @tcache_bin_info_settings_parse(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @opt_tcache_ncached_max, ptr noundef nonnull @opt_tcache_ncached_max_set)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @tcache_bin_info_settings_parse(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef writeonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !138
  store i64 %1, ptr %i.b, align 8, !tbaa !8
  %.not15 = icmp eq ptr %3, null
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.f = call zeroext i1 @duckdb_je_multi_setting_parse_next(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #15 ; 2 uses
  br i1 %i.f, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.d, align 8              ; 2 uses
  %i.h = icmp ugt i64 %i.g, 8388608
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 8388608, ptr %i.d, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i64 [ 8388608, %bb.d ], [ %i.g, %bb.c ] ; 4 uses
  %i.j = load i64, ptr %i.c, align 8, !tbaa !8    ; 5 uses
  %i.k = icmp ugt i64 %i.j, 8388608
  %i.l = icmp ugt i64 %i.j, %i.i
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = icmp samesign ult i64 %i.j, 9
  br i1 %i.m, label %sz_size2index_compute.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = shl nuw nsw i64 %i.j, 1
  %i.o = add nsw i64 %i.n, -1
  %i.p = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.o, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = xor i32 %i.q, 63                         ; 2 uses
  %i.s = call i32 @llvm.usub.sat.i32(i32 %i.r, i32 6)
  %i.t = shl nuw nsw i32 %i.s, 2
  %i.u = call i32 @llvm.umax.i32(i32 %i.r, i32 7)
  %i.v = add nsw i32 %i.u, -3
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = shl nsw i64 -1, %i.w
  %i.y = add nsw i64 %i.j, -1
  %i.z = and i64 %i.x, %i.y
  %i.aa = lshr i64 %i.z, %i.w
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 3
  %i.ad = or disjoint i32 %i.t, 1
  %i.ae = add nuw nsw i32 %i.ad, %i.ac
  br label %sz_size2index_compute.exit

sz_size2index_compute.exit:                       ; preds = %bb.g, %bb.f
  %.0.i = phi i32 [ %i.ae, %bb.g ], [ 0, %bb.f ]  ; 3 uses
  %i.af = icmp samesign ult i64 %i.i, 9
  br i1 %i.af, label %sz_size2index_compute.exit19, label %bb.h

bb.h:                                             ; preds = %sz_size2index_compute.exit
  %i.ag = shl nuw nsw i64 %i.i, 1
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = xor i32 %i.aj, 63                       ; 2 uses
  %i.al = call i32 @llvm.usub.sat.i32(i32 %i.ak, i32 6)
  %i.am = shl nuw nsw i32 %i.al, 2
  %i.an = call i32 @llvm.umax.i32(i32 %i.ak, i32 7)
  %i.ao = add nsw i32 %i.an, -3
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = shl nsw i64 -1, %i.ap
  %i.ar = add nsw i64 %i.i, -1
  %i.as = and i64 %i.aq, %i.ar
  %i.at = lshr i64 %i.as, %i.ap
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = and i32 %i.au, 3
  %i.aw = or disjoint i32 %i.am, 1
  %i.ax = add nuw nsw i32 %i.aw, %i.av
  br label %sz_size2index_compute.exit19

sz_size2index_compute.exit19:                     ; preds = %sz_size2index_compute.exit, %bb.h
  %.0.i18 = phi i32 [ %i.ax, %bb.h ], [ 0, %sz_size2index_compute.exit ] ; 3 uses
  %i.ay = load i64, ptr %i.e, align 8, !tbaa !8
  %i.az = icmp ugt i64 %i.ay, 8191
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %sz_size2index_compute.exit19
  store i64 8191, ptr %i.e, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %sz_size2index_compute.exit19
  %.not23 = icmp samesign ugt i32 %.0.i, %.0.i18
  br i1 %.not23, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  br i1 %.not15, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.024.us = phi i32 [ %i.be, %.lr.ph.split.us ], [ %.0.i, %.lr.ph ] ; 3 uses
  %i.ba = zext nneg i32 %.024.us to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ba
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !8
  %i.bd = trunc i64 %i.bc to i16
  call void @duckdb_je_cache_bin_info_init(ptr noundef %i.bb, i16 noundef zeroext %i.bd) #15
  %i.be = add nuw nsw i32 %.024.us, 1
  %.not.us.not = icmp ult i32 %.024.us, %.0.i18
  br i1 %.not.us.not, label %.lr.ph.split.us, label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.024 = phi i32 [ %i.bk, %.lr.ph.split ], [ %.0.i, %.lr.ph ] ; 3 uses
  %i.bf = zext nneg i32 %.024 to i64              ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bf
  %i.bh = load i64, ptr %i.e, align 8, !tbaa !8
  %i.bi = trunc i64 %i.bh to i16
  call void @duckdb_je_cache_bin_info_init(ptr noundef %i.bg, i16 noundef zeroext %i.bi) #15
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 %i.bf
  store i8 1, ptr %i.bj, align 1, !tbaa !10
  %i.bk = add nuw nsw i32 %.024, 1
  %.not.not = icmp ult i32 %.024, %.0.i18
  br i1 %.not.not, label %.lr.ph.split, label %.loopexit

end_hunk_1
begin_hunk_2_@duckdb_je_tcache_stats_merge:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 5 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv ; 4 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.g = icmp eq ptr %.val, @duckdb_je_disabled_bin
  br i1 %i.g, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i64 %indvars.iv, 36
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  %i.j = tail call ptr @duckdb_je_arena_bin_choose(ptr noundef %0, ptr noundef %2, i32 noundef %i.i, ptr noundef null) #15 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %i.l = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.k) #15
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull %i.j) #15
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store atomic i8 1, ptr %i.m monotonic, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !43
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48
  %.not.i.i = icmp eq ptr %i.r, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr %i.q, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !53
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !53
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.f, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !63
  %i.z = add i64 %i.y, %i.w
  store i64 %i.z, ptr %i.x, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store atomic i8 0, ptr %i.aa monotonic, align 8
  %i.ab = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #15 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !62
  %i.ae = getelementptr [48 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = atomicrmw add ptr %i.af, i64 %i.ad monotonic, align 8 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ai = atomicrmw add ptr %i.ah, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %malloc_mutex_lock.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !62
  %.pre = load ptr, ptr %1, align 8, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.i
  %i.ak = phi ptr [ %i.e, %bb.b ], [ %.pre, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 48
  %.val23 = load i32, ptr %i.al, align 8, !tbaa !35
  %i.am = zext i32 %.val23 to i64
  %i.an = icmp samesign ult i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge
}

declare ptr @duckdb_je_arena_bin_choose(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @duckdb_je_tcaches_create(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 {
tsdn_witness_tsdp_get.exit18:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 72)) #15
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %tsdn_witness_tsdp_get.exit18
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @tcaches_mtx) #15
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 64) monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %tsdn_witness_tsdp_get.exit18
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 56), align 8, !tbaa !43
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 56), align 8, !tbaa !43
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 48), align 8, !tbaa !48
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 48), align 8, !tbaa !48
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 40), align 8, !tbaa !53
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 40), align 8, !tbaa !53
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.b, %bb.c
  %i.g = load ptr, ptr @duckdb_je_tcaches, align 8, !tbaa !140
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %tcaches_create_prep.exit

bb.d:                                             ; preds = %malloc_mutex_lock.exit
  %i.i = tail call ptr @duckdb_je_base_alloc(ptr noundef %0, ptr noundef %1, i64 noundef 32752, i64 noundef 64) #15 ; 2 uses
  store ptr %i.i, ptr @duckdb_je_tcaches, align 8, !tbaa !140
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %tcaches_create_prep.exit.thread, label %tcaches_create_prep.exit

tcaches_create_prep.exit:                         ; preds = %malloc_mutex_lock.exit, %bb.d
  %i.k = load ptr, ptr @tcaches_avail, align 8, !tbaa !140
  %i.l = icmp eq ptr %i.k, null
  %i.m = load i32, ptr @tcaches_past, align 4
  %i.n = icmp ugt i32 %i.m, 4093
  %or.cond.i = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond.i, label %tcaches_create_prep.exit.thread, label %bb.e

bb.e:                                             ; preds = %tcaches_create_prep.exit
  %i.o = tail call ptr @duckdb_je_tcache_create_explicit(ptr noundef %0) ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %tcaches_create_prep.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @tcaches_avail, align 8, !tbaa !140 ; 4 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33
  store ptr %i.r, ptr @tcaches_avail, align 8, !tbaa !140
  store ptr %i.o, ptr %i.q, align 8, !tbaa !33
  %i.s = load ptr, ptr @duckdb_je_tcaches, align 8, !tbaa !140
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 3
  %i.x = trunc i64 %i.w to i32
  store i32 %i.x, ptr %2, align 4, !tbaa !3
  br label %tcaches_create_prep.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.y = load ptr, ptr @duckdb_je_tcaches, align 8, !tbaa !140
  %i.z = load i32, ptr @tcaches_past, align 4, !tbaa !3 ; 3 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.aa
  store ptr %i.o, ptr %i.ab, align 8, !tbaa !33
  store i32 %i.z, ptr %2, align 4, !tbaa !3
  %i.ac = add i32 %i.z, 1
  store i32 %i.ac, ptr @tcaches_past, align 4, !tbaa !3
  br label %tcaches_create_prep.exit.thread

tcaches_create_prep.exit.thread:                  ; preds = %bb.d, %bb.g, %bb.h, %bb.e, %tcaches_create_prep.exit
  %.0 = phi i1 [ true, %bb.e ], [ true, %tcaches_create_prep.exit ], [ false, %bb.h ], [ false, %bb.g ], [ true, %bb.d ]
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 64) monotonic, align 8
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 72)) #15 ; 0 uses
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcaches_flush(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 72)) #15
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @tcaches_mtx) #15
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 64) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 56), align 8, !tbaa !43
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 56), align 8, !tbaa !43
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 48), align 8, !tbaa !48
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 48), align 8, !tbaa !48
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 40), align 8, !tbaa !53
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 40), align 8, !tbaa !53
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.g = load ptr, ptr @duckdb_je_tcaches, align 8, !tbaa !140
  %i.h = zext i32 %1 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %tcaches_elm_remove.exit.thread, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  store ptr inttoptr (i64 1 to ptr), ptr %i.i, align 8, !tbaa !33
  %i.l = icmp eq ptr %i.j, inttoptr (i64 1 to ptr)
  br i1 %i.l, label %tcaches_elm_remove.exit.thread, label %tcaches_elm_remove.exit

tcaches_elm_remove.exit.thread:                   ; preds = %malloc_mutex_lock.exit, %bb.e
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 64) monotonic, align 8
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 72)) #15 ; 0 uses
  br label %bb.f

tcaches_elm_remove.exit:                          ; preds = %bb.e
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 64) monotonic, align 8
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 72)) #15 ; 0 uses
  tail call fastcc void @tcache_destroy(ptr noundef %0, ptr noundef nonnull %i.j, i1 noundef zeroext false)
  br label %bb.f

bb.f:                                             ; preds = %tcaches_elm_remove.exit.thread, %tcaches_elm_remove.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcaches_destroy(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 72)) #15
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @duckdb_je_malloc_mutex_lock_slow(ptr noundef nonnull @tcaches_mtx) #15
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 64) monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 56), align 8, !tbaa !43
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 56), align 8, !tbaa !43
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 48), align 8, !tbaa !48
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 48), align 8, !tbaa !48
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 40), align 8, !tbaa !53
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 40), align 8, !tbaa !53
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.g = load ptr, ptr @duckdb_je_tcaches, align 8, !tbaa !140
  %i.h = zext i32 %1 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 2 uses
  %switch = icmp ult ptr %i.j, inttoptr (i64 2 to ptr)
  %i.k = load ptr, ptr @tcaches_avail, align 8, !tbaa !140
  store ptr %i.k, ptr %i.i, align 8, !tbaa !33
  store ptr %i.i, ptr @tcaches_avail, align 8, !tbaa !140
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 64) monotonic, align 8
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 72)) #15 ; 0 uses
  br i1 %switch, label %bb.f, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  tail call fastcc void @tcache_destroy(ptr noundef %0, ptr noundef nonnull %i.j, i1 noundef zeroext false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %malloc_mutex_lock.exit
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @duckdb_je_tcache_boot(ptr noundef readnone captures(none) %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @duckdb_je_opt_tcache_max, align 8, !tbaa !8 ; 5 uses
  %i.b = icmp ult i64 %i.a, 4097
  br i1 %i.b, label %bb.b, label %bb.c, !prof !119

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw nsw i64 %i.a, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !33
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @duckdb_je_sz_index2size_tab, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !8
  br label %sz_s2u.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.a, 8070450532247928832
  br i1 %i.j, label %sz_s2u.exit.thread, label %bb.d, !prof !7

sz_s2u.exit.thread:                               ; preds = %bb.c
  store i64 0, ptr @duckdb_je_global_do_not_change_tcache_maxclass, align 8, !tbaa !8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.a, 1
  %i.l = add i64 %i.k, -1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.l, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.m
  %i.n = lshr i64 1152921504606846975, %i.m
  %i.o = add nuw nsw i64 %i.a, %i.n
  %i.p = and i64 %i.o, %notmask.i
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.d, %bb.b
  %.0.i1 = phi i64 [ %i.i, %bb.b ], [ %i.p, %bb.d ] ; 4 uses
  store i64 %.0.i1, ptr @duckdb_je_global_do_not_change_tcache_maxclass, align 8, !tbaa !8
  %i.q = icmp ult i64 %.0.i1, 4097
  br i1 %i.q, label %bb.e, label %bb.f, !prof !142

bb.e:                                             ; preds = %sz_s2u.exit.thread, %sz_s2u.exit
  %.0.i14 = phi i64 [ 0, %sz_s2u.exit.thread ], [ %.0.i1, %sz_s2u.exit ]
  %i.r = add nuw nsw i64 %.0.i14, 7
  %i.s = lshr i64 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr @duckdb_je_sz_size2index_tab, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !33
  %i.v = zext i8 %i.u to i32
  br label %sz_size2index.exit

bb.f:                                             ; preds = %sz_s2u.exit
  %i.w = tail call fastcc i32 @sz_size2index_compute(i64 noundef %.0.i1)
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.v, %bb.e ], [ %i.w, %bb.f ]
  %i.x = add nuw nsw i32 %.0.i, 1
  store i32 %i.x, ptr @duckdb_je_global_do_not_change_tcache_nbins, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %sz_size2index.exit
  %indvars.iv.i = phi i64 [ 0, %sz_size2index.exit ], [ %indvars.iv.next.i, %bb.l ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr @opt_tcache_ncached_max_set, i64 %indvars.iv.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !10, !range !12, !noundef !13
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @opt_tcache_ncached_max, i64 %indvars.iv.i
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !137
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ad = icmp samesign ugt i64 %indvars.iv.i, 35
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = load i32, ptr @duckdb_je_opt_tcache_nslots_large, align 4, !tbaa !3
  br label %tcache_ncached_max_compute.exit.i

bb.k:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw [40 x i8], ptr @duckdb_je_bin_infos, i64 %indvars.iv.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !65 ; 2 uses
  %i.ai = load i32, ptr @duckdb_je_opt_tcache_nslots_small_min, align 4, !tbaa !3 ; 2 uses
  %i.aj = load i32, ptr @duckdb_je_opt_tcache_nslots_small_max, align 4, !tbaa !3
  %spec.store.select.i.i = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 8191)
  %i.ak = and i32 %i.ai, 1
  %spec.select.i.i = add i32 %i.ak, %i.ai         ; 2 uses
  %.025.i.i = and i32 %spec.store.select.i.i, 8190 ; 2 uses
  %spec.store.select2.i.i = tail call i32 @llvm.umax.i32(i32 %.025.i.i, i32 2) ; 2 uses
  %i.al = icmp ugt i32 %spec.select.i.i, %spec.store.select2.i.i
  %minmaxop.i.i = select i1 %i.al, i32 %.025.i.i, i32 %spec.select.i.i
  %.127.i.i = tail call i32 @llvm.umax.i32(i32 %minmaxop.i.i, i32 2) ; 2 uses
  %i.am = load i64, ptr @duckdb_je_opt_lg_tcache_nslots_mul, align 8, !tbaa !8 ; 2 uses
  %i.an = icmp slt i64 %i.am, 0
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  %i.ap = sub i32 0, %i.ao
  %i.aq = lshr i32 %i.ah, %i.ap
  %i.ar = shl i32 %i.ah, %i.ao
  %.0.i.i = select i1 %i.an, i32 %i.aq, i32 %i.ar ; 2 uses
  %i.as = and i32 %.0.i.i, 1
  %.1.i.i = add i32 %i.as, %.0.i.i                ; 2 uses
  %.not35.i.i = icmp ugt i32 %.1.i.i, %.127.i.i
  %spec.store.select2..1.i.i = tail call i32 @llvm.umin.i32(i32 %.1.i.i, i32 %spec.store.select2.i.i)
  %.028.i.i = select i1 %.not35.i.i, i32 %spec.store.select2..1.i.i, i32 %.127.i.i
  br label %tcache_ncached_max_compute.exit.i

tcache_ncached_max_compute.exit.i:                ; preds = %bb.k, %bb.j
  %.129.i.i = phi i32 [ %i.ae, %bb.j ], [ %.028.i.i, %bb.k ]
  %i.at = trunc i32 %.129.i.i to i16
  br label %bb.l

bb.l:                                             ; preds = %tcache_ncached_max_compute.exit.i, %bb.h
  %i.au = phi i16 [ %i.ac, %bb.h ], [ %i.at, %tcache_ncached_max_compute.exit.i ]
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @opt_tcache_ncached_max, i64 %indvars.iv.i
  tail call void @duckdb_je_cache_bin_info_init(ptr noundef nonnull %i.av, i16 noundef zeroext %i.au) #15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 73
  br i1 %exitcond.not.i, label %tcache_bin_info_compute.exit, label %bb.g

tcache_bin_info_compute.exit:                     ; preds = %bb.l
  %i.aw = tail call zeroext i1 @duckdb_je_malloc_mutex_init(ptr noundef nonnull @tcaches_mtx, ptr noundef nonnull @.str, i32 noundef 3, i32 noundef 0) #15
  ret i1 %i.aw
}

declare zeroext i1 @duckdb_je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_prefork(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @duckdb_je_malloc_mutex_prefork(ptr noundef %0, ptr noundef nonnull @tcaches_mtx) #15
  ret void
}

declare void @duckdb_je_malloc_mutex_prefork(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_postfork_parent(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @duckdb_je_malloc_mutex_postfork_parent(ptr noundef %0, ptr noundef nonnull @tcaches_mtx) #15
  ret void
}

declare void @duckdb_je_malloc_mutex_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @duckdb_je_tcache_postfork_child(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @duckdb_je_malloc_mutex_postfork_child(ptr noundef %0, ptr noundef nonnull @tcaches_mtx) #15
  ret void
}

declare void @duckdb_je_malloc_mutex_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @duckdb_je_tcache_assert_initialized(ptr noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = lshr i64 %2, 30
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %2, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !143  ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !119

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !146
  %i.i = lshr i64 %2, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %atomic_load_p.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !143
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !119

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !143
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !119

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
end_hunk_2
