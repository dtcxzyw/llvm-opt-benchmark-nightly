inline.NumInlined: 91
inline.NumDeleted: 45
begin_hunk_0_@je_large_palloc:bb.a
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cp, ptr noundef %.0.i18.i.i.i) #10
  br label %percpu_arena_update.exit.i.i

percpu_arena_update.exit.i.i:                     ; preds = %bb.ae, %arena_get.exit.i.i.i, %bb.ab
  %i.cr = load ptr, ptr %i.be, align 8, !tbaa !18
  br label %bb.af

bb.af:                                            ; preds = %percpu_arena_update.exit.i.i, %percpu_arena_choose.exit.i.i
  %.1.i.i = phi ptr [ %i.cr, %percpu_arena_update.exit.i.i ], [ %.037.i.i, %percpu_arena_choose.exit.i.i ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  store ptr %0, ptr %i.cs, align 8, !tbaa !84
  br label %arena_choose_maybe_huge.exit.thread

arena_choose_maybe_huge.exit:                     ; preds = %bb.o, %bb.q, %bb.x, %bb.j
  %.024 = phi ptr [ %1, %bb.j ], [ %i.ax, %bb.o ], [ %.037.i.i, %bb.x ], [ %i.bd, %bb.q ] ; 2 uses
  %i.ct = icmp eq ptr %.024, null
  br i1 %i.ct, label %sz_sa2u.exit.thread, label %arena_choose_maybe_huge.exit.thread, !prof !85

arena_choose_maybe_huge.exit.thread:              ; preds = %bb.p, %bb.y, %bb.af, %percpu_arena_ind_limit.exit.i.i, %bb.k, %arena_choose_maybe_huge.exit
  %.02444 = phi ptr [ %.024, %arena_choose_maybe_huge.exit ], [ %i.bb, %bb.p ], [ %.037.i.i, %bb.y ], [ %.1.i.i, %bb.af ], [ %.037.i.i, %percpu_arena_ind_limit.exit.i.i ], [ %1, %bb.k ] ; 11 uses
  %i.cu = tail call ptr @je_arena_extent_alloc_large(ptr noundef %0, ptr noundef nonnull %.02444, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) #10 ; 9 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %sz_sa2u.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %arena_choose_maybe_huge.exit.thread
  %i.cw = getelementptr i8, ptr %.02444, i64 78928
  %.024.val = load i32, ptr %i.cw, align 8, !tbaa !21
  %i.cx = load i32, ptr @je_manual_arena_base, align 4, !tbaa !7
  %i.cy = icmp ult i32 %.024.val, %i.cx
  br i1 %i.cy, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cz = getelementptr inbounds nuw i8, ptr %.02444, i64 10600 ; 2 uses
  %i.da = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.cz) #10
  %.not.i35 = icmp eq i32 %i.da, 0
  br i1 %.not.i35, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.db = getelementptr inbounds nuw i8, ptr %.02444, i64 10536
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.db) #10
  %i.dc = getelementptr inbounds nuw i8, ptr %.02444, i64 10640
  store atomic i8 1, ptr %i.dc monotonic, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dd = getelementptr inbounds nuw i8, ptr %.02444, i64 10592 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !86
  %i.df = add i64 %i.de, 1
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !86
  %i.dg = getelementptr inbounds nuw i8, ptr %.02444, i64 10584 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !88
  %.not.i.i36 = icmp eq ptr %i.dh, %0
  br i1 %.not.i.i36, label %malloc_mutex_lock.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %0, ptr %i.dg, align 8, !tbaa !88
  %i.di = getelementptr inbounds nuw i8, ptr %.02444, i64 10576 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !89
  %i.dk = add i64 %i.dj, 1
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !89
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.aj, %bb.ak
  %i.dl = getelementptr inbounds nuw i8, ptr %.02444, i64 10528 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cu, i64 40 ; 3 uses
  store ptr %i.cu, ptr %i.dm, align 8, !tbaa !12
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cu, i64 48 ; 4 uses
  store ptr %i.cu, ptr %i.dn, align 8, !tbaa !12
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !90 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %edata_list_active_append.exit, label %bb.al

