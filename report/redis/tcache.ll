inline.NumInlined: 171
inline.NumDeleted: 65
begin_hunk_0_@je_tcache_bin_flush_small:bb.a

bb.n:                                             ; preds = %bb.m
  tail call void @je_arena_dalloc_bin_locked_handle_newly_nonempty(ptr noundef %0, ptr noundef %i.ak, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.as) #13
  br label %arena_dalloc_bin_locked_step.exit.thread

bb.o:                                             ; preds = %bb.k
  tail call void @je_arena_dalloc_bin_locked_handle_newly_empty(ptr noundef %0, ptr noundef %i.ak, ptr noundef nonnull %i.cq, ptr noundef %i.as) #13
  %i.dx = zext i32 %.1.i27 to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.dx
  store ptr %i.cq, ptr %i.dy, align 8, !tbaa !81
  %i.dz = add i32 %.1.i27, 1
  br label %arena_dalloc_bin_locked_step.exit.thread

arena_dalloc_bin_locked_step.exit.thread:         ; preds = %bb.n, %bb.m, %bb.l, %bb.o, %tcache_bin_flush_match.exit.thread
  %.sroa.6.1 = phi i64 [ %i.dp, %bb.o ], [ %.sroa.6.024, %tcache_bin_flush_match.exit.thread ], [ %i.dp, %bb.l ], [ %i.dp, %bb.m ], [ %i.dp, %bb.n ] ; 3 uses
  %.1132.i = phi i32 [ %.0131.i25, %bb.o ], [ %i.da, %tcache_bin_flush_match.exit.thread ], [ %.0131.i25, %bb.l ], [ %.0131.i25, %bb.m ], [ %.0131.i25, %bb.n ] ; 4 uses
  %.3.i = phi i32 [ %i.dz, %bb.o ], [ %.1.i27, %tcache_bin_flush_match.exit.thread ], [ %.1.i27, %bb.l ], [ %.1.i27, %bb.m ], [ %.1.i27, %bb.n ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.g, label %bb.j, !llvm.loop !82

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  br i1 %i.ag, label %tcache_bin_flush_impl.exit, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv35 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next36, %.lr.ph ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv35
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !81 ; 2 uses
  %.val14 = load i64, ptr %i.eb, align 8, !tbaa !48
  %i.ec = and i64 %.val14, 4095
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ec
  %i.ee = load atomic ptr, ptr %i.ed monotonic, align 8
  tail call void @je_arena_slab_dalloc(ptr noundef %0, ptr noundef %i.ee, ptr noundef nonnull %i.eb) #13
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %._crit_edge, label %.lr.ph, !llvm.loop !83

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.ef = tail call ptr @je_arena_bin_choose(ptr noundef %0, ptr noundef %i.r, i32 noundef %3, ptr noundef null) #13 ; 9 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 64 ; 2 uses
  %i.eh = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.eg) #13
  %.not.i19 = icmp eq i32 %i.eh, 0
  br i1 %.not.i19, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge.thread
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ef) #13
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 104
  store atomic i8 1, ptr %i.ei monotonic, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 56 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !51
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !51
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 48 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !56
  %.not.i.i20 = icmp eq ptr %i.en, %0
  br i1 %.not.i.i20, label %malloc_mutex_lock.exit21, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %0, ptr %i.em, align 8, !tbaa !56
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 40 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !57
  %i.eq = add i64 %i.ep, 1
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !57
  br label %malloc_mutex_lock.exit21

malloc_mutex_lock.exit21:                         ; preds = %bb.q, %bb.r
  %i.er = getelementptr inbounds nuw i8, ptr %i.ef, i64 152 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !58
  %i.et = add i64 %i.es, 1
  store i64 %i.et, ptr %i.er, align 8, !tbaa !58
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !67
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ef, i64 128 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !68
  %i.ey = add i64 %i.ex, %i.ev
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !68
  store i64 0, ptr %i.eu, align 8, !tbaa !67
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ef, i64 104
  store atomic i8 0, ptr %i.ez monotonic, align 8
  %i.fa = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.eg) #13 ; 0 uses
  br label %tcache_bin_flush_impl.exit

tcache_bin_flush_impl.exit:                       ; preds = %._crit_edge, %malloc_mutex_lock.exit21
  call void @llvm.stackrestore.p0(ptr %savedstack)
  %.val.i = load ptr, ptr %2, align 8, !tbaa !36  ; 3 uses
  %.val10.i = load i16, ptr %i.a, align 4, !tbaa !34
  %i.fb = ptrtoint ptr %.val.i to i64
  %i.fc = trunc i64 %i.fb to i16
  %i.fd = sub i16 %.val10.i, %i.fc
  %i.fe = lshr i16 %i.fd, 3
  %i.ff = zext nneg i16 %i.fe to i64
  %i.fg = sub nsw i64 %i.ff, %i.l
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.l
  %i.fi = shl nsw i64 %i.fg, 3
  %i.fj = and i64 %i.fi, 34359738360
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fh, ptr align 8 %.val.i, i64 %i.fj, i1 false)
  %i.fk = load ptr, ptr %2, align 8, !tbaa !36
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.l ; 2 uses
  store ptr %i.fl, ptr %2, align 8, !tbaa !36
  %.val3.i.i = load i16, ptr %i.a, align 4, !tbaa !34 ; 2 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = trunc i64 %i.fm to i16                  ; 2 uses
  %i.fo = sub i16 %.val3.i.i, %i.fn
  %i.fp = lshr i16 %i.fo, 3
  %i.fq = getelementptr i8, ptr %2, i64 16        ; 2 uses
  %.val4.i.i = load i16, ptr %i.fq, align 8, !tbaa !29
  %i.fr = sub i16 %.val3.i.i, %.val4.i.i
  %i.fs = lshr i16 %i.fr, 3
  %i.ft = icmp samesign ult i16 %i.fp, %i.fs
  br i1 %i.ft, label %bb.s, label %cache_bin_finish_flush.exit

bb.s:                                             ; preds = %tcache_bin_flush_impl.exit
  store i16 %i.fn, ptr %i.fq, align 8, !tbaa !29
  br label %cache_bin_finish_flush.exit

cache_bin_finish_flush.exit:                      ; preds = %tcache_bin_flush_impl.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_tcache_bin_flush_large(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.cache_bin_ptr_array_s, align 8 ; 5 uses
  tail call void @je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext false)
  %.val = load ptr, ptr %2, align 8, !tbaa !36
  %i.a = getelementptr i8, ptr %2, i64 20         ; 3 uses
  %.val6 = load i16, ptr %i.a, align 4, !tbaa !34
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = trunc i64 %i.b to i16
  %i.d = sub i16 %.val6, %i.c                     ; 2 uses
  %i.e = lshr i16 %i.d, 3
  %i.f = zext nneg i16 %i.e to i32
  %i.g = sub i32 %i.f, %4                         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.h = trunc i32 %i.g to i16
  store i16 %i.h, ptr %5, align 8, !tbaa !44
  %i.i = zext i16 %i.d to i64
  %i.j = add i64 %i.i, %i.b
  %i.k = inttoptr i64 %i.j to ptr
  %.mask = and i32 %i.g, 65535
  %i.l = zext nneg i32 %.mask to i64              ; 4 uses
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !46
  %savedstack = tail call ptr @llvm.stacksave.p0()
  %i.p = load ptr, ptr %1, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47   ; 3 uses
  %i.s = add i32 %i.g, 1
  %i.t = zext i32 %i.s to i64
  %6 = alloca %union.emap_batch_lookup_result_u, i64 %i.t, align 16 ; 5 uses
  %i.u = zext i32 %i.g to i64
  call fastcc void @tcache_bin_flush_edatas_lookup(ptr noundef %0, ptr noundef nonnull %5, i64 noundef %i.u, ptr noundef %6)
  %.not.i20 = icmp eq i32 %i.g, 0
  br i1 %.not.i20, label %._crit_edge.thread, label %arena_get.exit.lr.ph

arena_get.exit.lr.ph:                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = zext i32 %3 to i64
  %i.x = getelementptr i8, ptr %i.r, i64 -896
  %i.y = getelementptr [48 x i8], ptr %i.x, i64 %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ab = icmp eq ptr %0, null
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 156
  br label %arena_get.exit

arena_get.exit:                                   ; preds = %arena_get.exit.lr.ph, %arena_decay_ticks.exit
  %.0.i22 = phi i32 [ %i.g, %arena_get.exit.lr.ph ], [ %.1132.i, %arena_decay_ticks.exit ] ; 2 uses
  %.0128.i21 = phi i8 [ 0, %arena_get.exit.lr.ph ], [ %.1129.i, %arena_decay_ticks.exit ] ; 2 uses
  %i.af = load ptr, ptr %6, align 16, !tbaa !35
  %.val9 = load i64, ptr %i.af, align 8, !tbaa !48 ; 2 uses
  %i.ag = trunc i64 %.val9 to i32
  %i.ah = and i32 %i.ag, 4095                     ; 2 uses
  %i.ai = and i64 %.val9, 4095
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ai
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8 ; 11 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 78928  ; 2 uses
  %.val11 = load i32, ptr %i.al, align 8, !tbaa !84
  %i.am = load i32, ptr @je_manual_arena_base, align 4, !tbaa !7
  %i.an = icmp ult i32 %.val11, %i.am
  br i1 %i.an, label %malloc_mutex_lock.exit, label %bb.b

