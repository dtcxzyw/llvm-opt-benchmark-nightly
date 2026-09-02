Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/tcache?download=true
inline.NumInlined: 171
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@je_tcache_bin_flush_stashed:bb.a
  %i.el = lshr i64 %i.ej, 28
  %i.em = trunc i64 %i.el to i32
  %i.en = and i32 %i.em, 1023                     ; 2 uses
  %i.eo = load i32, ptr %i.am, align 8, !tbaa !83
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eq = icmp eq i32 %i.en, 1
  br i1 %i.eq, label %bb.s, label %arena_dalloc_bin_locked_step.exit.thread.us

bb.s:                                             ; preds = %bb.r
  %i.er = load ptr, ptr %i.dg, align 8, !tbaa !84
  %.not.i23.us = icmp eq ptr %i.dk, %i.er
  br i1 %.not.i23.us, label %arena_dalloc_bin_locked_step.exit.thread.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @je_arena_dalloc_bin_locked_handle_newly_nonempty(ptr noundef %0, ptr noundef %i.aw, ptr noundef nonnull %i.dk, ptr noundef nonnull %.0130.i60) #13
  br label %arena_dalloc_bin_locked_step.exit.thread.us

bb.u:                                             ; preds = %bb.q
  tail call void @je_arena_dalloc_bin_locked_handle_newly_empty(ptr noundef %0, ptr noundef %i.aw, ptr noundef nonnull %i.dk, ptr noundef %.0130.i60) #13
  %i.es = zext i32 %.1135.i74.us to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.es
  store ptr %i.dk, ptr %i.et, align 8, !tbaa !85
  %i.eu = add i32 %.1135.i74.us, 1
  br label %arena_dalloc_bin_locked_step.exit.thread.us

arena_dalloc_bin_locked_step.exit.thread.us:      ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %tcache_bin_flush_match.exit.thread.us
  %.sroa.8.2.us = phi i64 [ %i.ek, %bb.u ], [ %.sroa.8.173.us, %tcache_bin_flush_match.exit.thread.us ], [ %i.ek, %bb.t ], [ %i.ek, %bb.r ], [ %i.ek, %bb.s ] ; 2 uses
  %.3.i.us = phi i32 [ %i.eu, %bb.u ], [ %.1135.i74.us, %tcache_bin_flush_match.exit.thread.us ], [ %.1135.i74.us, %bb.t ], [ %.1135.i74.us, %bb.r ], [ %.1135.i74.us, %bb.s ] ; 2 uses
  %.1.i.us = phi i32 [ %.0128.i75.us, %bb.u ], [ %i.dv, %tcache_bin_flush_match.exit.thread.us ], [ %.0128.i75.us, %bb.t ], [ %.0128.i75.us, %bb.r ], [ %.0128.i75.us, %bb.s ] ; 2 uses
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count97
  br i1 %exitcond98.not, label %.split78.us, label %.critedge139.i.split.us, !llvm.loop !1

.split78.us:                                      ; preds = %arena_dalloc_bin_locked_step.exit.thread, %arena_dalloc_bin_locked_step.exit.thread.us
  %.1133.i64112 = phi i8 [ %.1133.i64113, %arena_dalloc_bin_locked_step.exit.thread.us ], [ %.1133.i109, %arena_dalloc_bin_locked_step.exit.thread ] ; 2 uses
  %.us-phi = phi i64 [ %.sroa.8.2.us, %arena_dalloc_bin_locked_step.exit.thread.us ], [ 0, %arena_dalloc_bin_locked_step.exit.thread ] ; 2 uses
  %.us-phi79.a = phi i32 [ %.3.i.us, %arena_dalloc_bin_locked_step.exit.thread.us ], [ %.0134.i81, %arena_dalloc_bin_locked_step.exit.thread ] ; 3 uses
  %.us-phi80 = phi i32 [ %.1.i.us, %arena_dalloc_bin_locked_step.exit.thread.us ], [ %.1.i, %arena_dalloc_bin_locked_step.exit.thread ] ; 3 uses
  br i1 %4, label %bb.w, label %bb.x