bb.al:                                            ; preds = %malloc_mutex_lock.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !12
  store ptr %i.dr, ptr %i.dm, align 8, !tbaa !12
  %i.ds = load ptr, ptr %i.dl, align 8, !tbaa !90
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  store ptr %i.cu, ptr %i.dt, align 8, !tbaa !12
  %i.du = load ptr, ptr %i.dn, align 8, !tbaa !12
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !12
  store ptr %i.dw, ptr %i.dn, align 8, !tbaa !12
  %i.dx = load ptr, ptr %i.dl, align 8, !tbaa !90 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !12
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  store ptr %i.dx, ptr %i.ea, align 8, !tbaa !12
  %i.eb = load ptr, ptr %i.dn, align 8, !tbaa !12
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  store ptr %i.cu, ptr %i.ec, align 8, !tbaa !12
  %.pre.i = load ptr, ptr %i.dm, align 8, !tbaa !12
  br label %edata_list_active_append.exit

edata_list_active_append.exit:                    ; preds = %malloc_mutex_lock.exit, %bb.al
  %i.ed = phi ptr [ %.pre.i, %bb.al ], [ %i.cu, %malloc_mutex_lock.exit ]
  store ptr %i.ed, ptr %i.dl, align 8, !tbaa !90
  %i.ee = getelementptr inbounds nuw i8, ptr %.02444, i64 10640
  store atomic i8 0, ptr %i.ee monotonic, align 8
  %i.ef = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cz) #10 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %edata_list_active_append.exit, %bb.ag
  br i1 %i.ap, label %arena_decay_ticks.exit, label %bb.an, !prof !15

bb.an:                                            ; preds = %bb.am
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !91 ; 2 uses
  %i.ei = add nsw i32 %i.eh, -1
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !91
  %i.ej = icmp slt i32 %i.eh, 1
  br i1 %i.ej, label %bb.ao, label %arena_decay_ticks.exit, !prof !15

bb.ao:                                            ; preds = %bb.an
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !13
  %i.em = mul i64 %i.el, 6364136223846793005
  %i.en = add i64 %i.em, 1442695040888963407      ; 2 uses
  store i64 %i.en, ptr %i.ek, align 8, !tbaa !13
  %i.eo = lshr i64 %i.en, 58
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !93
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.eo
  %i.et = load i8, ptr %i.es, align 1, !tbaa !12
  %i.eu = zext i8 %i.et to i64
  %i.ev = mul nsw i64 %i.eu, %i.er
  %i.ew = udiv i64 %i.ev, 61
  %i.ex = trunc i64 %i.ew to i32
  store i32 %i.ex, ptr %i.eg, align 8, !tbaa !91
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %.02444, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.an, %bb.am, %bb.ao
  %i.ey = getelementptr i8, ptr %i.cu, i64 8
  %.val34 = load ptr, ptr %i.ey, align 8, !tbaa !94
  br label %sz_sa2u.exit.thread