bb.b:                                             ; preds = %arena_get.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 10600
  %i.ap = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ao) #13
  %.not.i16 = icmp eq i32 %i.ap, 0
  br i1 %.not.i16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 10536
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.aq) #13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 10640
  store atomic i8 1, ptr %i.ar monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 10592 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !51
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 10584 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !56
  %.not.i.i = icmp eq ptr %i.aw, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr %i.av, align 8, !tbaa !56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 10576 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !57
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !57
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.e, %bb.d, %arena_get.exit
  %i.ba = icmp ne ptr %i.r, %i.ak
  %i.bb = trunc nuw i8 %.0128.i21 to i1
  %or.cond.i = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %or.cond.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %malloc_mutex_lock.exit
  %i.bc = load i64, ptr %i.v, align 8, !tbaa !67
  %i.bd = atomicrmw add ptr %i.z, i64 %i.bc monotonic, align 8 ; 0 uses
  %i.be = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8 ; 0 uses
  store i64 0, ptr %i.v, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %malloc_mutex_lock.exit
  %.1129.i = phi i8 [ %.0128.i21, %malloc_mutex_lock.exit ], [ 1, %bb.f ] ; 2 uses
  %wide.trip.count = zext i32 %.0.i22 to i64      ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.j
  %indvars.iv = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !35 ; 2 uses
  %.val8 = load i64, ptr %i.bg, align 8, !tbaa !48
  %i.bh = trunc i64 %.val8 to i32
  %i.bi = and i32 %i.bh, 4095
  %i.bj = icmp eq i32 %i.bi, %i.ah
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @je_large_dalloc_prep_locked(ptr noundef %0, ptr noundef nonnull %i.bg) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.k, label %bb.h, !llvm.loop !124

bb.k:                                             ; preds = %bb.j
  %.val10 = load i32, ptr %i.al, align 8, !tbaa !84
  %i.bk = load i32, ptr @je_manual_arena_base, align 4, !tbaa !7
  %i.bl = icmp ult i32 %.val10, %i.bk
  br i1 %i.bl, label %.critedge139.i.preheader, label %bb.l

.critedge139.i.preheader:                         ; preds = %bb.l, %bb.k
  br label %.critedge139.i

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ak, i64 10640
  store atomic i8 0, ptr %i.bm monotonic, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 10600
  %i.bo = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bn) #13 ; 0 uses
  br label %.critedge139.i.preheader

bb.m:                                             ; preds = %bb.r
  br i1 %i.ab, label %arena_decay_ticks.exit, label %bb.n, !prof !11

bb.n:                                             ; preds = %bb.m
  %.neg = sub i32 %.1132.i, %.0.i22
  %i.bp = load i32, ptr %i.ac, align 4, !tbaa !71
  %i.bq = add i32 %i.bp, %.neg                    ; 2 uses
  store i32 %i.bq, ptr %i.ac, align 4, !tbaa !71
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %bb.o, label %arena_decay_ticks.exit, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.bs = load i64, ptr %i.ad, align 8, !tbaa !12
  %i.bt = mul i64 %i.bs, 6364136223846793005
  %i.bu = add i64 %i.bt, 1442695040888963407      ; 2 uses
  store i64 %i.bu, ptr %i.ad, align 8, !tbaa !12
  %i.bv = lshr i64 %i.bu, 58
  %i.bw = load i32, ptr %i.ae, align 4, !tbaa !73
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.bv
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !35
  %i.ca = zext i8 %i.bz to i64
  %i.cb = mul nsw i64 %i.ca, %i.bx
  %i.cc = udiv i64 %i.cb, 61
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.ac, align 8, !tbaa !71
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.ak, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.n, %bb.m, %bb.o
  %.not.i = icmp eq i32 %.1132.i, 0
  br i1 %.not.i, label %._crit_edge, label %arena_get.exit, !llvm.loop !74

.critedge139.i:                                   ; preds = %.critedge139.i.preheader, %bb.r
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %bb.r ], [ 0, %.critedge139.i.preheader ] ; 3 uses
  %.0131.i18 = phi i32 [ %.1132.i, %bb.r ], [ 0, %.critedge139.i.preheader ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !35 ; 3 uses
  %.val7 = load i64, ptr %i.cf, align 8, !tbaa !48
  %i.cg = trunc i64 %.val7 to i32
  %i.ch = and i32 %i.cg, 4095
  %i.ci = icmp eq i32 %i.ch, %i.ah
  br i1 %i.ci, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge139.i
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !43
  %i.cl = zext i32 %.0131.i18 to i64              ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cl
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !43
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.cl
  store ptr %i.cf, ptr %i.cn, align 8, !tbaa !35
  %i.co = add i32 %.0131.i18, 1
  br label %bb.r

bb.q:                                             ; preds = %.critedge139.i
  tail call void @je_large_dalloc_finish(ptr noundef %0, ptr noundef nonnull %i.cf) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1132.i = phi i32 [ %i.co, %bb.p ], [ %.0131.i18, %bb.q ] ; 4 uses
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond29.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count
  br i1 %exitcond29.not, label %bb.m, label %.critedge139.i, !llvm.loop !82

._crit_edge:                                      ; preds = %arena_decay_ticks.exit
  %i.cp = trunc nuw i8 %.1129.i to i1
  br i1 %i.cp, label %tcache_bin_flush_impl.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !67
  %i.cs = zext i32 %3 to i64
  %i.ct = getelementptr i8, ptr %i.r, i64 -896
  %i.cu = getelementptr [48 x i8], ptr %i.ct, i64 %i.cs ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = atomicrmw add ptr %i.cv, i64 %i.cr monotonic, align 8 ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cy = atomicrmw add ptr %i.cx, i64 1 monotonic, align 8 ; 0 uses
  store i64 0, ptr %i.cq, align 8, !tbaa !67
  br label %tcache_bin_flush_impl.exit

tcache_bin_flush_impl.exit:                       ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.stackrestore.p0(ptr %savedstack)
  %.val.i = load ptr, ptr %2, align 8, !tbaa !36  ; 3 uses
  %.val10.i = load i16, ptr %i.a, align 4, !tbaa !34
  %i.cz = ptrtoint ptr %.val.i to i64
  %i.da = trunc i64 %i.cz to i16
  %i.db = sub i16 %.val10.i, %i.da
  %i.dc = lshr i16 %i.db, 3
  %i.dd = zext nneg i16 %i.dc to i64
  %i.de = sub nsw i64 %i.dd, %i.l
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.l
  %i.dg = shl nsw i64 %i.de, 3
  %i.dh = and i64 %i.dg, 34359738360
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.df, ptr align 8 %.val.i, i64 %i.dh, i1 false)
  %i.di = load ptr, ptr %2, align 8, !tbaa !36
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.l ; 2 uses
  store ptr %i.dj, ptr %2, align 8, !tbaa !36
  %.val3.i.i = load i16, ptr %i.a, align 4, !tbaa !34 ; 2 uses
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = trunc i64 %i.dk to i16                  ; 2 uses
  %i.dm = sub i16 %.val3.i.i, %i.dl
  %i.dn = lshr i16 %i.dm, 3
  %i.do = getelementptr i8, ptr %2, i64 16        ; 2 uses
  %.val4.i.i = load i16, ptr %i.do, align 8, !tbaa !29
  %i.dp = sub i16 %.val3.i.i, %.val4.i.i
  %i.dq = lshr i16 %i.dp, 3
  %i.dr = icmp samesign ult i16 %i.dn, %i.dq
  br i1 %i.dr, label %bb.s, label %cache_bin_finish_flush.exit

bb.s:                                             ; preds = %tcache_bin_flush_impl.exit
  store i16 %i.dl, ptr %i.do, align 8, !tbaa !29
  br label %cache_bin_finish_flush.exit

cache_bin_finish_flush.exit:                      ; preds = %tcache_bin_flush_impl.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_tcache_bin_flush_stashed(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.cache_bin_ptr_array_s, align 8 ; 5 uses
  %i.a = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !37
  %i.b = zext i32 %3 to i64                       ; 6 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %.val = load ptr, ptr %2, align 8, !tbaa !36
  %i.d = getelementptr i8, ptr %2, i64 20         ; 2 uses
  %.val24 = load i16, ptr %i.d, align 4, !tbaa !34 ; 2 uses
  %i.e = ptrtoint ptr %.val to i64                ; 2 uses
  %i.f = trunc i64 %i.e to i16
  %i.g = sub i16 %.val24, %i.f
  %.val27 = load i16, ptr %i.c, align 2, !tbaa !39 ; 2 uses
  %i.h = shl i16 %.val27, 3
  %.neg = sub i16 %i.h, %.val24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !125
  %i.k = add i16 %.neg, %i.j
  %i.l = lshr i16 %i.k, 3                         ; 4 uses
  %i.m = zext i16 %i.g to i64
  %i.n = add i64 %i.m, %i.e
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = zext i16 %.val27 to i64
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.q ; 6 uses
  %i.s = icmp eq i16 %i.l, 0
  br i1 %i.s, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = zext nneg i16 %i.l to i64                ; 2 uses
  %i.u = zext nneg i16 %i.l to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store i16 %i.l, ptr %5, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.r, ptr %i.v, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.b
  %i.x = load i64, ptr %i.w, align 8, !tbaa !12
  tail call void @je_san_check_stashed_ptrs(ptr noundef %i.r, i64 noundef %i.t, i64 noundef %i.x) #13
  %savedstack = tail call ptr @llvm.stacksave.p0()
  %i.y = load ptr, ptr %1, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47  ; 3 uses
  %i.ab = add nuw nsw i32 %i.u, 1
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %6 = alloca %union.emap_batch_lookup_result_u, i64 %i.ac, align 16 ; 7 uses
  call fastcc void @tcache_bin_flush_edatas_lookup(ptr noundef %0, ptr noundef nonnull %5, i64 noundef %i.t, ptr noundef %6)
  %i.ad = alloca ptr, i64 %i.ac, align 16         ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @je_arena_bin_offsets, i64 %i.b
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.ag = getelementptr i8, ptr %i.aa, i64 -896
  %i.ah = getelementptr [48 x i8], ptr %i.ag, i64 %i.b ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @je_arena_binind_div_info, i64 %i.b
  %i.al = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = icmp eq ptr %0, null
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 156
  br label %arena_get.exit

.preheader:                                       ; preds = %arena_decay_ticks.exit
  %.not = icmp eq i32 %.us-phi78, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count101 = zext i32 %.us-phi78 to i64
  br label %.lr.ph

arena_get.exit:                                   ; preds = %bb.b, %arena_decay_ticks.exit
  %.0.i81 = phi i32 [ %i.u, %bb.b ], [ %.us-phi77, %arena_decay_ticks.exit ] ; 4 uses
  %.0126.i80 = phi i32 [ 0, %bb.b ], [ %.us-phi78, %arena_decay_ticks.exit ] ; 2 uses
  %.0128.i79 = phi i8 [ 0, %bb.b ], [ %.1129.i64110, %arena_decay_ticks.exit ] ; 3 uses
  %i.ar = load ptr, ptr %6, align 16, !tbaa !35   ; 2 uses
  %.val37 = load i64, ptr %i.ar, align 8, !tbaa !48 ; 2 uses
  %i.as = trunc i64 %.val37 to i32
  %i.at = and i32 %i.as, 4095                     ; 3 uses
  %i.au = and i64 %.val37, 4095
  %i.av = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.au
  %i.aw = load atomic ptr, ptr %i.av acquire, align 8 ; 15 uses
  br i1 %4, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %arena_get.exit
  %.val39 = load i64, ptr %i.ar, align 8, !tbaa !48
  %i.ax = lshr i64 %.val39, 38                    ; 2 uses
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = and i32 %i.ay, 63                       ; 2 uses
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.bc = zext i32 %i.bb to i64
  %i.bd = add i64 %i.bc, %i.ba
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = and i64 %i.ax, 63
  %i.bg = getelementptr inbounds nuw [224 x i8], ptr %i.be, i64 %i.bf ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.bh) #13
  %.not.i48 = icmp eq i32 %i.bi, 0
  br i1 %.not.i48, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.bg) #13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  store atomic i8 1, ptr %i.bj monotonic, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 56 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !51
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !51
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 48 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !56
  %.not.i.i = icmp eq ptr %i.bo, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.bn, align 8, !tbaa !56
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 40 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !57
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !57
  br label %malloc_mutex_lock.exit