.split:                                           ; preds = %.split.preheader, %arena_dalloc_bin_locked_step.exit.thread
  %indvars.iv87 = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next88, %arena_dalloc_bin_locked_step.exit.thread ] ; 3 uses
  %.0128.i75 = phi i32 [ 0, %.split.preheader ], [ %.1.i, %arena_dalloc_bin_locked_step.exit.thread ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv87
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !40 ; 3 uses
  %.val35 = load i64, ptr %i.ew, align 8, !tbaa !55
  %i.ex = trunc i64 %.val35 to i32
  %i.ey = and i32 %i.ex, 4095
  %i.ez = icmp eq i32 %i.ey, %i.at
  br i1 %i.ez, label %bb.v, label %tcache_bin_flush_match.exit.thread

tcache_bin_flush_match.exit.thread:               ; preds = %.split
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv87
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !48
  %i.fc = zext i32 %.0128.i75 to i64              ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.fc
  store ptr %i.fb, ptr %i.fd, align 8, !tbaa !48
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.fc
  store ptr %i.ew, ptr %i.fe, align 8, !tbaa !40
  %i.ff = add i32 %.0128.i75, 1
  br label %arena_dalloc_bin_locked_step.exit.thread

bb.v:                                             ; preds = %.split
  tail call void @je_large_dalloc_finish(ptr noundef %0, ptr noundef nonnull %i.ew) #13
  br label %arena_dalloc_bin_locked_step.exit.thread

arena_dalloc_bin_locked_step.exit.thread:         ; preds = %bb.v, %tcache_bin_flush_match.exit.thread
  %.1.i = phi i32 [ %.0128.i75, %bb.v ], [ %i.ff, %tcache_bin_flush_match.exit.thread ] ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count91
  br i1 %exitcond92.not, label %.split78.us, label %.split, !llvm.loop !1

bb.w:                                             ; preds = %.split78.us
  %i.fg = getelementptr inbounds nuw i8, ptr %.0130.i60, i64 120 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !74
  %i.fi = add i64 %i.fh, %.us-phi
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !74
  %i.fj = getelementptr inbounds nuw i8, ptr %.0130.i60, i64 136 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !75
  %i.fl = sub i64 %i.fk, %.us-phi
  store i64 %i.fl, ptr %i.fj, align 8, !tbaa !75
  %i.fm = getelementptr inbounds nuw i8, ptr %.0130.i60, i64 104
  store atomic i8 0, ptr %i.fm monotonic, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %.0130.i60, i64 64
  %i.fo = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.fn) #13 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.split78.us
  br i1 %i.an, label %arena_decay_ticks.exit, label %bb.y, !prof !16

bb.y:                                             ; preds = %bb.x
  %.neg69 = sub i32 %.us-phi80, %.0.i83
  %i.fp = load i32, ptr %i.ao, align 4, !tbaa !77
  %i.fq = add i32 %i.fp, %.neg69                  ; 2 uses
  store i32 %i.fq, ptr %i.ao, align 4, !tbaa !77
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %bb.z, label %arena_decay_ticks.exit, !prof !16

bb.z:                                             ; preds = %bb.y
  %i.fs = load i64, ptr %i.ap, align 8, !tbaa !18
  %i.ft = mul i64 %i.fs, 6364136223846793005
  %i.fu = add i64 %i.ft, 1442695040888963407      ; 2 uses
  store i64 %i.fu, ptr %i.ap, align 8, !tbaa !18
  %i.fv = lshr i64 %i.fu, 58
  %i.fw = load i32, ptr %i.aq, align 4, !tbaa !78
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.fv
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !40
  %i.ga = zext i8 %i.fz to i64
  %i.gb = mul nsw i64 %i.ga, %i.fx
  %i.gc = udiv i64 %i.gb, 61
  %i.gd = trunc i64 %i.gc to i32
  store i32 %i.gd, ptr %i.ao, align 8, !tbaa !77
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.aw, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.y, %bb.x, %bb.z
  %.not.i = icmp eq i32 %.us-phi80, 0
  br i1 %.not.i, label %.preheader, label %arena_get.exit, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.ge = trunc nuw i8 %.1133.i64112 to i1
  br i1 %i.ge, label %tcache_bin_flush_impl.exit, label %bb.aa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv99 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next100, %.lr.ph ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv99
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !85 ; 2 uses
  %.val45 = load i64, ptr %i.gg, align 8, !tbaa !55
  %i.gh = and i64 %.val45, 4095
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.gh
  %i.gj = load atomic ptr, ptr %i.gi monotonic, align 8
  tail call void @je_arena_slab_dalloc(ptr noundef %0, ptr noundef %i.gj, ptr noundef nonnull %i.gg) #13
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count103
  br i1 %exitcond104.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