sz_sa2u.exit.thread:                              ; preds = %bb.d, %sz_s2u.exit29, %bb.f, %arena_choose_maybe_huge.exit, %arena_choose_maybe_huge.exit.thread, %sz_sa2u.exit, %arena_decay_ticks.exit
  %.0 = phi ptr [ %.val34, %arena_decay_ticks.exit ], [ null, %sz_sa2u.exit ], [ null, %arena_choose_maybe_huge.exit.thread ], [ null, %arena_choose_maybe_huge.exit ], [ null, %bb.f ], [ null, %sz_s2u.exit29 ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @je_arena_extent_alloc_large(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_large_ralloc_no_move(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %.val = load i64, ptr %1, align 8, !tbaa !96
  %i.b = lshr i64 %.val, 20
  %i.c = and i64 %i.b, 255
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 4 uses
  %i.f = icmp ugt i64 %3, %i.e
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc zeroext i1 @large_ralloc_no_move_expand(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %3, i1 noundef zeroext %4)
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val44 = load i64, ptr %1, align 8, !tbaa !96
  %i.h = and i64 %.val44, 4095
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.h
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = icmp eq ptr %0, null
  br i1 %i.k, label %arena_decay_ticks.exit, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !91   ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !91
  %i.o = icmp slt i32 %i.m, 1
  br i1 %i.o, label %bb.e, label %arena_decay_ticks.exit, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !13
  %i.r = mul i64 %i.q, 6364136223846793005
  %i.s = add i64 %i.r, 1442695040888963407        ; 2 uses
  store i64 %i.s, ptr %i.p, align 8, !tbaa !13
  %i.t = lshr i64 %i.s, 58
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.v = load i32, ptr %i.u, align 4, !tbaa !93
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.t
  %i.y = load i8, ptr %i.x, align 1, !tbaa !12
  %i.z = zext i8 %i.y to i64
  %i.aa = mul nsw i64 %i.z, %i.w
  %i.ab = udiv i64 %i.aa, 61
  %i.ac = trunc i64 %i.ab to i32
  store i32 %i.ac, ptr %i.l, align 8, !tbaa !91
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.j, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %arena_decay_ticks.exit

bb.f:                                             ; preds = %bb.b
  %i.ad = icmp ult i64 %2, %3
  %i.ae = icmp ugt i64 %2, %i.e
  %or.cond = and i1 %i.ad, %i.ae
  br i1 %or.cond, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.af = tail call fastcc zeroext i1 @large_ralloc_no_move_expand(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext %4)
  br i1 %i.af, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.val43 = load i64, ptr %1, align 8, !tbaa !96
  %i.ag = and i64 %.val43, 4095
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ag
  %i.ai = load atomic ptr, ptr %i.ah monotonic, align 8
  %i.aj = icmp eq ptr %0, null
  br i1 %i.aj, label %arena_decay_ticks.exit, label %bb.i, !prof !15

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !91 ; 2 uses
  %i.am = add nsw i32 %i.al, -1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !91
  %i.an = icmp slt i32 %i.al, 1
  br i1 %i.an, label %bb.j, label %arena_decay_ticks.exit, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !13
  %i.aq = mul i64 %i.ap, 6364136223846793005
  %i.ar = add i64 %i.aq, 1442695040888963407      ; 2 uses
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !13
  %i.as = lshr i64 %i.ar, 58
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.au = load i32, ptr %i.at, align 4, !tbaa !93
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.as
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !12
  %i.ay = zext i8 %i.ax to i64
  %i.az = mul nsw i64 %i.ay, %i.av
  %i.ba = udiv i64 %i.az, 61
  %i.bb = trunc i64 %i.ba to i32
  store i32 %i.bb, ptr %i.ak, align 8, !tbaa !91
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.ai, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %arena_decay_ticks.exit

bb.k:                                             ; preds = %bb.f, %bb.g, %bb.a
  %.not = icmp ult i64 %i.e, %2
  %.not36 = icmp ugt i64 %i.e, %3                 ; 2 uses
  %or.cond37 = or i1 %.not, %.not36
  br i1 %or.cond37, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val42 = load i64, ptr %1, align 8, !tbaa !96
  %i.bc = and i64 %.val42, 4095
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.bc
  %i.be = load atomic ptr, ptr %i.bd monotonic, align 8
  %i.bf = icmp eq ptr %0, null
  br i1 %i.bf, label %arena_decay_ticks.exit, label %bb.m, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !91 ; 2 uses
  %i.bi = add nsw i32 %i.bh, -1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !91
  %i.bj = icmp slt i32 %i.bh, 1
  br i1 %i.bj, label %bb.n, label %arena_decay_ticks.exit, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !13
  %i.bm = mul i64 %i.bl, 6364136223846793005
  %i.bn = add i64 %i.bm, 1442695040888963407      ; 2 uses
  store i64 %i.bn, ptr %i.bk, align 8, !tbaa !13
  %i.bo = lshr i64 %i.bn, 58
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !93
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.bo
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !12
  %i.bu = zext i8 %i.bt to i64
  %i.bv = mul nsw i64 %i.bu, %i.br
  %i.bw = udiv i64 %i.bv, 61
  %i.bx = trunc i64 %i.bw to i32
  store i32 %i.bx, ptr %i.bg, align 8, !tbaa !91
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.be, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %arena_decay_ticks.exit

bb.o:                                             ; preds = %bb.k
  br i1 %.not36, label %bb.p, label %arena_decay_ticks.exit

bb.p:                                             ; preds = %bb.o
  %.val18.i = load i64, ptr %1, align 8, !tbaa !96
  %i.by = and i64 %.val18.i, 4095
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.by
  %i.ca = load atomic ptr, ptr %i.bz monotonic, align 8 ; 4 uses
  %i.cb = tail call ptr @je_arena_get_ehooks(ptr noundef %i.ca) #10
  %i.cc = getelementptr i8, ptr %1, i64 16
  %.val19.i = load i64, ptr %i.cc, align 8, !tbaa !12
  %i.cd = and i64 %.val19.i, -4096
  %.val.i = load i64, ptr %1, align 8, !tbaa !96
  %i.ce = lshr i64 %.val.i, 20
  %i.cf = and i64 %i.ce, 255
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cj = load atomic ptr, ptr %i.ci acquire, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !97
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %arena_decay_ticks.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i8 0, ptr %i.a, align 1, !tbaa !74
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 10648
  %i.co = load i64, ptr @je_sz_large_pad, align 8, !tbaa !13
  %i.cp = add i64 %i.co, %3
  %i.cq = icmp ult i64 %3, 4097
  br i1 %i.cq, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.cr = add nuw nsw i64 %3, 7
  %i.cs = lshr i64 %i.cr, 3
  %i.ct = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !12
  %i.cv = zext i8 %i.cu to i32
  br label %sz_size2index.exit.i

bb.s:                                             ; preds = %bb.q
  %i.cw = icmp ugt i64 %3, 8070450532247928832
  br i1 %i.cw, label %sz_size2index.exit.i, label %bb.t, !prof !15

bb.t:                                             ; preds = %bb.s
  %i.cx = shl nuw i64 %3, 1
  %i.cy = add i64 %i.cx, -1
  %i.cz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cy, i1 true) ; 3 uses
  %i.da = trunc nuw nsw i64 %i.cz to i32
  %i.db = sub nuw nsw i64 60, %i.cz
  %i.dc = ashr exact i64 -1152921504606846976, %i.cz
  %i.dd = add nsw i64 %3, -1
  %i.de = and i64 %i.dc, %i.dd
  %i.df = lshr i64 %i.de, %i.db
  %i.dg = trunc i64 %i.df to i32
  %i.dh = and i32 %i.dg, 3
  %i.di = shl nuw nsw i32 %i.da, 2
  %reass.sub = sub nsw i32 %i.dh, %i.di
  %i.dj = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.t, %bb.s, %bb.r
  %.0.i.i = phi i32 [ %i.cv, %bb.r ], [ %i.dj, %bb.t ], [ 235, %bb.s ]
  %i.dk = call zeroext i1 @je_pa_shrink(ptr noundef %0, ptr noundef nonnull %i.cn, ptr noundef nonnull %1, i64 noundef %i.cd, i64 noundef %i.cp, i32 noundef %.0.i.i, ptr noundef nonnull %i.a) #10
  br i1 %i.dk, label %large_ralloc_no_move_shrink.exit.thread49, label %bb.u

large_ralloc_no_move_shrink.exit.thread49:        ; preds = %sz_size2index.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %arena_decay_ticks.exit

bb.u:                                             ; preds = %sz_size2index.exit.i
  %i.dl = load i8, ptr %i.a, align 1, !tbaa !74, !range !75, !noundef !76
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %i.ca) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @je_arena_extent_ralloc_large_shrink(ptr noundef %0, ptr noundef nonnull %i.ca, ptr noundef nonnull %1, i64 noundef %i.ch) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.val41 = load i64, ptr %1, align 8, !tbaa !96
  %i.dn = and i64 %.val41, 4095
  %i.do = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.dn
  %i.dp = load atomic ptr, ptr %i.do monotonic, align 8
  %i.dq = icmp eq ptr %0, null
  br i1 %i.dq, label %arena_decay_ticks.exit, label %bb.x, !prof !15

bb.x:                                             ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !91 ; 2 uses
  %i.dt = add nsw i32 %i.ds, -1
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !91
  %i.du = icmp slt i32 %i.ds, 1
  br i1 %i.du, label %bb.y, label %arena_decay_ticks.exit, !prof !15

bb.y:                                             ; preds = %bb.x
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !13
  %i.dx = mul i64 %i.dw, 6364136223846793005
  %i.dy = add i64 %i.dx, 1442695040888963407      ; 2 uses
  store i64 %i.dy, ptr %i.dv, align 8, !tbaa !13
  %i.dz = lshr i64 %i.dy, 58
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !93
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.dz
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !12
  %i.ef = zext i8 %i.ee to i64
  %i.eg = mul nsw i64 %i.ef, %i.ec
  %i.eh = udiv i64 %i.eg, 61
  %i.ei = trunc i64 %i.eh to i32
  store i32 %i.ei, ptr %i.dr, align 8, !tbaa !91
  call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.dp, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.p, %bb.y, %bb.w, %bb.x, %large_ralloc_no_move_shrink.exit.thread49, %bb.n, %bb.l, %bb.m, %bb.j, %bb.h, %bb.i, %bb.e, %bb.c, %bb.d, %bb.o
  %.0 = phi i1 [ false, %bb.e ], [ false, %bb.j ], [ true, %bb.o ], [ false, %bb.y ], [ true, %large_ralloc_no_move_shrink.exit.thread49 ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.n ], [ false, %bb.x ], [ false, %bb.w ], [ true, %bb.p ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @large_ralloc_no_move_expand(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %.val29 = load i64, ptr %1, align 8, !tbaa !96  ; 2 uses
  %i.b = and i64 %.val29, 4095
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.b
  %i.d = load atomic ptr, ptr %i.c monotonic, align 8 ; 3 uses
  %i.e = getelementptr i8, ptr %1, i64 16
  %.val30 = load i64, ptr %i.e, align 8, !tbaa !12
  %i.f = and i64 %.val30, -4096
  %i.g = lshr i64 %.val29, 20
  %i.h = and i64 %i.g, 255
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13   ; 2 uses
  %i.k = load i64, ptr @je_sz_large_pad, align 8, !tbaa !13
  %i.l = add i64 %i.k, %2
  %i.m = icmp ult i64 %2, 4097
  br i1 %i.m, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.n = add nuw nsw i64 %2, 7
  %i.o = lshr i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12
  %i.r = zext i8 %i.q to i32
  br label %sz_size2index.exit

bb.c:                                             ; preds = %bb.a
  %i.s = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.s, label %sz_size2index.exit, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %2, 1
  %i.u = add i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 3 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = sub nuw nsw i64 60, %i.v
  %i.y = ashr exact i64 -1152921504606846976, %i.v
  %i.z = add nsw i64 %2, -1
  %i.aa = and i64 %i.y, %i.z
  %i.ab = lshr i64 %i.aa, %i.x
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 3
  %i.ae = shl nuw nsw i32 %i.w, 2
  %reass.sub = sub nsw i32 %i.ad, %i.ae
  %i.af = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.c, %bb.b
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %i.af, %bb.d ], [ 235, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i8 0, ptr %i.a, align 1, !tbaa !74
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 10648
  %i.ah = call zeroext i1 @je_pa_expand(ptr noundef %0, ptr noundef nonnull %i.ag, ptr noundef nonnull %1, i64 noundef %i.f, i64 noundef %i.l, i32 noundef %.0.i, i1 noundef zeroext %3, ptr noundef nonnull %i.a) #10 ; 2 uses
  %i.ai = load i8, ptr %i.a, align 1, !tbaa !74, !range !75, !noundef !76
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %sz_size2index.exit
  call void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %i.d) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %sz_size2index.exit
  br i1 %i.ah, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load i8, ptr @je_opt_cache_oblivious, align 1, !range !75
  %i.al = trunc nuw i8 %i.ak to i1
  %or.cond = select i1 %3, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.am, align 8, !tbaa !94
  %i.an = ptrtoint ptr %.val to i64
  %i.ao = add i64 %i.j, %i.an                     ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = and i64 %i.ao, 4095
  %i.ar = sub nuw nsw i64 4096, %i.aq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, i8 0, i64 %i.ar, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @je_arena_extent_ralloc_large_expand(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %1, i64 noundef %i.j) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i1 %i.ah
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_large_ralloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %9 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %10 = alloca %struct.rtree_ctx_s, align 8       ; 4 uses
  %11 = alloca %struct.rtree_contents_s, align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %10) #10
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i41 = phi ptr [ %10, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef %0, ptr noundef nonnull %.0.i41, i64 noundef %i.c)
  %i.d = load ptr, ptr %11, align 8, !tbaa !99    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %.val49 = load i64, ptr %i.d, align 8, !tbaa !96
  %i.e = lshr i64 %.val49, 20
  %i.f = and i64 %i.e, 255
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 8 uses
  %i.i = call zeroext i1 @je_large_ralloc_no_move(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef %3, i64 noundef %3, i1 noundef zeroext %5)
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.j = load i8, ptr %7, align 8, !tbaa !102, !range !75, !noundef !76
  %i.k = xor i8 %i.j, 1
  %not. = zext nneg i8 %i.k to i32
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @je_hook_invoke_expand(i32 noundef %not., ptr noundef %2, i64 noundef %i.h, i64 noundef %3, i64 noundef %i.c, ptr noundef nonnull %i.l) #10
  %i.m = getelementptr i8, ptr %i.d, i64 8
  %.val48 = load ptr, ptr %i.m, align 8, !tbaa !94
  br label %arena_sdalloc.exit

bb.e:                                             ; preds = %tsdn_rtree_ctx.exit
  %..i = call i64 @llvm.umax.i64(i64 %4, i64 64)
  %i.n = call ptr @je_large_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %3, i64 noundef %..i, i1 noundef zeroext %5) ; 13 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %arena_sdalloc.exit, label %tsdn_witness_tsdp_get.exit