.critedge.i:                                      ; preds = %arena_get.exit
  %i.bs = getelementptr i8, ptr %i.aw, i64 78928
  %.val41 = load i32, ptr %i.bs, align 8, !tbaa !84
  %i.bt = load i32, ptr @je_manual_arena_base, align 4, !tbaa !7
  %i.bu = icmp ult i32 %.val41, %i.bt
  br i1 %i.bu, label %malloc_mutex_lock.exit, label %bb.g

bb.g:                                             ; preds = %.critedge.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 10600
  %i.bw = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.bv) #13
  %.not.i49 = icmp eq i32 %i.bw, 0
  br i1 %.not.i49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 10536
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.bx) #13
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 10640
  store atomic i8 1, ptr %i.by monotonic, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 10592 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !51
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !51
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aw, i64 10584 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !56
  %.not.i.i50 = icmp eq ptr %i.cd, %0
  br i1 %.not.i.i50, label %malloc_mutex_lock.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %0, ptr %i.cc, align 8, !tbaa !56
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aw, i64 10576 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !57
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !57
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.j, %bb.i, %bb.f, %bb.e, %.critedge.i
  %.0134.i60 = phi ptr [ %i.bg, %bb.f ], [ null, %.critedge.i ], [ %i.bg, %bb.e ], [ null, %bb.i ], [ null, %bb.j ] ; 9 uses
  %.0135.i58 = phi i32 [ %i.az, %bb.f ], [ 0, %.critedge.i ], [ %i.az, %bb.e ], [ 0, %bb.i ], [ 0, %bb.j ]
  %i.ch = icmp ne ptr %i.aa, %i.aw
  %i.ci = trunc nuw i8 %.0128.i79 to i1
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.ci
  br i1 %or.cond.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %malloc_mutex_lock.exit
  br i1 %4, label %.thread62, label %.thread

.thread62:                                        ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %.0134.i60, i64 152 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !58
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !58
  %i.cm = load i64, ptr %i.af, align 8, !tbaa !67
  %i.cn = getelementptr inbounds nuw i8, ptr %.0134.i60, i64 128 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !68
  %i.cp = add i64 %i.co, %i.cm
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !68
  store i64 0, ptr %i.af, align 8, !tbaa !67
  br label %.critedge139.i.thread

.thread:                                          ; preds = %bb.k
  %i.cq = load i64, ptr %i.af, align 8, !tbaa !67
  %i.cr = atomicrmw add ptr %i.ai, i64 %i.cq monotonic, align 8 ; 0 uses
  %i.cs = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8 ; 0 uses
  store i64 0, ptr %i.af, align 8, !tbaa !67
  br label %.preheader71.preheader

bb.l:                                             ; preds = %malloc_mutex_lock.exit
  br i1 %4, label %.critedge139.i.thread, label %.preheader71.preheader

.preheader71.preheader:                           ; preds = %.thread, %bb.l
  %.1129.i107 = phi i8 [ 1, %.thread ], [ %.0128.i79, %bb.l ] ; 2 uses
  %wide.trip.count = zext i32 %.0.i81 to i64
  br label %.preheader71

.preheader71:                                     ; preds = %.preheader71.preheader, %bb.n
  %indvars.iv = phi i64 [ 0, %.preheader71.preheader ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !35 ; 2 uses
  %.val36 = load i64, ptr %i.cu, align 8, !tbaa !48
  %i.cv = trunc i64 %.val36 to i32
  %i.cw = and i32 %i.cv, 4095
  %i.cx = icmp eq i32 %i.cw, %i.at
  br i1 %i.cx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader71
  tail call void @je_large_dalloc_prep_locked(ptr noundef %0, ptr noundef nonnull %i.cu) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.o, label %.preheader71, !llvm.loop !124

bb.o:                                             ; preds = %bb.n
  %i.cy = getelementptr i8, ptr %i.aw, i64 78928
  %.val40 = load i32, ptr %i.cy, align 8, !tbaa !84
  %i.cz = load i32, ptr @je_manual_arena_base, align 4, !tbaa !7
  %i.da = icmp ult i32 %.val40, %i.cz
  br i1 %i.da, label %.critedge139.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %i.aw, i64 10640
  store atomic i8 0, ptr %i.db monotonic, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aw, i64 10600
  %i.dd = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dc) #13 ; 0 uses
  br label %.critedge139.i

.critedge139.i.thread:                            ; preds = %.thread62, %bb.l
  %.1129.i65 = phi i8 [ 1, %.thread62 ], [ %.0128.i79, %bb.l ]
  %i.de = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.df = zext i32 %i.de to i64
  br label %.critedge139.i.split.us.preheader

.critedge139.i:                                   ; preds = %bb.o, %bb.p
  br i1 %4, label %.critedge139.i.split.us.preheader, label %.critedge139.i.split.preheader

.critedge139.i.split.preheader:                   ; preds = %.critedge139.i
  %umax88 = tail call i32 @llvm.umax.i32(i32 %.0.i81, i32 1)
  %wide.trip.count89 = zext i32 %umax88 to i64
  br label %.critedge139.i.split

