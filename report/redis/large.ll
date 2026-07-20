inline.NumInlined: 91
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@je_sz_large_pad = external local_unnamed_addr global i64, align 8
@je_sz_index2size_tab = external local_unnamed_addr global [235 x i64], align 16
@je_sz_size2index_tab = external local_unnamed_addr global [0 x i8], align 1
@je_oversize_threshold = external local_unnamed_addr global i64, align 8
@je_opt_percpu_arena = external local_unnamed_addr global i32, align 4
@je_arenas = external local_unnamed_addr global [0 x %struct.atomic_p_t], align 8
@je_arena_config_default = external constant %struct.arena_config_s, align 8
@je_ncpus = external local_unnamed_addr global i32, align 4
@je_manual_arena_base = external local_unnamed_addr global i32, align 4
@je_ticker_geom_table = external local_unnamed_addr constant [64 x i8], align 16
@je_opt_cache_oblivious = external local_unnamed_addr global i8, align 1
@je_tcache_bin_info = external local_unnamed_addr global ptr, align 8
@je_opt_lg_tcache_flush_small_div = external local_unnamed_addr global i32, align 4
@je_nhbins = external local_unnamed_addr global i32, align 4
@je_opt_lg_tcache_flush_large_div = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define hidden ptr @je_large_malloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @je_large_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef 64, i1 noundef zeroext %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_large_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 14337
  %i.b = icmp ult i64 %3, 4097
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %2, -1
  %i.d = add nsw i64 %i.c, %3
  %i.e = sub nsw i64 0, %3
  %i.f = and i64 %i.d, %i.e                       ; 5 uses
  %i.g = icmp ult i64 %i.f, 4097
  br i1 %i.g, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw nsw i64 %i.f, 7
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13
  br label %sz_s2u.exit

bb.d:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.f, 8070450532247928832
  br i1 %i.o, label %sz_sa2u.exit.thread, label %bb.e, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.p = shl nuw i64 %i.f, 1
  %i.q = add nsw i64 %i.p, -1
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.q, i1 true) ; 2 uses
  %notmask.i31 = ashr exact i64 -1152921504606846976, %i.r
  %i.s = lshr i64 1152921504606846975, %i.r
  %i.t = add nuw nsw i64 %i.f, %i.s
  %i.u = and i64 %i.t, %notmask.i31
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.e, %bb.c
  %.0.i27 = phi i64 [ %i.n, %bb.c ], [ %i.u, %bb.e ] ; 2 uses
  %i.v = icmp ult i64 %.0.i27, 16384
  br i1 %i.v, label %sz_sa2u.exit, label %.thread38

bb.f:                                             ; preds = %bb.a
  %i.w = icmp ugt i64 %3, 8070450532247928832
  br i1 %i.w, label %sz_sa2u.exit.thread, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.x = icmp ult i64 %2, 16385
  br i1 %i.x, label %.thread38, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.y, label %sz_s2u.exit29, label %bb.i, !prof !15

bb.i:                                             ; preds = %bb.h
  %i.z = shl nuw i64 %2, 1
  %i.aa = add i64 %i.z, -1
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.aa, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ab
  %i.ac = lshr i64 1152921504606846975, %i.ab
  %i.ad = add nuw nsw i64 %2, %i.ac
  %i.ae = and i64 %i.ad, %notmask.i
  br label %sz_s2u.exit29