bb.aa:                                            ; preds = %._crit_edge
  br i1 %4, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.gk = tail call ptr @je_arena_bin_choose(ptr noundef %0, ptr noundef %i.aa, i32 noundef %3, ptr noundef null) #13 ; 9 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 64 ; 2 uses
  %i.gm = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.gl) #13
  %.not.i52 = icmp eq i32 %i.gm, 0
  br i1 %.not.i52, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.gk) #13
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 104
  store atomic i8 1, ptr %i.gn monotonic, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 56 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !60
  %i.gq = add i64 %i.gp, 1
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !60
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 48 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !61
  %.not.i.i53 = icmp eq ptr %i.gs, %0
  br i1 %.not.i.i53, label %malloc_mutex_lock.exit54, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %0, ptr %i.gr, align 8, !tbaa !61
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gk, i64 40 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !62
  %i.gv = add i64 %i.gu, 1
  store i64 %i.gv, ptr %i.gt, align 8, !tbaa !62
  br label %malloc_mutex_lock.exit54

malloc_mutex_lock.exit54:                         ; preds = %bb.ad, %bb.ae
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gk, i64 152 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !71
  %i.gy = add i64 %i.gx, 1
  store i64 %i.gy, ptr %i.gw, align 8, !tbaa !71
  %i.gz = load i64, ptr %i.af, align 8, !tbaa !72
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gk, i64 128 ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !73
  %i.hc = add i64 %i.hb, %i.gz
  store i64 %i.hc, ptr %i.ha, align 8, !tbaa !73
  store i64 0, ptr %i.af, align 8, !tbaa !72
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gk, i64 104
  store atomic i8 0, ptr %i.hd monotonic, align 8
  %i.he = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.gl) #13 ; 0 uses
  br label %tcache_bin_flush_impl.exit

bb.af:                                            ; preds = %bb.aa
  %i.hf = load i64, ptr %i.af, align 8, !tbaa !72
  %i.hg = atomicrmw add ptr %i.ai, i64 %i.hf monotonic, align 8 ; 0 uses
  %i.hh = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8 ; 0 uses
  store i64 0, ptr %i.af, align 8, !tbaa !72
  br label %tcache_bin_flush_impl.exit

tcache_bin_flush_impl.exit:                       ; preds = %._crit_edge, %malloc_mutex_lock.exit54, %bb.af
  call void @llvm.stackrestore.p0(ptr %savedstack)
  %.val46 = load i16, ptr %i.c, align 2, !tbaa !45
  %.val.i = load ptr, ptr %2, align 8, !tbaa !41
  %.val4.i = load i16, ptr %i.d, align 4, !tbaa !39
  %7 = ptrtoint ptr %.val.i to i64                ; 2 uses
  %8 = trunc i64 %7 to i16
  %i.hi = sub i16 %.val4.i, %8
  %9 = zext i16 %.val46 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = sub i64 %7, %10
  %12 = trunc i64 %11 to i16
  %13 = add i16 %i.hi, %12
  store i16 %13, ptr %i.i, align 2, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %tcache_bin_flush_impl.exit
  ret void
}

declare void @je_san_check_stashed_ptrs(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @je_tcache_arena_associate(ptr noundef %0, ptr noundef initializes((40, 48)) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %3, ptr %i.a, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 10472 ; 2 uses
  %i.c = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.b) #13
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 10408
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.d) #13
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 10512
  store atomic i8 1, ptr %i.e monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 10464 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 10456 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.j, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.i, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 10448 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !62
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !62
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
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !149
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 10400 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !131 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !130
  store ptr %i.af, ptr %i.x, align 8, !tbaa !129
  store ptr %i.x, ptr %i.ae, align 8, !tbaa !130
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !132
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !129 ; 2 uses
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !132
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !130
  store ptr %i.ac, ptr %i.ai, align 8, !tbaa !129
  store ptr %i.x, ptr %i.ah, align 8, !tbaa !129
  %.pre39 = load ptr, ptr %i.x, align 8, !tbaa !133
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = phi ptr [ %.pre39, %bb.g ], [ %i.x, %bb.f ]
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !131
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 10 uses
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
  %i.h = load i64, ptr %i.g, align 8, !tbaa !60
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 10456 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.k, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.j, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 10448 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !62
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !62
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
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !131 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.h, label %.thread7

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !129 ; 2 uses
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !131
  %i.ag = icmp eq ptr %i.af, %i.ad
  br i1 %i.ag, label %bb.i, label %.thread7

.thread7:                                         ; preds = %bb.g, %bb.h
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !133
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !130 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !132 ; 2 uses
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !129
end_hunk_0