.critedge139.i.split.us.preheader:                ; preds = %.critedge139.i.thread, %.critedge139.i
  %.sroa.0.0112 = phi i64 [ %i.df, %.critedge139.i.thread ], [ 0, %.critedge139.i ]
  %.1129.i64111 = phi i8 [ %.1129.i65, %.critedge139.i.thread ], [ %.1129.i107, %.critedge139.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.0134.i60, i64 192
  %umax94 = tail call i32 @llvm.umax.i32(i32 %.0.i81, i32 1)
  %wide.trip.count95 = zext i32 %umax94 to i64
  br label %.critedge139.i.split.us

.critedge139.i.split.us:                          ; preds = %.critedge139.i.split.us.preheader, %arena_dalloc_bin_locked_step.exit.thread.us
  %indvars.iv91 = phi i64 [ 0, %.critedge139.i.split.us.preheader ], [ %indvars.iv.next92, %arena_dalloc_bin_locked_step.exit.thread.us ] ; 3 uses
  %.1.i76.us = phi i32 [ %.0126.i80, %.critedge139.i.split.us.preheader ], [ %.3.i.us, %arena_dalloc_bin_locked_step.exit.thread.us ] ; 6 uses
  %.0131.i74.us = phi i32 [ 0, %.critedge139.i.split.us.preheader ], [ %.1132.i.us, %arena_dalloc_bin_locked_step.exit.thread.us ] ; 6 uses
  %.sroa.8.173.us = phi i64 [ 0, %.critedge139.i.split.us.preheader ], [ %.sroa.8.2.us, %arena_dalloc_bin_locked_step.exit.thread.us ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv91
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !43 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv91
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !35 ; 9 uses
  %.val34.us = load i64, ptr %i.dk, align 8, !tbaa !48 ; 3 uses
  %i.dl = trunc i64 %.val34.us to i32
  %i.dm = and i32 %i.dl, 4095
  %i.dn = icmp eq i32 %i.dm, %i.at
  br i1 %i.dn, label %tcache_bin_flush_match.exit.us, label %tcache_bin_flush_match.exit.thread.us

tcache_bin_flush_match.exit.us:                   ; preds = %.critedge139.i.split.us
  %i.do = lshr i64 %.val34.us, 38
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = and i32 %i.dp, 63
  %i.dr = icmp eq i32 %i.dq, %.0135.i58
  br i1 %i.dr, label %bb.q, label %tcache_bin_flush_match.exit.thread.us

tcache_bin_flush_match.exit.thread.us:            ; preds = %tcache_bin_flush_match.exit.us, %.critedge139.i.split.us
  %i.ds = zext i32 %.0131.i74.us to i64           ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ds
  store ptr %i.di, ptr %i.dt, align 8, !tbaa !43
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ds
  store ptr %i.dk, ptr %i.du, align 8, !tbaa !35
  %i.dv = add i32 %.0131.i74.us, 1
  br label %arena_dalloc_bin_locked_step.exit.thread.us

bb.q:                                             ; preds = %tcache_bin_flush_match.exit.us
  %i.dw = ptrtoint ptr %i.di to i64
  %i.dx = getelementptr i8, ptr %i.dk, i64 8
  %.val42.us = load ptr, ptr %i.dx, align 8, !tbaa !76
  %i.dy = ptrtoint ptr %.val42.us to i64
  %i.dz = sub i64 %i.dw, %i.dy
  %i.ea = mul i64 %i.dz, %.sroa.0.0112            ; 2 uses
  %i.eb = lshr i64 %i.ea, 32
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.ed = lshr i64 %i.ea, 38
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ed ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !12
  %i.eg = and i64 %i.eb, 63
  %i.eh = shl nuw i64 1, %i.eg
  %i.ei = xor i64 %i.eh, %i.ef
  store i64 %i.ei, ptr %i.ee, align 8, !tbaa !12
  %i.ej = add i64 %.val34.us, 268435456           ; 2 uses
  store i64 %i.ej, ptr %i.dk, align 8, !tbaa !48
  %i.ek = add i64 %.sroa.8.173.us, 1              ; 4 uses
  %i.el = lshr i64 %i.ej, 28
  %i.em = trunc i64 %i.el to i32
  %i.en = and i32 %i.em, 1023                     ; 2 uses
  %i.eo = load i32, ptr %i.am, align 8, !tbaa !77
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eq = icmp eq i32 %i.en, 1
  br i1 %i.eq, label %bb.s, label %arena_dalloc_bin_locked_step.exit.thread.us

bb.s:                                             ; preds = %bb.r
  %i.er = load ptr, ptr %i.dg, align 8, !tbaa !80
  %.not.i23.us = icmp eq ptr %i.dk, %i.er
  br i1 %.not.i23.us, label %arena_dalloc_bin_locked_step.exit.thread.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @je_arena_dalloc_bin_locked_handle_newly_nonempty(ptr noundef %0, ptr noundef %i.aw, ptr noundef nonnull %i.dk, ptr noundef nonnull %.0134.i60) #13
  br label %arena_dalloc_bin_locked_step.exit.thread.us

bb.u:                                             ; preds = %bb.q
  tail call void @je_arena_dalloc_bin_locked_handle_newly_empty(ptr noundef %0, ptr noundef %i.aw, ptr noundef nonnull %i.dk, ptr noundef %.0134.i60) #13
  %i.es = zext i32 %.1.i76.us to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.es
  store ptr %i.dk, ptr %i.et, align 8, !tbaa !81
  %i.eu = add i32 %.1.i76.us, 1
  br label %arena_dalloc_bin_locked_step.exit.thread.us

arena_dalloc_bin_locked_step.exit.thread.us:      ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %tcache_bin_flush_match.exit.thread.us
  %.sroa.8.2.us = phi i64 [ %i.ek, %bb.u ], [ %.sroa.8.173.us, %tcache_bin_flush_match.exit.thread.us ], [ %i.ek, %bb.t ], [ %i.ek, %bb.r ], [ %i.ek, %bb.s ] ; 2 uses
  %.1132.i.us = phi i32 [ %.0131.i74.us, %bb.u ], [ %i.dv, %tcache_bin_flush_match.exit.thread.us ], [ %.0131.i74.us, %bb.t ], [ %.0131.i74.us, %bb.r ], [ %.0131.i74.us, %bb.s ] ; 2 uses
  %.3.i.us = phi i32 [ %i.eu, %bb.u ], [ %.1.i76.us, %tcache_bin_flush_match.exit.thread.us ], [ %.1.i76.us, %bb.t ], [ %.1.i76.us, %bb.r ], [ %.1.i76.us, %bb.s ] ; 2 uses
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count95
  br i1 %exitcond96.not, label %.split.us, label %.critedge139.i.split.us, !llvm.loop !82

.split.us:                                        ; preds = %arena_dalloc_bin_locked_step.exit.thread, %arena_dalloc_bin_locked_step.exit.thread.us
  %.1129.i64110 = phi i8 [ %.1129.i64111, %arena_dalloc_bin_locked_step.exit.thread.us ], [ %.1129.i107, %arena_dalloc_bin_locked_step.exit.thread ] ; 2 uses
  %.us-phi = phi i64 [ %.sroa.8.2.us, %arena_dalloc_bin_locked_step.exit.thread.us ], [ 0, %arena_dalloc_bin_locked_step.exit.thread ] ; 2 uses
  %.us-phi77 = phi i32 [ %.1132.i.us, %arena_dalloc_bin_locked_step.exit.thread.us ], [ %.1132.i, %arena_dalloc_bin_locked_step.exit.thread ] ; 3 uses
  %.us-phi78 = phi i32 [ %.3.i.us, %arena_dalloc_bin_locked_step.exit.thread.us ], [ %.0126.i80, %arena_dalloc_bin_locked_step.exit.thread ] ; 3 uses
  br i1 %4, label %bb.w, label %bb.x

.critedge139.i.split:                             ; preds = %.critedge139.i.split.preheader, %arena_dalloc_bin_locked_step.exit.thread
  %indvars.iv85 = phi i64 [ 0, %.critedge139.i.split.preheader ], [ %indvars.iv.next86, %arena_dalloc_bin_locked_step.exit.thread ] ; 3 uses
  %.0131.i74 = phi i32 [ 0, %.critedge139.i.split.preheader ], [ %.1132.i, %arena_dalloc_bin_locked_step.exit.thread ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv85
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !35 ; 3 uses
  %.val35 = load i64, ptr %i.ew, align 8, !tbaa !48
  %i.ex = trunc i64 %.val35 to i32
  %i.ey = and i32 %i.ex, 4095
  %i.ez = icmp eq i32 %i.ey, %i.at
  br i1 %i.ez, label %bb.v, label %tcache_bin_flush_match.exit.thread

tcache_bin_flush_match.exit.thread:               ; preds = %.critedge139.i.split
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv85
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !43
  %i.fc = zext i32 %.0131.i74 to i64              ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.fc
  store ptr %i.fb, ptr %i.fd, align 8, !tbaa !43
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.fc
  store ptr %i.ew, ptr %i.fe, align 8, !tbaa !35
  %i.ff = add i32 %.0131.i74, 1
  br label %arena_dalloc_bin_locked_step.exit.thread

bb.v:                                             ; preds = %.critedge139.i.split
  tail call void @je_large_dalloc_finish(ptr noundef %0, ptr noundef nonnull %i.ew) #13
  br label %arena_dalloc_bin_locked_step.exit.thread

arena_dalloc_bin_locked_step.exit.thread:         ; preds = %bb.v, %tcache_bin_flush_match.exit.thread
  %.1132.i = phi i32 [ %.0131.i74, %bb.v ], [ %i.ff, %tcache_bin_flush_match.exit.thread ] ; 2 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count89
  br i1 %exitcond90.not, label %.split.us, label %.critedge139.i.split, !llvm.loop !82

bb.w:                                             ; preds = %.split.us
  %i.fg = getelementptr inbounds nuw i8, ptr %.0134.i60, i64 120 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !69
  %i.fi = add i64 %i.fh, %.us-phi
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !69
  %i.fj = getelementptr inbounds nuw i8, ptr %.0134.i60, i64 136 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !70
  %i.fl = sub i64 %i.fk, %.us-phi
  store i64 %i.fl, ptr %i.fj, align 8, !tbaa !70
  %i.fm = getelementptr inbounds nuw i8, ptr %.0134.i60, i64 104
  store atomic i8 0, ptr %i.fm monotonic, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %.0134.i60, i64 64
  %i.fo = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.fn) #13 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.split.us
  br i1 %i.an, label %arena_decay_ticks.exit, label %bb.y, !prof !11

bb.y:                                             ; preds = %bb.x
  %.neg69 = sub i32 %.us-phi77, %.0.i81
  %i.fp = load i32, ptr %i.ao, align 4, !tbaa !71
  %i.fq = add i32 %i.fp, %.neg69                  ; 2 uses
  store i32 %i.fq, ptr %i.ao, align 4, !tbaa !71
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %bb.z, label %arena_decay_ticks.exit, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.fs = load i64, ptr %i.ap, align 8, !tbaa !12
  %i.ft = mul i64 %i.fs, 6364136223846793005
  %i.fu = add i64 %i.ft, 1442695040888963407      ; 2 uses
  store i64 %i.fu, ptr %i.ap, align 8, !tbaa !12
  %i.fv = lshr i64 %i.fu, 58
  %i.fw = load i32, ptr %i.aq, align 4, !tbaa !73
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.fv
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !35
  %i.ga = zext i8 %i.fz to i64
  %i.gb = mul nsw i64 %i.ga, %i.fx
  %i.gc = udiv i64 %i.gb, 61
  %i.gd = trunc i64 %i.gc to i32
  store i32 %i.gd, ptr %i.ao, align 8, !tbaa !71
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.aw, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.y, %bb.x, %bb.z
  %.not.i = icmp eq i32 %.us-phi77, 0
  br i1 %.not.i, label %.preheader, label %arena_get.exit, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
end_hunk_0
begin_hunk_1_@je_tcache_arena_associate:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 10408
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.d) #13
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 10512
  store atomic i8 1, ptr %i.e monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 10464 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !51
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 10456 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56
  %.not.i.i = icmp eq ptr %i.j, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.i, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 10448 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !57
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !57
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  store ptr %1, ptr %1, align 8, !tbaa !126
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr %1, ptr %i.n, align 8, !tbaa !127
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 10392 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !128  ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !127
  store ptr %i.s, ptr %1, align 8, !tbaa !126
  store ptr %1, ptr %i.r, align 8, !tbaa !127
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !127
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !126  ; 2 uses
  store ptr %i.u, ptr %i.n, align 8, !tbaa !127
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !127
  store ptr %i.p, ptr %i.v, align 8, !tbaa !126
  store ptr %1, ptr %i.u, align 8, !tbaa !126
  %.pre = load ptr, ptr %1, align 8, !tbaa !126
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %malloc_mutex_lock.exit
  %i.w = phi ptr [ %.pre, %bb.e ], [ %1, %malloc_mutex_lock.exit ]
  store ptr %i.w, ptr %i.o, align 8, !tbaa !128
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.x, ptr %i.x, align 8, !tbaa !129
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !130
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !131
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 10400 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !132 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !130
  store ptr %i.af, ptr %i.x, align 8, !tbaa !129
  store ptr %i.x, ptr %i.ae, align 8, !tbaa !130
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !133
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !129 ; 2 uses
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !133
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !130
  store ptr %i.ac, ptr %i.ai, align 8, !tbaa !129
  store ptr %i.x, ptr %i.ah, align 8, !tbaa !129
  %.pre39 = load ptr, ptr %i.x, align 8, !tbaa !134
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = phi ptr [ %.pre39, %bb.g ], [ %i.x, %bb.f ]
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !132
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 10512
  store atomic i8 0, ptr %i.ak monotonic, align 8
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #13 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_tcache_arena_reassociate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @tcache_arena_dissociate(ptr noundef %0, ptr noundef %1)
  tail call void @je_tcache_arena_associate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tcache_arena_dissociate(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 10472 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.c) #13
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 10408
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.e) #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 10512
  store atomic i8 1, ptr %i.f monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 10464 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !51
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 10456 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56
  %.not.i.i = icmp eq ptr %i.k, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.j, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 10448 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !57
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !57
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 10392 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !128  ; 2 uses
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %bb.e, label %.thread

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !126  ; 2 uses
  store ptr %i.r, ptr %i.o, align 8, !tbaa !128
  %i.s = icmp eq ptr %i.r, %1
  br i1 %i.s, label %bb.f, label %.thread