sz_s2u.exit29:                                    ; preds = %bb.i, %bb.h
  %.0.i30 = phi i64 [ %i.ae, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.af = icmp ult i64 %.0.i30, %2
  br i1 %i.af, label %sz_sa2u.exit.thread, label %.thread38

.thread38:                                        ; preds = %sz_s2u.exit, %sz_s2u.exit29, %bb.g
  %.0.i = phi i64 [ %.0.i30, %sz_s2u.exit29 ], [ 16384, %bb.g ], [ 16384, %sz_s2u.exit ] ; 3 uses
  %i.ag = load i64, ptr @je_sz_large_pad, align 8, !tbaa !13
  %i.ah = add nuw nsw i64 %3, 4095
  %i.ai = and i64 %i.ah, 9223372036854771712
  %i.aj = add nsw i64 %i.ai, -4096
  %i.ak = add i64 %i.aj, %.0.i
  %i.al = add i64 %i.ak, %i.ag
  %i.am = icmp ult i64 %i.al, %.0.i
  %..0.i = select i1 %i.am, i64 0, i64 %.0.i
  br label %sz_sa2u.exit

sz_sa2u.exit:                                     ; preds = %sz_s2u.exit, %.thread38
  %.018.i = phi i64 [ %..0.i, %.thread38 ], [ %.0.i27, %sz_s2u.exit ]
  %i.an = add nsw i64 %.018.i, -8070450532247928833
  %i.ao = icmp ult i64 %i.an, -8070450532247928832
  br i1 %i.ao, label %sz_sa2u.exit.thread, label %bb.j, !prof !17

bb.j:                                             ; preds = %sz_sa2u.exit
  %i.ap = icmp eq ptr %0, null                    ; 2 uses
  br i1 %i.ap, label %arena_choose_maybe_huge.exit, label %bb.k, !prof !15

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.l, label %arena_choose_maybe_huge.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.aq = load i64, ptr @je_oversize_threshold, align 8, !tbaa !13
  %.not12.i = icmp ult i64 %2, %i.aq
  br i1 %.not12.i, label %.thread40, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !18 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr i8, ptr %i.as, i64 78928
  %.val = load i32, ptr %i.au, align 8, !tbaa !21
  %i.av = load i32, ptr @je_manual_arena_base, align 4, !tbaa !7
  %i.aw = icmp ult i32 %.val, %i.av
  br i1 %i.aw, label %bb.o, label %.thread40

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ax = tail call ptr @je_arena_choose_huge(ptr noundef nonnull %0) #10
  br label %arena_choose_maybe_huge.exit

.thread40:                                        ; preds = %bb.n, %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !12
  %i.ba = icmp sgt i8 %i.az, 0
  br i1 %i.ba, label %bb.p, label %bb.r, !prof !15

bb.p:                                             ; preds = %.thread40
  %i.bb = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.q, label %arena_choose_maybe_huge.exit.thread, !prof !15

bb.q:                                             ; preds = %bb.p
  %i.bd = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #10
  br label %arena_choose_maybe_huge.exit

bb.r:                                             ; preds = %.thread40
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !18 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.s, label %bb.x, !prof !15

bb.s:                                             ; preds = %bb.r
  %i.bh = tail call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false) #10 ; 7 uses
  %i.bi = load i8, ptr %0, align 8, !tbaa !74, !range !75, !noundef !76
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !77 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not43.i.i = icmp eq ptr %i.bn, %i.bh
  br i1 %.not43.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, ptr noundef %i.bh) #10
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  tail call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, ptr noundef %i.bh) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %bb.r
  %.037.i.i = phi ptr [ %i.bf, %bb.r ], [ %i.bh, %bb.s ], [ %i.bh, %bb.u ], [ %i.bh, %bb.v ], [ %i.bh, %bb.w ] ; 6 uses
  %i.bo = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7 ; 2 uses
  %i.bp = icmp ult i32 %i.bo, 3
  br i1 %i.bp, label %arena_choose_maybe_huge.exit, label %percpu_arena_ind_limit.exit.i.i

percpu_arena_ind_limit.exit.i.i:                  ; preds = %bb.x
  %i.bq = getelementptr i8, ptr %.037.i.i, i64 78928 ; 2 uses
  %.037.val47.i.i = load i32, ptr %i.bq, align 8, !tbaa !21
  %i.br = icmp eq i32 %i.bo, 4
  %i.bs = load i32, ptr @je_ncpus, align 4        ; 3 uses
  %i.bt = icmp ugt i32 %i.bs, 1
  %or.cond.i.i.i = and i1 %i.br, %i.bt
  %i.bu = lshr i32 %i.bs, 1
  %spec.select.i.i = add nuw i32 %i.bu, 1
  %.0.i.i.i = select i1 %or.cond.i.i.i, i32 %spec.select.i.i, i32 %i.bs
  %i.bv = icmp ult i32 %.037.val47.i.i, %.0.i.i.i
  br i1 %i.bv, label %bb.y, label %arena_choose_maybe_huge.exit.thread

bb.y:                                             ; preds = %percpu_arena_ind_limit.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.037.i.i, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !84
  %.not44.i.i = icmp eq ptr %i.bx, %0
  br i1 %.not44.i.i, label %arena_choose_maybe_huge.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = tail call i32 @sched_getcpu() #10       ; 3 uses
  %i.bz = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !7
  %i.ca = icmp eq i32 %i.bz, 3
  br i1 %i.ca, label %percpu_arena_choose.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = load i32, ptr @je_ncpus, align 4, !tbaa !7
  %i.cc = lshr i32 %i.cb, 1                       ; 2 uses
  %i.cd = icmp ult i32 %i.by, %i.cc
  %i.ce = select i1 %i.cd, i32 0, i32 %i.cc
  %spec.select.i.i.i = sub nuw i32 %i.by, %i.ce
  br label %percpu_arena_choose.exit.i.i