tsdn_witness_tsdp_get.exit:                       ; preds = %bb.e
  %i.p = load i8, ptr %7, align 8, !tbaa !102, !range !75, !noundef !76
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = select i1 %i.q, i32 7, i32 8
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  call void @je_hook_invoke_alloc(i32 noundef %i.r, ptr noundef nonnull %i.n, i64 noundef %i.s, ptr noundef nonnull %i.t) #10
  %i.u = load i8, ptr %7, align 8, !tbaa !102, !range !75, !noundef !76
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = select i1 %i.v, i32 3, i32 4
  call void @je_hook_invoke_dalloc(i32 noundef %i.w, ptr noundef %2, ptr noundef nonnull %i.t) #10
  %i.x = call i64 @llvm.umin.i64(i64 %3, i64 %i.h)
  %i.y = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  %.val47 = load ptr, ptr %i.y, align 8, !tbaa !94
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %.val47, i64 %i.x, i1 false)
  %.val = load ptr, ptr %i.y, align 8, !tbaa !94  ; 7 uses
  %i.z = icmp eq ptr %6, null
  br i1 %i.z, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %tsdn_witness_tsdp_get.exit
  call fastcc void @arena_sdalloc_no_tcache(ptr noundef %0, ptr noundef %.val, i64 noundef %i.h)
  br label %arena_sdalloc.exit

bb.g:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.aa = icmp ult i64 %i.h, 4097
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.ab = add nuw nsw i64 %i.h, 7
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !12
  %i.af = zext i8 %i.ae to i32
  br label %sz_size2index.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ag = icmp ugt i64 %i.h, 8070450532247928832
  br i1 %i.ag, label %sz_size2index.exit.i.thread, label %bb.j, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.ah = shl nuw i64 %i.h, 1
  %i.ai = add i64 %i.ah, -1
  %i.aj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ai, i1 true) ; 3 uses
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = sub nuw nsw i64 60, %i.aj
  %i.am = ashr exact i64 -1152921504606846976, %i.aj
  %i.an = add nsw i64 %i.h, -1
  %i.ao = and i64 %i.am, %i.an
  %i.ap = lshr i64 %i.ao, %i.al
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = and i32 %i.aq, 3
  %i.as = shl nuw nsw i32 %i.ak, 2
  %reass.sub = sub nsw i32 %i.ar, %i.as
  %i.at = add nsw i32 %reass.sub, 232
end_hunk_0