.thread:                                          ; preds = %malloc_mutex_lock.exit, %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !126
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !127  ; 2 uses
  store ptr %i.v, ptr %i.x, align 8, !tbaa !126
  %i.y = load ptr, ptr %1, align 8, !tbaa !126    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !127
  store ptr %i.v, ptr %i.w, align 8, !tbaa !127
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !127
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !126
  store ptr %1, ptr %i.v, align 8, !tbaa !126
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.o, align 8, !tbaa !128
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 10400 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !132 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.h, label %.thread7

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !129 ; 2 uses
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !132
  %i.ag = icmp eq ptr %i.af, %i.ad
  br i1 %i.ag, label %bb.i, label %.thread7

.thread7:                                         ; preds = %bb.g, %bb.h
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !134
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !130 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !133 ; 2 uses
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !129
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !134 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.an, align 8, !tbaa !130
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !133
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !130
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !129
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !129
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.ab, align 8, !tbaa !132
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread7
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !135
  tail call void @je_tcache_stats_merge(ptr noundef %0, ptr noundef %i.aq, ptr noundef nonnull %i.b)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 10512
  store atomic i8 0, ptr %i.ar monotonic, align 1
  %i.as = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #13 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_tsd_tcache_enabled_data_init(ptr noundef initializes((0, 1)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @je_opt_tcache, align 1, !tbaa !14, !range !16, !noundef !17
  store i8 %i.a, ptr %0, align 1, !tbaa !14
  tail call void @je_tsd_slow_update(ptr noundef nonnull %0) #13
  %i.b = load i8, ptr @je_opt_tcache, align 1, !tbaa !14, !range !16, !noundef !17
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @je_tsd_tcache_data_init(ptr noundef nonnull %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 false
}

declare void @je_tsd_slow_update(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_tsd_tcache_data_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %2 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %3 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.c = load i64, ptr @tcache_bin_alloc_alignment, align 8, !tbaa !12 ; 7 uses
  %i.d = load i64, ptr @tcache_bin_alloc_size, align 8, !tbaa !12 ; 7 uses
  %i.e = icmp ult i64 %i.d, 14337
  %i.f = icmp ult i64 %i.c, 4097
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.c, -1
  %i.h = add nsw i64 %i.g, %i.d
  %i.i = sub nsw i64 0, %i.c
  %i.j = and i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp ult i64 %i.j, 4097
  br i1 %i.k, label %bb.c, label %bb.d, !prof !136

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw nsw i64 %i.j, 7
  %i.m = lshr i64 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !12
  br label %sz_s2u.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %i.j, 8070450532247928832
  br i1 %i.s, label %sz_sa2u.exit, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.t = shl nuw i64 %i.j, 1
  %i.u = add nsw i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 2 uses
  %notmask.i31 = ashr exact i64 -1152921504606846976, %i.v
  %i.w = lshr i64 1152921504606846975, %i.v
  %i.x = add nuw nsw i64 %i.j, %i.w
  %i.y = and i64 %i.x, %notmask.i31
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.e, %bb.c
  %.0.i25 = phi i64 [ %i.r, %bb.c ], [ %i.y, %bb.e ] ; 2 uses
  %i.z = icmp ult i64 %.0.i25, 16384
  br i1 %i.z, label %sz_sa2u.exit, label %.thread38

bb.f:                                             ; preds = %bb.a
  %i.aa = icmp ugt i64 %i.c, 8070450532247928832
  br i1 %i.aa, label %sz_sa2u.exit, label %bb.g, !prof !137

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp ult i64 %i.d, 16385
  br i1 %i.ab, label %.thread38, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp ugt i64 %i.d, 8070450532247928832
  br i1 %i.ac, label %sz_s2u.exit27, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.ad = shl nuw i64 %i.d, 1
  %i.ae = add i64 %i.ad, -1
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ae, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.af
  %i.ag = lshr i64 1152921504606846975, %i.af
  %i.ah = add nuw nsw i64 %i.d, %i.ag
  %i.ai = and i64 %i.ah, %notmask.i
  br label %sz_s2u.exit27

sz_s2u.exit27:                                    ; preds = %bb.i, %bb.h
  %.0.i30 = phi i64 [ %i.ai, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.aj = icmp ult i64 %.0.i30, %i.d
  br i1 %i.aj, label %sz_sa2u.exit, label %.thread38

.thread38:                                        ; preds = %sz_s2u.exit, %sz_s2u.exit27, %bb.g
  %.0.i = phi i64 [ %.0.i30, %sz_s2u.exit27 ], [ 16384, %bb.g ], [ 16384, %sz_s2u.exit ] ; 3 uses
  %i.ak = load i64, ptr @je_sz_large_pad, align 8, !tbaa !12
  %i.al = add nuw nsw i64 %i.c, 4095
  %i.am = and i64 %i.al, 9223372036854771712
  %i.an = add nsw i64 %i.am, -4096
  %i.ao = add i64 %i.an, %.0.i
  %i.ap = add i64 %i.ao, %i.ak
  %i.aq = icmp ult i64 %i.ap, %.0.i
  %..0.i = select i1 %i.aq, i64 0, i64 %.0.i
  br label %sz_sa2u.exit

sz_sa2u.exit:                                     ; preds = %bb.d, %sz_s2u.exit, %bb.f, %sz_s2u.exit27, %.thread38
  %.018.i = phi i64 [ 0, %bb.f ], [ %.0.i25, %sz_s2u.exit ], [ %..0.i, %.thread38 ], [ 0, %sz_s2u.exit27 ], [ 0, %bb.d ] ; 2 uses
  %i.ar = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.j, label %arena_get.exit, !prof !11

bb.j:                                             ; preds = %sz_sa2u.exit
  %i.at = tail call ptr @je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #13
  br label %arena_get.exit

arena_get.exit:                                   ; preds = %sz_sa2u.exit, %bb.j
  %.0.i34 = phi ptr [ %i.at, %bb.j ], [ %i.ar, %sz_sa2u.exit ] ; 2 uses
  %i.au = icmp eq ptr %0, null                    ; 2 uses
  br i1 %i.au, label %tsdn_witness_tsdp_get.exit, label %tsdn_witness_tsdp_get.exit.thread

tsdn_witness_tsdp_get.exit:                       ; preds = %arena_get.exit
  %i.av = tail call ptr @je_arena_palloc(ptr noundef null, ptr noundef %.0.i34, i64 noundef %.018.i, i64 noundef %i.c, i1 noundef zeroext true, ptr noundef null) #13 ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %ipallocztm.exit.thread, label %bb.k, !prof !11

tsdn_witness_tsdp_get.exit.thread:                ; preds = %arena_get.exit
  %i.aw = tail call ptr @je_arena_palloc(ptr noundef nonnull %0, ptr noundef %.0.i34, i64 noundef %.018.i, i64 noundef %i.c, i1 noundef zeroext true, ptr noundef null) #13 ; 2 uses
  %.not.i39 = icmp eq ptr %i.aw, null
  br i1 %.not.i39, label %ipallocztm.exit.thread, label %bb.l, !prof !11

bb.k:                                             ; preds = %tsdn_witness_tsdp_get.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %1) #13
  br label %emap_edata_lookup.exit

bb.l:                                             ; preds = %tsdn_witness_tsdp_get.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %emap_edata_lookup.exit

emap_edata_lookup.exit:                           ; preds = %bb.k, %bb.l
  %i.ay = phi ptr [ %i.av, %bb.k ], [ %i.aw, %bb.l ] ; 2 uses
  %.0.i.i29 = phi ptr [ %1, %bb.k ], [ %i.ax, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0, ptr noundef nonnull %.0.i.i29, i64 noundef %i.az)
  %i.ba = load ptr, ptr %2, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.val = load i64, ptr %i.ba, align 8, !tbaa !48
  %i.bb = and i64 %.val, 4095
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.bb
  %i.bd = load atomic ptr, ptr %i.bc monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  br i1 %i.au, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %emap_edata_lookup.exit
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %3) #13
  br label %bb.o