percpu_arena_choose.exit.i.i:                     ; preds = %bb.aa, %bb.z
  %.0.i46.i.i = phi i32 [ %i.by, %bb.z ], [ %spec.select.i.i.i, %bb.aa ] ; 4 uses
  %.037.val.i.i = load i32, ptr %i.bq, align 8, !tbaa !21
  %.not45.i.i = icmp eq i32 %.037.val.i.i, %.0.i46.i.i
  br i1 %.not45.i.i, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %percpu_arena_choose.exit.i.i
  %i.cf = load ptr, ptr %i.be, align 8, !tbaa !18 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 78928
  %.val.i.i.i = load i32, ptr %i.cg, align 8, !tbaa !21
  %.not.i49.i.i = icmp eq i32 %.val.i.i.i, %.0.i46.i.i
  br i1 %.not.i49.i.i, label %percpu_arena_update.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ch = zext i32 %.0.i46.i.i to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ch
  %i.cj = load atomic ptr, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.ad, label %arena_get.exit.i.i.i, !prof !15

bb.ad:                                            ; preds = %bb.ac
  %i.cl = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef %.0.i46.i.i, ptr noundef nonnull @je_arena_config_default) #10
  br label %arena_get.exit.i.i.i

arena_get.exit.i.i.i:                             ; preds = %bb.ad, %bb.ac
  %.0.i18.i.i.i = phi ptr [ %i.cl, %bb.ad ], [ %i.cj, %bb.ac ] ; 2 uses
  tail call void @je_arena_migrate(ptr noundef nonnull %0, ptr noundef nonnull %i.cf, ptr noundef %.0.i18.i.i.i) #10
  %i.cm = load i8, ptr %0, align 8, !tbaa !74, !range !75, !noundef !76
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.ae, label %percpu_arena_update.exit.i.i

bb.ae:                                            ; preds = %arena_get.exit.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.co, ptr noundef %.0.i18.i.i.i) #10
  br label %percpu_arena_update.exit.i.i

percpu_arena_update.exit.i.i:                     ; preds = %bb.ae, %arena_get.exit.i.i.i, %bb.ab
  %i.cq = load ptr, ptr %i.be, align 8, !tbaa !18
  br label %bb.af

bb.af:                                            ; preds = %percpu_arena_update.exit.i.i, %percpu_arena_choose.exit.i.i
  %.1.i.i = phi ptr [ %i.cq, %percpu_arena_update.exit.i.i ], [ %.037.i.i, %percpu_arena_choose.exit.i.i ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  store ptr %0, ptr %i.cr, align 8, !tbaa !84
  br label %arena_choose_maybe_huge.exit.thread

arena_choose_maybe_huge.exit:                     ; preds = %bb.o, %bb.q, %bb.x, %bb.j
  %.024 = phi ptr [ %1, %bb.j ], [ %i.ax, %bb.o ], [ %.037.i.i, %bb.x ], [ %i.bd, %bb.q ] ; 2 uses
  %i.cs = icmp eq ptr %.024, null
  br i1 %i.cs, label %sz_sa2u.exit.thread, label %arena_choose_maybe_huge.exit.thread, !prof !85

arena_choose_maybe_huge.exit.thread:              ; preds = %bb.p, %bb.y, %bb.af, %percpu_arena_ind_limit.exit.i.i, %bb.k, %arena_choose_maybe_huge.exit
  %.02444 = phi ptr [ %.024, %arena_choose_maybe_huge.exit ], [ %i.bb, %bb.p ], [ %.037.i.i, %bb.y ], [ %.1.i.i, %bb.af ], [ %.037.i.i, %percpu_arena_ind_limit.exit.i.i ], [ %1, %bb.k ] ; 11 uses
  %i.ct = tail call ptr @je_arena_extent_alloc_large(ptr noundef %0, ptr noundef nonnull %.02444, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) #10 ; 9 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %sz_sa2u.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %arena_choose_maybe_huge.exit.thread
  %i.cv = getelementptr i8, ptr %.02444, i64 78928
  %.024.val = load i32, ptr %i.cv, align 8, !tbaa !21
  %i.cw = load i32, ptr @je_manual_arena_base, align 4, !tbaa !7
  %i.cx = icmp ult i32 %.024.val, %i.cw
  br i1 %i.cx, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cy = getelementptr inbounds nuw i8, ptr %.02444, i64 10600 ; 2 uses
  %i.cz = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.cy) #10
  %.not.i35 = icmp eq i32 %i.cz, 0
  br i1 %.not.i35, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.da = getelementptr inbounds nuw i8, ptr %.02444, i64 10536
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.da) #10
  %i.db = getelementptr inbounds nuw i8, ptr %.02444, i64 10640
  store atomic i8 1, ptr %i.db monotonic, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dc = getelementptr inbounds nuw i8, ptr %.02444, i64 10592 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !86
  %i.de = add i64 %i.dd, 1
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !86
  %i.df = getelementptr inbounds nuw i8, ptr %.02444, i64 10584 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !88
  %.not.i.i36 = icmp eq ptr %i.dg, %0
  br i1 %.not.i.i36, label %malloc_mutex_lock.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %0, ptr %i.df, align 8, !tbaa !88
  %i.dh = getelementptr inbounds nuw i8, ptr %.02444, i64 10576 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !89
  %i.dj = add i64 %i.di, 1
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !89
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.aj, %bb.ak
  %i.dk = getelementptr inbounds nuw i8, ptr %.02444, i64 10528 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ct, i64 40 ; 3 uses
  store ptr %i.ct, ptr %i.dl, align 8, !tbaa !12
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ct, i64 48 ; 4 uses
  store ptr %i.ct, ptr %i.dm, align 8, !tbaa !12
  %i.dn = load ptr, ptr %i.dk, align 8, !tbaa !90 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %edata_list_active_append.exit, label %bb.al