bb.n:                                             ; preds = %emap_edata_lookup.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.0.i.i = phi ptr [ %3, %bb.m ], [ %i.be, %bb.n ]
  %i.bf = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %0, ptr noundef nonnull %.0.i.i, i64 noundef %i.az)
  %.fca.0.extract.i.i = extractvalue { i64, i32 } %i.bf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.bg = and i64 %.fca.0.extract.i.i, 4294967295
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bk = atomicrmw add ptr %i.bj, i64 %i.bi monotonic, align 8 ; 0 uses
  call fastcc void @tcache_init(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.ay)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  store ptr null, ptr %i.bl, align 8, !tbaa !47
  %i.bm = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.p, label %arena_get.exit36

arena_get.exit36:                                 ; preds = %bb.o
  %i.bo = load atomic ptr, ptr @je_arenas acquire, align 8
  br label %ipallocztm.exit.thread.sink.split

bb.p:                                             ; preds = %bb.o
  %i.bp = call fastcc ptr @arena_choose_impl(ptr noundef nonnull %0, i1 noundef zeroext false)
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !47
  %i.br = icmp eq ptr %i.bq, null
end_hunk_1
begin_hunk_2_@tcache_init:bb.a
  %i.aj = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !37
  call void @je_cache_bin_postincrement(ptr noundef %i.aj, i32 noundef %i.ai, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %.lr.ph3
  %indvars.iv6 = phi i64 [ %i.s, %.lr.ph3.preheader ], [ %indvars.iv.next7, %.lr.ph3 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 0, ptr %i.b, align 8, !tbaa !12
  %i.al = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !37
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv6
  call void @je_cache_bin_init(ptr noundef nonnull %i.ak, ptr noundef %i.am, ptr noundef nonnull %2, ptr noundef nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1 ; 2 uses
  %i.an = and i64 %indvars.iv.next7, 4294967295
  %exitcond.not = icmp eq i64 %i.an, 39
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph3, !llvm.loop !143
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @je_tcache_create_explicit(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %2 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %3 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %i.a = load i64, ptr @tcache_bin_alloc_size, align 8, !tbaa !12
  %i.b = add i64 %i.a, 2031
  %i.c = and i64 %i.b, 4294967288                 ; 6 uses
  %i.d = load i64, ptr @tcache_bin_alloc_alignment, align 8, !tbaa !12 ; 7 uses
  %i.e = icmp samesign ult i64 %i.c, 14337
  %i.f = icmp ult i64 %i.d, 4097
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.d, -1
  %i.h = add nsw i64 %i.g, %i.c
  %i.i = sub nsw i64 0, %i.d
  %i.j = and i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp ult i64 %i.j, 4097
  br i1 %i.k, label %bb.c, label %bb.d, !prof !136

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw nsw i64 %i.j, 7
  %i.m = lshr i64 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !12
  br label %sz_s2u.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %i.j, 8070450532247928832
  br i1 %i.s, label %sz_sa2u.exit, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.t = shl nuw i64 %i.j, 1
  %i.u = add nsw i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 2 uses
  %notmask.i24 = ashr exact i64 -1152921504606846976, %i.v
  %i.w = lshr i64 1152921504606846975, %i.v
  %i.x = add nuw nsw i64 %i.j, %i.w
  %i.y = and i64 %i.x, %notmask.i24
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.e, %bb.c
  %.0.i18 = phi i64 [ %i.r, %bb.c ], [ %i.y, %bb.e ] ; 2 uses
  %i.z = icmp ult i64 %.0.i18, 16384
  br i1 %i.z, label %sz_sa2u.exit, label %.thread29

bb.f:                                             ; preds = %bb.a
  %i.aa = icmp ugt i64 %i.d, 8070450532247928832
  br i1 %i.aa, label %sz_sa2u.exit, label %bb.g, !prof !137

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp samesign ult i64 %i.c, 16385
  br i1 %i.ab, label %.thread29, label %sz_s2u.exit20

sz_s2u.exit20:                                    ; preds = %bb.g
  %i.ac = shl nuw nsw i64 %i.c, 1
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ad, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ae
  %i.af = lshr i64 1152921504606846975, %i.ae
  %i.ag = add nuw nsw i64 %i.c, %i.af
  %i.ah = and i64 %i.ag, %notmask.i               ; 2 uses
  %i.ai = icmp samesign ult i64 %i.ah, %i.c
  br i1 %i.ai, label %sz_sa2u.exit, label %.thread29

.thread29:                                        ; preds = %sz_s2u.exit, %sz_s2u.exit20, %bb.g
  %.0.i = phi i64 [ %i.ah, %sz_s2u.exit20 ], [ 16384, %bb.g ], [ 16384, %sz_s2u.exit ] ; 3 uses
  %i.aj = load i64, ptr @je_sz_large_pad, align 8, !tbaa !12
  %i.ak = add nuw nsw i64 %i.d, 4095
  %i.al = and i64 %i.ak, 9223372036854771712
  %i.am = add nsw i64 %i.al, -4096
  %i.an = add nsw i64 %i.am, %.0.i
  %i.ao = add i64 %i.an, %i.aj
  %i.ap = icmp ult i64 %i.ao, %.0.i
  %..0.i = select i1 %i.ap, i64 0, i64 %.0.i
  br label %sz_sa2u.exit

sz_sa2u.exit:                                     ; preds = %bb.d, %sz_s2u.exit, %bb.f, %sz_s2u.exit20, %.thread29
  %.018.i = phi i64 [ 0, %bb.f ], [ %.0.i18, %sz_s2u.exit ], [ %..0.i, %.thread29 ], [ 0, %sz_s2u.exit20 ], [ 0, %bb.d ] ; 2 uses
  %i.aq = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.h, label %arena_get.exit, !prof !11

bb.h:                                             ; preds = %sz_sa2u.exit
  %i.as = tail call ptr @je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #13
  br label %arena_get.exit

arena_get.exit:                                   ; preds = %sz_sa2u.exit, %bb.h
  %.0.i26 = phi ptr [ %i.as, %bb.h ], [ %i.aq, %sz_sa2u.exit ] ; 2 uses
  %i.at = icmp eq ptr %0, null                    ; 2 uses
  br i1 %i.at, label %tsdn_witness_tsdp_get.exit, label %tsdn_witness_tsdp_get.exit.thread

tsdn_witness_tsdp_get.exit:                       ; preds = %arena_get.exit
  %i.au = tail call ptr @je_arena_palloc(ptr noundef null, ptr noundef %.0.i26, i64 noundef %.018.i, i64 noundef %i.d, i1 noundef zeroext true, ptr noundef null) #13 ; 2 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %ipallocztm.exit.thread, label %bb.i, !prof !11

tsdn_witness_tsdp_get.exit.thread:                ; preds = %arena_get.exit
  %i.av = tail call ptr @je_arena_palloc(ptr noundef nonnull %0, ptr noundef %.0.i26, i64 noundef %.018.i, i64 noundef %i.d, i1 noundef zeroext true, ptr noundef null) #13 ; 2 uses
  %.not.i30 = icmp eq ptr %i.av, null
  br i1 %.not.i30, label %ipallocztm.exit.thread, label %bb.j, !prof !11

bb.i:                                             ; preds = %tsdn_witness_tsdp_get.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %1) #13
  br label %emap_edata_lookup.exit

bb.j:                                             ; preds = %tsdn_witness_tsdp_get.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %emap_edata_lookup.exit

emap_edata_lookup.exit:                           ; preds = %bb.i, %bb.j
  %i.ax = phi ptr [ %i.au, %bb.i ], [ %i.av, %bb.j ] ; 2 uses
  %.0.i.i22 = phi ptr [ %1, %bb.i ], [ %i.aw, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.ay = ptrtoint ptr %i.ax to i64               ; 3 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0, ptr noundef nonnull %.0.i.i22, i64 noundef %i.ay)
  %i.az = load ptr, ptr %2, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.val = load i64, ptr %i.az, align 8, !tbaa !48
  %i.ba = and i64 %.val, 4095
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ba
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  br i1 %i.at, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %emap_edata_lookup.exit
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %3) #13
  br label %bb.m

bb.l:                                             ; preds = %emap_edata_lookup.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.0.i.i = phi ptr [ %3, %bb.k ], [ %i.bd, %bb.l ]
  %i.be = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %0, ptr noundef nonnull %.0.i.i, i64 noundef %i.ay)
  %.fca.0.extract.i.i = extractvalue { i64, i32 } %i.be, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.bf = and i64 %.fca.0.extract.i.i, 4294967295
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.bj = atomicrmw add ptr %i.bi, i64 %i.bh monotonic, align 8 ; 0 uses
  %i.bk = load i64, ptr @tcache_bin_alloc_size, align 8, !tbaa !12
  %i.bl = add i64 %i.bk, %i.ay                    ; 2 uses
  %i.bm = inttoptr i64 %i.bl to ptr               ; 3 uses
  %i.bn = add i64 %i.bl, 1832
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  call fastcc void @tcache_init(ptr noundef %i.bo, ptr noundef %i.bm, ptr noundef %i.ax)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !35
  %i.br = icmp sgt i8 %i.bq, 0
  br i1 %i.br, label %bb.n, label %bb.p, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.bs = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.o, label %arena_ichoose.exit, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.bu = call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #13
  br label %arena_ichoose.exit

bb.p:                                             ; preds = %bb.m
  %.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bv = load ptr, ptr %.in.i.i, align 8, !tbaa !144 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.q, label %arena_ichoose.exit, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.bx = call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext true) #13 ; 5 uses
  %i.by = load i8, ptr %0, align 1, !tbaa !14, !range !16, !noundef !17
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.r, label %arena_ichoose.exit

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !47 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i, label %.sink.split.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not43.i.i = icmp eq ptr %i.cd, %i.bx
  br i1 %.not43.i.i, label %arena_ichoose.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call fastcc void @tcache_arena_dissociate(ptr noundef nonnull %0, ptr noundef nonnull %i.ca)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.t, %bb.r
  call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.cb, ptr noundef %i.bx)
  br label %arena_ichoose.exit

arena_ichoose.exit:                               ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.s, %.sink.split.i.i
  %.0.i.i27 = phi ptr [ %i.bs, %bb.n ], [ %i.bu, %bb.o ], [ %i.bv, %bb.p ], [ %i.bx, %bb.q ], [ %i.bx, %bb.s ], [ %i.bx, %.sink.split.i.i ]
  call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef %i.bo, ptr noundef %i.bm, ptr noundef %.0.i.i27)
  br label %ipallocztm.exit.thread

ipallocztm.exit.thread:                           ; preds = %tsdn_witness_tsdp_get.exit, %tsdn_witness_tsdp_get.exit.thread, %arena_ichoose.exit
  %.0 = phi ptr [ %i.bm, %arena_ichoose.exit ], [ null, %tsdn_witness_tsdp_get.exit.thread ], [ null, %tsdn_witness_tsdp_get.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @je_tcache_flush(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.b = load i32, ptr @je_nhbins, align 4, !tbaa !7
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %tcache_flush_cache.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv.i ; 2 uses
  %i.e = icmp samesign ult i64 %indvars.iv.i, 39
  %i.f = trunc nuw i64 %indvars.iv.i to i32       ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @je_tcache_bin_flush_small(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, i32 noundef %i.f, i32 noundef 0)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @je_tcache_bin_flush_large(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, i32 noundef %i.f, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.g = load i32, ptr @je_nhbins, align 4, !tbaa !7
  %i.h = zext i32 %i.g to i64
  %i.i = icmp samesign ult i64 %indvars.iv.next.i, %i.h
  br i1 %i.i, label %bb.b, label %tcache_flush_cache.exit, !llvm.loop !145

tcache_flush_cache.exit:                          ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_tcache_cleanup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !14, !range !16, !noundef !17
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 872
  tail call fastcc void @tcache_destroy(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tcache_destroy(ptr noundef %0, ptr noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %4 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %5 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !41     ; 3 uses
  %i.b = load i32, ptr @je_nhbins, align 4, !tbaa !7
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %tcache_flush_cache.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv.i ; 2 uses
  %i.e = icmp samesign ult i64 %indvars.iv.i, 39
  %i.f = trunc nuw i64 %indvars.iv.i to i32       ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @je_tcache_bin_flush_small(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef %i.f, i32 noundef 0)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @je_tcache_bin_flush_large(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef %i.f, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.g = load i32, ptr @je_nhbins, align 4, !tbaa !7
  %i.h = zext i32 %i.g to i64
  %i.i = icmp samesign ult i64 %indvars.iv.next.i, %i.h
  br i1 %i.i, label %bb.b, label %tcache_flush_cache.exit, !llvm.loop !145

tcache_flush_cache.exit:                          ; preds = %bb.e, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  tail call fastcc void @tcache_arena_dissociate(ptr noundef %0, ptr noundef %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !141  ; 3 uses
  %i.n = icmp eq ptr %0, null                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %tcache_flush_cache.exit
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %3) #13
  br label %emap_edata_lookup.exit.i

bb.g:                                             ; preds = %tcache_flush_cache.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %emap_edata_lookup.exit.i

emap_edata_lookup.exit.i:                         ; preds = %bb.g, %bb.f
  %.0.i.i14.i = phi ptr [ %3, %bb.f ], [ %i.o, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.p = ptrtoint ptr %i.m to i64                 ; 3 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %0, ptr noundef nonnull %.0.i.i14.i, i64 noundef %i.p)
  %i.q = load ptr, ptr %4, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.val = load i64, ptr %i.q, align 8, !tbaa !48
  %i.r = and i64 %.val, 4095
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.r
  %i.t = load atomic ptr, ptr %i.s monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  br i1 %i.n, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %emap_edata_lookup.exit.i
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %5) #13
  br label %idalloctm.exit

bb.i:                                             ; preds = %emap_edata_lookup.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %idalloctm.exit

idalloctm.exit:                                   ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi ptr [ %5, %bb.h ], [ %i.u, %bb.i ]
  %i.v = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %0, ptr noundef nonnull %.0.i.i.i, i64 noundef %i.p)
  %.fca.0.extract.i.i.i = extractvalue { i64, i32 } %i.v, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.w = and i64 %.fca.0.extract.i.i.i, 4294967295
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.aa = atomicrmw sub ptr %i.z, i64 %i.y monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  br i1 %i.n, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %idalloctm.exit
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #13
  br label %tsdn_rtree_ctx.exit.i

bb.k:                                             ; preds = %idalloctm.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %tsdn_rtree_ctx.exit.i

tsdn_rtree_ctx.exit.i:                            ; preds = %bb.k, %bb.j
  %.0.i.i = phi ptr [ %2, %bb.j ], [ %i.ab, %bb.k ]
  %i.ac = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %0, ptr noundef nonnull %.0.i.i, i64 noundef %i.p)
  %.fca.1.extract.i.i = extractvalue { i64, i32 } %i.ac, 1
  %i.ad = and i32 %.fca.1.extract.i.i, 256
  %.not.i18 = icmp eq i32 %i.ad, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br i1 %.not.i18, label %bb.m, label %bb.l, !prof !11

bb.l:                                             ; preds = %tsdn_rtree_ctx.exit.i
  call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef %i.m) #13
  br label %arena_dalloc_no_tcache.exit

end_hunk_2
begin_hunk_3_@rtree_read:bb.a

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !152
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !136

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !152
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !136

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !152
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !136

bb.e:                                             ; preds = %.preheader.6
  %i.aq = tail call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %1, ptr noundef nonnull @je_arena_emap_global, ptr noundef nonnull %2, i64 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false) #13
  br label %atomic_load_p.exit

bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !155 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !152
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !152
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !155
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !155
  store i64 %i.e, ptr %i.at, align 8, !tbaa !152
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !155
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !155
  store i64 %i.c, ptr %i.d, align 8, !tbaa !152
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !155
  %i.az = lshr i64 %3, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  br label %atomic_load_p.exit

atomic_load_p.exit:                               ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !164
  %i.bd = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !167, !alias.scope !168
  %i.bh = trunc i64 %i.bd to i8                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.bj = and i8 %i.bh, 1
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !171, !alias.scope !168
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = lshr i8 %i.bh, 1
  %i.bm = and i8 %i.bl, 1
  store i8 %i.bm, ptr %i.bk, align 8, !tbaa !172, !alias.scope !168
  %i.bn = trunc i64 %i.bd to i32
  %i.bo = lshr i32 %i.bn, 2
  %i.bp = and i32 %i.bo, 7
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !173, !alias.scope !168
  %i.br = shl i64 %i.bd, 16
  %i.bs = ashr exact i64 %i.br, 16
  %i.bt = and i64 %i.bs, -128
  %i.bu = inttoptr i64 %i.bt to ptr
  store ptr %i.bu, ptr %0, align 8, !tbaa !138, !alias.scope !168
  ret void
}

declare ptr @je_arena_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @je_cache_bin_preincrement(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_cache_bin_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_cache_bin_postincrement(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @arena_choose_impl(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !35
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %arena_get.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #13
  br label %arena_get.exit

bb.d:                                             ; preds = %bb.a
  %.in.v = select i1 %1, i64 136, i64 144
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.g = load ptr, ptr %.in, align 8, !tbaa !144  ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.i, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext %1) #13 ; 5 uses
  %i.j = load i8, ptr %0, align 1, !tbaa !14, !range !16, !noundef !17
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not43 = icmp eq ptr %i.o, %i.i
  br i1 %.not43, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @tcache_arena_dissociate(ptr noundef nonnull %0, ptr noundef nonnull %i.l)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.h
  tail call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef %i.i)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g, %bb.e, %bb.d
  %.037 = phi ptr [ %i.g, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %bb.g ], [ %i.i, %.sink.split ] ; 6 uses
  %i.p = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7 ; 2 uses
  %i.q = icmp ult i32 %i.p, 3
  %or.cond = or i1 %1, %i.q
  br i1 %or.cond, label %arena_get.exit, label %percpu_arena_ind_limit.exit

percpu_arena_ind_limit.exit:                      ; preds = %bb.i
  %i.r = getelementptr i8, ptr %.037, i64 78928   ; 2 uses
  %.037.val47 = load i32, ptr %i.r, align 8, !tbaa !84
  %i.s = icmp eq i32 %i.p, 4
  %i.t = load i32, ptr @je_ncpus, align 4         ; 4 uses
  %i.u = icmp ugt i32 %i.t, 1
  %or.cond.i = and i1 %i.s, %i.u
  %i.v = and i32 %i.t, 1
  %i.w = lshr i32 %i.t, 1
  %spec.select = add nuw i32 %i.w, %i.v
  %.0.i = select i1 %or.cond.i, i32 %spec.select, i32 %i.t
  %i.x = icmp ult i32 %.037.val47, %.0.i
  br i1 %i.x, label %bb.j, label %arena_get.exit

bb.j:                                             ; preds = %percpu_arena_ind_limit.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.037, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !174
  %.not44 = icmp eq ptr %i.z, %0
  br i1 %.not44, label %arena_get.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call i32 @sched_getcpu() #13       ; 3 uses
  %i.ab = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7
  %i.ac = icmp eq i32 %i.ab, 3
  br i1 %i.ac, label %percpu_arena_choose.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = load i32, ptr @je_ncpus, align 4, !tbaa !7
  %i.ae = lshr i32 %i.ad, 1                       ; 2 uses
  %i.af = icmp ult i32 %i.aa, %i.ae
  %i.ag = select i1 %i.af, i32 0, i32 %i.ae
  %spec.select.i = sub nuw i32 %i.aa, %i.ag
  br label %percpu_arena_choose.exit

percpu_arena_choose.exit:                         ; preds = %bb.k, %bb.l
  %.0.i46 = phi i32 [ %i.aa, %bb.k ], [ %spec.select.i, %bb.l ] ; 4 uses
  %.037.val = load i32, ptr %i.r, align 8, !tbaa !84
  %.not45 = icmp eq i32 %.037.val, %.0.i46
  br i1 %.not45, label %bb.q, label %bb.m

bb.m:                                             ; preds = %percpu_arena_choose.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !144 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 78928
  %.val.i = load i32, ptr %i.aj, align 8, !tbaa !84
  %.not.i49 = icmp eq i32 %.val.i, %.0.i46
  br i1 %.not.i49, label %percpu_arena_update.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = zext i32 %.0.i46 to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ak
  %i.am = load atomic ptr, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.o, label %arena_get.exit.i, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.ao = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef %.0.i46, ptr noundef nonnull @je_arena_config_default) #13
  br label %arena_get.exit.i