bb.al:                                            ; preds = %malloc_mutex_lock.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !12
  store ptr %i.dq, ptr %i.dl, align 8, !tbaa !12
  %i.dr = load ptr, ptr %i.dk, align 8, !tbaa !90
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  store ptr %i.ct, ptr %i.ds, align 8, !tbaa !12
  %i.dt = load ptr, ptr %i.dm, align 8, !tbaa !12
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !12
  store ptr %i.dv, ptr %i.dm, align 8, !tbaa !12
  %i.dw = load ptr, ptr %i.dk, align 8, !tbaa !90 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !12
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  store ptr %i.dw, ptr %i.dz, align 8, !tbaa !12
  %i.ea = load ptr, ptr %i.dm, align 8, !tbaa !12
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  store ptr %i.ct, ptr %i.eb, align 8, !tbaa !12
  %.pre.i = load ptr, ptr %i.dl, align 8, !tbaa !12
  br label %edata_list_active_append.exit

edata_list_active_append.exit:                    ; preds = %malloc_mutex_lock.exit, %bb.al
  %i.ec = phi ptr [ %.pre.i, %bb.al ], [ %i.ct, %malloc_mutex_lock.exit ]
  store ptr %i.ec, ptr %i.dk, align 8, !tbaa !90
  %i.ed = getelementptr inbounds nuw i8, ptr %.02444, i64 10640
  store atomic i8 0, ptr %i.ed monotonic, align 8
  %i.ee = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cy) #10 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %edata_list_active_append.exit, %bb.ag
  br i1 %i.ap, label %arena_decay_ticks.exit, label %bb.an, !prof !15

bb.an:                                            ; preds = %bb.am
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !91 ; 2 uses
  %i.eh = add nsw i32 %i.eg, -1
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !91
  %i.ei = icmp slt i32 %i.eg, 1
  br i1 %i.ei, label %bb.ao, label %arena_decay_ticks.exit, !prof !15

bb.ao:                                            ; preds = %bb.an
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !13
  %i.el = mul i64 %i.ek, 6364136223846793005
  %i.em = add i64 %i.el, 1442695040888963407      ; 2 uses
  store i64 %i.em, ptr %i.ej, align 8, !tbaa !13
  %i.en = lshr i64 %i.em, 58
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !93
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.en
  %i.es = load i8, ptr %i.er, align 1, !tbaa !12
  %i.et = zext i8 %i.es to i64
  %i.eu = mul nsw i64 %i.et, %i.eq
  %i.ev = udiv i64 %i.eu, 61
  %i.ew = trunc i64 %i.ev to i32
  store i32 %i.ew, ptr %i.ef, align 8, !tbaa !91
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %.02444, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.an, %bb.am, %bb.ao
  %i.ex = getelementptr i8, ptr %i.ct, i64 8
  %.val34 = load ptr, ptr %i.ex, align 8, !tbaa !94
  br label %sz_sa2u.exit.thread

sz_sa2u.exit.thread:                              ; preds = %bb.d, %sz_s2u.exit29, %bb.f, %arena_choose_maybe_huge.exit, %arena_choose_maybe_huge.exit.thread, %sz_sa2u.exit, %arena_decay_ticks.exit
  %.0 = phi ptr [ %.val34, %arena_decay_ticks.exit ], [ null, %sz_sa2u.exit ], [ null, %arena_choose_maybe_huge.exit.thread ], [ null, %arena_choose_maybe_huge.exit ], [ null, %bb.f ], [ null, %sz_s2u.exit29 ], [ null, %bb.d ]
  ret ptr %.0
}
end_hunk_0