arena_get.exit.i:                                 ; preds = %bb.o, %bb.n
  %.0.i18.i = phi ptr [ %i.ao, %bb.o ], [ %i.am, %bb.n ] ; 2 uses
  tail call void @je_arena_migrate(ptr noundef nonnull %0, ptr noundef nonnull %i.ai, ptr noundef %.0.i18.i) #13
  %i.ap = load i8, ptr %0, align 1, !tbaa !14, !range !16, !noundef !17
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.p, label %percpu_arena_update.exit

bb.p:                                             ; preds = %arena_get.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  tail call fastcc void @tcache_arena_dissociate(ptr noundef nonnull %0, ptr noundef nonnull %i.as)
  tail call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.as, ptr noundef nonnull %i.ar, ptr noundef %.0.i18.i)
  br label %percpu_arena_update.exit

percpu_arena_update.exit:                         ; preds = %bb.m, %arena_get.exit.i, %bb.p
  %i.at = load ptr, ptr %i.ah, align 8, !tbaa !144
  br label %bb.q

bb.q:                                             ; preds = %percpu_arena_update.exit, %percpu_arena_choose.exit
  %.1 = phi ptr [ %i.at, %percpu_arena_update.exit ], [ %.037, %percpu_arena_choose.exit ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1, i64 16
  store ptr %0, ptr %i.au, align 8, !tbaa !174
  br label %arena_get.exit

arena_get.exit:                                   ; preds = %bb.c, %bb.b, %bb.i, %percpu_arena_ind_limit.exit, %bb.j, %bb.q
  %.0 = phi ptr [ %.037, %percpu_arena_ind_limit.exit ], [ %.037, %bb.i ], [ %.1, %bb.q ], [ %.037, %bb.j ], [ %i.f, %bb.c ], [ %i.d, %bb.b ]
  ret ptr %.0
}

declare ptr @je_arena_choose_hard(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @sched_getcpu() local_unnamed_addr #9

declare void @je_arena_migrate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @je_arena_nthreads_get(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @je_arena_dalloc_small(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #13
  br label %emap_edata_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %emap_edata_lookup.exit

emap_edata_lookup.exit:                           ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %2, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i.i, i64 noundef %i.c)
  %i.d = load ptr, ptr %3, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @je_large_dalloc(ptr noundef %0, ptr noundef %i.d) #13
  ret void
}

declare void @je_large_dalloc(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }

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
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"_Bool", !9, i64 0}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = !{!19, !8, i64 48}
!19 = !{!"tcache_slow_s", !20, i64 0, !23, i64 16, !27, i64 40, !8, i64 48, !9, i64 52, !9, i64 91, !9, i64 130, !22, i64 176, !28, i64 184}
!20 = !{!"", !21, i64 0, !21, i64 8}
!21 = !{!"p1 _ZTS13tcache_slow_s", !22, i64 0}
!22 = !{!"any pointer", !9, i64 0}
!23 = !{!"cache_bin_array_descriptor_s", !24, i64 0, !26, i64 16}
!24 = !{!"", !25, i64 0, !25, i64 8}
!25 = !{!"p1 _ZTS28cache_bin_array_descriptor_s", !22, i64 0}
!26 = !{!"p1 _ZTS11cache_bin_s", !22, i64 0}
!27 = !{!"p1 _ZTS7arena_s", !22, i64 0}
!28 = !{!"p1 _ZTS8tcache_s", !22, i64 0}
!29 = !{!30, !33, i64 16}
!30 = !{!"cache_bin_s", !31, i64 0, !32, i64 8, !33, i64 16, !33, i64 18, !33, i64 20}
!31 = !{!"any p2 pointer", !22, i64 0}
!32 = !{!"cache_bin_stats_s", !13, i64 0}
!33 = !{!"short", !9, i64 0}
!34 = !{!30, !33, i64 20}
!35 = !{!9, !9, i64 0}
!36 = !{!30, !31, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTS16cache_bin_info_s", !22, i64 0}
!39 = !{!40, !33, i64 0}
!40 = !{!"cache_bin_info_s", !33, i64 0}
!41 = !{!42, !21, i64 0}
!42 = !{!"tcache_s", !21, i64 0, !9, i64 8}
!43 = !{!22, !22, i64 0}
!44 = !{!45, !33, i64 0}
!45 = !{!"cache_bin_ptr_array_s", !33, i64 0, !31, i64 8}
!46 = !{!45, !31, i64 8}
!47 = !{!19, !27, i64 40}
!48 = !{!49, !13, i64 0}
!49 = !{!"edata_s", !13, i64 0, !22, i64 8, !9, i64 16, !50, i64 24, !13, i64 32, !9, i64 40, !9, i64 64}
!50 = !{!"p1 _ZTS8hpdata_s", !22, i64 0}
!51 = !{!52, !13, i64 56}
!52 = !{!"", !53, i64 0, !53, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !54, i64 36, !13, i64 40, !55, i64 48, !13, i64 56}
!53 = !{!"", !13, i64 0}
!54 = !{!"", !8, i64 0}
!55 = !{!"p1 _ZTS6tsdn_s", !22, i64 0}
!56 = !{!52, !55, i64 48}
!57 = !{!52, !13, i64 40}
!58 = !{!59, !13, i64 152}
!59 = !{!"bin_s", !60, i64 0, !61, i64 112, !62, i64 192, !63, i64 200, !65, i64 216}
!60 = !{!"malloc_mutex_s", !9, i64 0}
!61 = !{!"bin_stats_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72}
!62 = !{!"p1 _ZTS7edata_s", !22, i64 0}
!63 = !{!"", !64, i64 0}
!64 = !{!"ph_s", !22, i64 0, !13, i64 8}
!65 = !{!"", !66, i64 0}
!66 = !{!"", !62, i64 0}
!67 = !{!30, !13, i64 8}
!68 = !{!59, !13, i64 128}
!69 = !{!59, !13, i64 120}
!70 = !{!59, !13, i64 136}
!71 = !{!72, !8, i64 0}
!72 = !{!"ticker_geom_s", !8, i64 0, !8, i64 4}
!73 = !{!72, !8, i64 4}
!74 = distinct !{!74, !75}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!49, !22, i64 8}
!77 = !{!78, !8, i64 16}
!78 = !{!"bin_info_s", !13, i64 0, !13, i64 8, !8, i64 16, !8, i64 20, !79, i64 24}
!79 = !{!"bitmap_info_s", !13, i64 0, !13, i64 8}
!80 = !{!59, !62, i64 192}
!81 = !{!62, !62, i64 0}
!82 = distinct !{!82, !75}
!83 = distinct !{!83, !75}
!84 = !{!85, !8, i64 78928}
!85 = !{!"arena_s", !9, i64 0, !54, i64 8, !55, i64 16, !86, i64 24, !91, i64 10392, !92, i64 10400, !60, i64 10408, !54, i64 10520, !65, i64 10528, !60, i64 10536, !93, i64 10648, !8, i64 78928, !100, i64 78936, !53, i64 78944, !9, i64 78952}
!86 = !{!"arena_stats_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !53, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !87, i64 88, !13, i64 168, !13, i64 176, !9, i64 184, !9, i64 952, !53, i64 10360}
!87 = !{!"pa_shard_stats_s", !13, i64 0, !88, i64 8}
!88 = !{!"pac_stats_s", !89, i64 0, !89, i64 24, !13, i64 48, !53, i64 56, !53, i64 64}
!89 = !{!"pac_decay_stats_s", !90, i64 0, !90, i64 8, !90, i64 16}
!90 = !{!"locked_u64_s", !53, i64 0}
!91 = !{!"", !21, i64 0}
!92 = !{!"", !25, i64 0}
!93 = !{!"pa_shard_s", !94, i64 0, !53, i64 8, !95, i64 16, !15, i64 17, !96, i64 24, !108, i64 62264, !112, i64 62384, !122, i64 68096, !8, i64 68240, !106, i64 68248, !123, i64 68256, !101, i64 68264, !100, i64 68272}
!94 = !{!"p1 _ZTS12pa_central_s", !22, i64 0}
!95 = !{!"", !15, i64 0}
!96 = !{!"pac_s", !97, i64 0, !98, i64 56, !98, i64 19496, !98, i64 38936, !100, i64 58376, !101, i64 58384, !102, i64 58392, !103, i64 58400, !60, i64 58408, !104, i64 58520, !53, i64 58640, !105, i64 58648, !105, i64 60432, !106, i64 62216, !107, i64 62224, !53, i64 62232}
!97 = !{!"pai_s", !22, i64 0, !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48}
!98 = !{!"ecache_s", !60, i64 0, !99, i64 112, !99, i64 9768, !8, i64 19424, !8, i64 19428, !15, i64 19432}
end_hunk_3
