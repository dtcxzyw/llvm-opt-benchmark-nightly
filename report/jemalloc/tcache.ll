Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/tcache?download=true
begin_hunk_0_@je_arena_dalloc_small
declare void @je_arena_dalloc_small(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #13
  br label %emap_edata_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %emap_edata_lookup.exit

emap_edata_lookup.exit:                           ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %2, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i.i, i64 noundef %i.c)
  %i.d = load ptr, ptr %3, align 8, !tbaa !122
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @je_large_dalloc(ptr noundef %0, ptr noundef %i.d) #13
  ret void
}

declare void @je_large_dalloc(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @je_base_alloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @tcache_try_gc_bin(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.cache_bin_ptr_array_s, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = zext i32 %3 to i64                       ; 8 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.b ; 13 uses
  %.val22 = load ptr, ptr %i.c, align 8, !tbaa !43 ; 4 uses
  %i.d = icmp eq ptr %.val22, @je_disabled_bin
  %i.e = getelementptr i8, ptr %i.c, i64 22       ; 2 uses
  br i1 %i.d, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %3, 36                      ; 2 uses
  %i.g = getelementptr i8, ptr %i.c, i64 20       ; 3 uses
  %.val19.i = load i16, ptr %i.g, align 4, !tbaa !44 ; 3 uses
  %.val17.i = load i16, ptr %i.e, align 2, !tbaa !32 ; 3 uses
  %i.h = shl i16 %.val17.i, 3
  %.neg.i = sub i16 %i.h, %.val19.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 18 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !49
  %i.k = add i16 %.neg.i, %i.j
  %i.l = lshr i16 %i.k, 3                         ; 4 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %je_tcache_bin_flush_stashed.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %.val22 to i64
  %i.o = trunc i64 %i.n to i16
  %i.p = sub i16 %.val19.i, %i.o
  %i.q = zext nneg i16 %i.l to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i16 %i.l, ptr %4, align 8, !tbaa !41
  %i.r = zext i16 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.val22, i64 %i.r
  %i.t = zext i16 %.val17.i to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !45
  %i.x = zext nneg i16 %i.l to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.b
  %i.z = load i64, ptr %i.y, align 8, !tbaa !27
  tail call void @je_san_check_stashed_ptrs(ptr noundef %i.v, i64 noundef %i.x, i64 noundef %i.z) #13
  %i.aa = load ptr, ptr %2, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  call void @je_arena_ptr_array_flush(ptr noundef %0, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %i.q, i1 noundef zeroext %i.f, ptr noundef %i.ac, i64 %i.ae) #13
  %.val.i.i20.i = load i16, ptr %i.e, align 2, !tbaa !32 ; 2 uses
  %.val3.i.i21.i = load ptr, ptr %i.c, align 8, !tbaa !43 ; 3 uses
  %.val4.i.i22.i = load i16, ptr %i.g, align 4, !tbaa !44 ; 2 uses
  %i.af = ptrtoint ptr %.val3.i.i21.i to i64
  %i.ag = trunc i64 %i.af to i16
  %i.ah = sub i16 %.val4.i.i22.i, %i.ag
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.val3.i.i21.i, i64 %i.ai
  %i.ak = zext i16 %.val.i.i20.i to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.al
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = trunc i64 %i.an to i16
  store i16 %i.ao, ptr %i.i, align 2, !tbaa !49
  store i64 0, ptr %i.ad, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %je_tcache_bin_flush_stashed.exit

je_tcache_bin_flush_stashed.exit:                 ; preds = %bb.b, %bb.c
  %.val.i = phi i16 [ %.val17.i, %bb.b ], [ %.val.i.i20.i, %bb.c ] ; 2 uses
  %.val58.i = phi ptr [ %.val22, %bb.b ], [ %.val3.i.i21.i, %bb.c ] ; 2 uses
  %.val59.i = phi i16 [ %.val19.i, %bb.b ], [ %.val4.i.i22.i, %bb.c ] ; 4 uses
  br i1 %i.f, label %bb.d, label %bb.af

bb.d:                                             ; preds = %je_tcache_bin_flush_stashed.exit
  %i.ap = ptrtoint ptr %.val58.i to i64
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = sub i16 %.val59.i, %i.aq
  %i.as = lshr i16 %i.ar, 3                       ; 4 uses
  %i.at = getelementptr i8, ptr %i.c, i64 16
  %.val.i.i = load i16, ptr %i.at, align 8, !tbaa !48
  %i.au = sub i16 %.val59.i, %.val.i.i            ; 2 uses
  %i.av = lshr i16 %i.au, 3                       ; 2 uses
  %.not.i = icmp eq i16 %i.av, 0
  br i1 %.not.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.b ; 4 uses
  %cond.i.i = icmp eq i16 %.val.i, 0
  br i1 %cond.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !38  ; 2 uses
  %i.az = icmp ugt i8 %i.ay, 1
  br i1 %i.az, label %bb.g, label %tcache_nfill_small_gc_update.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ba = add i8 %i.ay, -1
  br label %.sink.split.i.i

bb.h:                                             ; preds = %bb.e
  %i.bb = zext i16 %.val.i to i32
  %i.bc = load i8, ptr %i.ax, align 1, !tbaa !38  ; 2 uses
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = lshr i32 %i.bb, %i.bd
  %i.bf = icmp samesign ugt i32 %i.be, 1
  br i1 %i.bf, label %bb.i, label %tcache_nfill_small_gc_update.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bg = add i8 %i.bc, 1
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.i, %bb.g
  %.sink.i.i = phi i8 [ %i.bg, %bb.i ], [ %i.ba, %bb.g ]
  store i8 %.sink.i.i, ptr %i.ax, align 1, !tbaa !38
  br label %tcache_nfill_small_gc_update.exit.i

tcache_nfill_small_gc_update.exit.i:              ; preds = %.sink.split.i.i, %bb.h, %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 0, ptr %i.bh, align 1, !tbaa !40
  br label %bb.m

bb.j:                                             ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.b ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !26, !range !20, !noundef !21
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.b ; 3 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !38  ; 2 uses
  %i.bp = icmp ugt i8 %i.bo, 1
  br i1 %i.bp, label %bb.l, label %tcache_nfill_small_gc_update.exit67.i

bb.l:                                             ; preds = %bb.k
  %i.bq = add i8 %i.bo, -1
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !38
  br label %tcache_nfill_small_gc_update.exit67.i

tcache_nfill_small_gc_update.exit67.i:            ; preds = %bb.l, %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store i8 0, ptr %i.br, align 1, !tbaa !40
  store i8 0, ptr %i.bj, align 1, !tbaa !26
  br label %bb.m

bb.m:                                             ; preds = %tcache_nfill_small_gc_update.exit67.i, %bb.j, %tcache_nfill_small_gc_update.exit.i
  %i.bs = lshr i16 %i.au, 5
  %i.bt = sub nsw i16 %i.av, %i.bs                ; 8 uses
  %i.bu = load i8, ptr @je_opt_experimental_tcache_gc, align 1, !tbaa !26, !range !20, !noundef !21
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.b ; 3 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !28  ; 2 uses
  %i.bz = zext i8 %i.by to i16
  %i.ca = icmp ult i16 %i.bt, %i.bz
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cb = trunc nuw i16 %i.bt to i8
  %i.cc = sub i8 %i.by, %i.cb
  store i8 %i.cc, ptr %i.bx, align 1, !tbaa !28
  br label %tcache_gc_small.exit

bb.p:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.b
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !27
  %i.cf = load i64, ptr @je_opt_tcache_gc_delay_bytes, align 8, !tbaa !27
  %i.cg = udiv i64 %i.cf, %i.ce
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.cg, i64 255)
  %i.ch = trunc nuw i64 %spec.select.i.i to i8
  store i8 %i.ch, ptr %i.bx, align 1, !tbaa !28
  br label %tcache_gc_small_bin_shuffle.exit.i

bb.q:                                             ; preds = %bb.m
  %i.ci = icmp eq i16 %i.bt, %i.as
  br i1 %i.ci, label %tcache_gc_small_bin_shuffle.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = getelementptr i8, ptr %1, i64 40
  %.val60.i = load ptr, ptr %i.cj, align 8, !tbaa !50
  %i.ck = call ptr @je_bin_choose(ptr noundef %0, ptr noundef %.val60.i, i32 noundef %3, ptr noundef null) #13 ; 10 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 72 ; 3 uses
  %i.cm = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.cl) #13
  %.not.i.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i.i, label %malloc_mutex_trylock_final.exit.i.i.i, label %bb.s

malloc_mutex_trylock_final.exit.i.i.i:            ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  store atomic i8 1, ptr %i.cn monotonic, align 1
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ck) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %malloc_mutex_trylock_final.exit.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 56 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !62
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !62
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 48 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !66
  %.not.i.i.i.i = icmp eq ptr %i.cs, %0
  br i1 %.not.i.i.i.i, label %malloc_mutex_lock.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %0, ptr %i.cr, align 8, !tbaa !66
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 40 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !67
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !67
  br label %malloc_mutex_lock.exit.i.i

malloc_mutex_lock.exit.i.i:                       ; preds = %bb.u, %bb.t
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 192
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !166 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.v, label %tcache_gc_small_heuristic_addr_get.exit.i

bb.v:                                             ; preds = %malloc_mutex_lock.exit.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ck, i64 200
  %i.da = call ptr @je_edata_heap_first(ptr noundef nonnull %i.cz) #13 ; 2 uses
  %.not.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i, label %tcache_gc_small_heuristic_addr_get.exit.thread.i, label %tcache_gc_small_heuristic_addr_get.exit.i

tcache_gc_small_heuristic_addr_get.exit.thread.i: ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  store atomic i8 0, ptr %i.db monotonic, align 8
  %i.dc = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cl) #13 ; 0 uses
  br label %tcache_gc_small_bin_shuffle.exit.i

tcache_gc_small_heuristic_addr_get.exit.i:        ; preds = %bb.v, %malloc_mutex_lock.exit.i.i
  %i.dd = phi ptr [ %i.da, %bb.v ], [ %i.cx, %malloc_mutex_lock.exit.i.i ]
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %.val.i68.i = load ptr, ptr %i.de, align 8, !tbaa !167 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  store atomic i8 0, ptr %i.df monotonic, align 8
  %i.dg = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cl) #13 ; 0 uses
  %i.dh = icmp eq ptr %.val.i68.i, null
  br i1 %i.dh, label %tcache_gc_small_bin_shuffle.exit.i, label %bb.w

bb.w:                                             ; preds = %tcache_gc_small_heuristic_addr_get.exit.i
  %.val61.i = load ptr, ptr %i.c, align 8, !tbaa !43 ; 6 uses
  %.val62.i = load i16, ptr %i.g, align 4, !tbaa !44
  %i.di = ptrtoint ptr %.val.i68.i to i64         ; 4 uses
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %i.b
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !168
  %i.dm = add i64 %i.dl, %i.di                    ; 2 uses
  %i.dn = icmp ugt ptr %.val.i68.i, inttoptr (i64 2097152 to ptr)
  %i.do = add i64 %i.di, -2097152
  %i.dp = select i1 %i.dn, i64 %i.do, i64 0       ; 2 uses
  %i.dq = icmp ult ptr %.val.i68.i, inttoptr (i64 -2097153 to ptr)
  %i.dr = add i64 %i.di, 2097152
  %i.ds = select i1 %i.dq, i64 %i.dr, i64 -1      ; 2 uses
  %i.dt = ptrtoint ptr %.val61.i to i64
  %i.du = trunc i64 %i.dt to i16
  %i.dv = sub i16 %.val62.i, %i.du                ; 2 uses
  %i.dw = and i16 %i.dv, -8                       ; 2 uses
  %.idx.i.i = zext i16 %i.dw to i64               ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val61.i, i64 %.idx.i.i ; 2 uses
  %.not5.i.i = icmp eq i16 %i.dw, 0
  br i1 %.not5.i.i, label %tcache_gc_small_nremote_get.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.03.i.i = phi ptr [ %i.ek, %.lr.ph.i.i ], [ %.val61.i, %bb.w ] ; 2 uses
  %.0352.i.i = phi i16 [ %i.ej, %.lr.ph.i.i ], [ 0, %bb.w ]
  %.0361.i.i = phi i16 [ %i.ee, %.lr.ph.i.i ], [ 0, %bb.w ]
  %i.dy = load ptr, ptr %.03.i.i, align 8, !tbaa !47 ; 2 uses
  %i.dz = ptrtoint ptr %i.dy to i64               ; 3 uses
  %i.ea = icmp ugt ptr %.val.i68.i, %i.dy
  %i.eb = icmp ule i64 %i.dm, %i.dz
  %i.ec = or i1 %i.ea, %i.eb
  %i.ed = zext i1 %i.ec to i16
  %i.ee = add i16 %.0361.i.i, %i.ed               ; 2 uses
  %i.ef = icmp ugt i64 %i.dp, %i.dz
  %i.eg = icmp ule i64 %i.ds, %i.dz
  %i.eh = or i1 %i.ef, %i.eg
  %i.ei = zext i1 %i.eh to i16
  %i.ej = add i16 %.0352.i.i, %i.ei               ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.03.i.i, i64 8 ; 2 uses
  %i.el = icmp ult ptr %i.ek, %i.dx
  br i1 %i.el, label %.lr.ph.i.i, label %tcache_gc_small_nremote_get.exit.i, !llvm.loop !169

tcache_gc_small_nremote_get.exit.i:               ; preds = %.lr.ph.i.i, %bb.w
  %.036.lcssa.i.i = phi i16 [ 0, %bb.w ], [ %i.ee, %.lr.ph.i.i ]
  %.035.lcssa.i.i = phi i16 [ 0, %bb.w ], [ %i.ej, %.lr.ph.i.i ] ; 2 uses
  %.not.i69.i = icmp ugt i16 %i.bt, %.035.lcssa.i.i ; 3 uses
  %..i.i = select i1 %.not.i69.i, i64 %i.di, i64 %i.dp ; 2 uses
  %.38.i.i = select i1 %.not.i69.i, i64 %i.dm, i64 %i.ds ; 2 uses
  %.036..035.i.i = select i1 %.not.i69.i, i16 %.036.lcssa.i.i, i16 %.035.lcssa.i.i ; 5 uses
  %spec.select.i = call i16 @llvm.umax.i16(i16 %.036..035.i.i, i16 %i.bt) ; 3 uses
  %i.em = icmp eq i16 %.036..035.i.i, 0
  %i.en = icmp eq i16 %.036..035.i.i, %i.as
  %or.cond.i = select i1 %i.em, i1 true, i1 %i.en
  br i1 %or.cond.i, label %tcache_gc_small_bin_shuffle.exit.i, label %bb.x

bb.x:                                             ; preds = %tcache_gc_small_nremote_get.exit.i
  %i.eo = lshr i16 %i.dv, 3                       ; 2 uses
  %i.ep = sub i16 %i.eo, %.036..035.i.i           ; 3 uses
  %i.eq = zext i16 %i.ep to i64
  %.idx.i70.i = shl nuw nsw i64 %i.eq, 3          ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.val61.i, i64 %.idx.i70.i ; 2 uses
  %.not12.i.i = icmp eq i16 %i.eo, %.036..035.i.i
  br i1 %.not12.i.i, label %.preheader1.i.i, label %.lr.ph.i71.i

.preheader1.i.i:                                  ; preds = %bb.ab, %bb.x
  %.047.lcssa.i.i = phi i16 [ 0, %bb.x ], [ %.148.i.i, %bb.ab ] ; 2 uses
  %i.es = icmp samesign uge i64 %.idx.i70.i, %.idx.i.i
  %i.et = icmp eq i16 %.047.lcssa.i.i, %i.ep
  %or.cond7.i.i = select i1 %i.es, i1 true, i1 %i.et
  br i1 %or.cond7.i.i, label %tcache_gc_small_bin_shuffle.exit.i, label %.lr.ph10.i.i

.lr.ph.i71.i:                                     ; preds = %bb.x, %bb.ab
  %.0455.i.i = phi ptr [ %.1.i.i, %bb.ab ], [ null, %bb.x ] ; 6 uses
  %.0474.i.i = phi i16 [ %.148.i.i, %bb.ab ], [ 0, %bb.x ] ; 2 uses
  %.0493.i.i = phi ptr [ %i.fd, %bb.ab ], [ %.val61.i, %bb.x ] ; 4 uses
  %i.eu = load ptr, ptr %.0493.i.i, align 8, !tbaa !47 ; 2 uses
  %i.ev = ptrtoint ptr %i.eu to i64               ; 2 uses
  %i.ew = icmp ugt i64 %..i.i, %i.ev
  %i.ex = icmp ule i64 %.38.i.i, %i.ev
  %i.ey = or i1 %i.ew, %i.ex
  br i1 %i.ey, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i71.i
  %i.ez = add i16 %.0474.i.i, 1                   ; 2 uses
  %.not.i72.i = icmp eq ptr %.0455.i.i, null
  br i1 %.not.i72.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fa = load ptr, ptr %.0455.i.i, align 8, !tbaa !47
  store ptr %i.fa, ptr %.0493.i.i, align 8, !tbaa !47
  store ptr %i.eu, ptr %.0455.i.i, align 8, !tbaa !47
  %i.fb = getelementptr inbounds nuw i8, ptr %.0455.i.i, i64 8
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i71.i
  %i.fc = icmp eq ptr %.0455.i.i, null
  %spec.select.i73.i = select i1 %i.fc, ptr %.0493.i.i, ptr %.0455.i.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.148.i.i = phi i16 [ %i.ez, %bb.y ], [ %.0474.i.i, %bb.aa ], [ %i.ez, %bb.z ] ; 2 uses
  %.1.i.i = phi ptr [ null, %bb.y ], [ %spec.select.i73.i, %bb.aa ], [ %i.fb, %bb.z ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.0493.i.i, i64 8 ; 2 uses
  %i.fe = icmp ult ptr %i.fd, %i.er
  br i1 %i.fe, label %.lr.ph.i71.i, label %.preheader1.i.i, !llvm.loop !170

.lr.ph10.i.i:                                     ; preds = %.preheader1.i.i, %bb.ad
  %.0469.i.i = phi ptr [ %i.fo, %bb.ad ], [ %i.er, %.preheader1.i.i ] ; 3 uses
  %.28.i.i = phi i16 [ %.3.i.i, %bb.ad ], [ %.047.lcssa.i.i, %.preheader1.i.i ] ; 3 uses
  %i.ff = load ptr, ptr %.0469.i.i, align 8, !tbaa !47 ; 2 uses
  %i.fg = ptrtoint ptr %i.ff to i64               ; 2 uses
  %i.fh = icmp ugt i64 %..i.i, %i.fg
  %i.fi = icmp ule i64 %.38.i.i, %i.fg
  %i.fj = or i1 %i.fh, %i.fi
  br i1 %i.fj, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph10.i.i
  %i.fk = zext i16 %.28.i.i to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.val61.i, i64 %i.fk ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !47
  store ptr %i.fm, ptr %.0469.i.i, align 8, !tbaa !47
  store ptr %i.ff, ptr %i.fl, align 8, !tbaa !47
  %i.fn = add i16 %.28.i.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph10.i.i
  %.3.i.i = phi i16 [ %.28.i.i, %.lr.ph10.i.i ], [ %i.fn, %bb.ac ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.0469.i.i, i64 8 ; 2 uses
  %i.fp = icmp uge ptr %i.fo, %i.dx
  %i.fq = icmp eq i16 %.3.i.i, %i.ep
  %or.cond.i.i = select i1 %i.fp, i1 true, i1 %i.fq
  br i1 %or.cond.i.i, label %tcache_gc_small_bin_shuffle.exit.i, label %.lr.ph10.i.i, !llvm.loop !171

tcache_gc_small_bin_shuffle.exit.i:               ; preds = %bb.ad, %.preheader1.i.i, %tcache_gc_small_nremote_get.exit.i, %tcache_gc_small_heuristic_addr_get.exit.i, %tcache_gc_small_heuristic_addr_get.exit.thread.i, %bb.q, %bb.p
  %.1.i = phi i16 [ %i.as, %bb.q ], [ %i.bt, %tcache_gc_small_heuristic_addr_get.exit.i ], [ %spec.select.i, %tcache_gc_small_nremote_get.exit.i ], [ %i.bt, %bb.p ], [ %i.bt, %tcache_gc_small_heuristic_addr_get.exit.thread.i ], [ %spec.select.i, %.preheader1.i.i ], [ %spec.select.i, %bb.ad ] ; 2 uses
  %i.fr = icmp eq i16 %.1.i, 0
  br i1 %i.fr, label %tcache_gc_small.exit, label %bb.ae

bb.ae:                                            ; preds = %tcache_gc_small_bin_shuffle.exit.i
  %i.fs = zext i16 %.1.i to i32
  %i.ft = zext nneg i16 %i.as to i32
  %i.fu = sub nsw i32 %i.ft, %i.fs
  call void @je_tcache_bin_flush_small(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %i.c, i32 noundef %3, i32 noundef %i.fu)
  br label %tcache_gc_small.exit

bb.af:                                            ; preds = %je_tcache_bin_flush_stashed.exit
  %i.fv = getelementptr i8, ptr %i.c, i64 16
  %.val.i.i24 = load i16, ptr %i.fv, align 8, !tbaa !48
  %i.fw = sub i16 %.val59.i, %.val.i.i24
  %i.fx = lshr i16 %i.fw, 3                       ; 2 uses
  %.not = icmp eq i16 %i.fx, 0
  br i1 %.not, label %tcache_gc_small.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fy = zext nneg i16 %i.fx to i32              ; 2 uses
  %i.fz = ptrtoint ptr %.val58.i to i64
  %i.ga = trunc i64 %i.fz to i16
  %i.gb = sub i16 %.val59.i, %i.ga
  %i.gc = lshr i16 %i.gb, 3
  %i.gd = zext nneg i16 %i.gc to i32
  %i.ge = lshr i32 %i.fy, 2
  %i.gf = sub nsw i32 %i.ge, %i.fy
  %i.gg = add nsw i32 %i.gf, %i.gd
  call void @je_tcache_bin_flush_large(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %i.c, i32 noundef %3, i32 noundef %i.gg)
  br label %tcache_gc_small.exit

tcache_gc_small.exit:                             ; preds = %bb.ag, %bb.af, %bb.ae, %tcache_gc_small_bin_shuffle.exit.i, %bb.o
  %.in = phi i1 [ false, %tcache_gc_small_bin_shuffle.exit.i ], [ false, %bb.o ], [ true, %bb.ae ], [ false, %bb.af ], [ true, %bb.ag ]
  %i.gh = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = trunc i64 %i.gi to i16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i16 %i.gj, ptr %i.gk, align 8, !tbaa !48
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %tcache_gc_small.exit
  %.0 = phi i1 [ %.in, %tcache_gc_small.exit ], [ false, %bb.a ]
  ret i1 %.0
}

declare i64 @je_nstime_ns(ptr noundef) local_unnamed_addr #4

declare ptr @je_edata_heap_first(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!14, !9, i64 8}
!14 = !{!"rtree_contents_s", !15, i64 0, !17, i64 8}
!15 = !{!"p1 _ZTS7edata_s", !16, i64 0}
!16 = !{!"any pointer", !10, i64 0}
!17 = !{!"rtree_metadata_s", !9, i64 0, !9, i64 4, !18, i64 8, !18, i64 9}
!18 = !{!"_Bool", !10, i64 0}
!19 = !{!14, !18, i64 17}
!20 = !{i8 0, i8 2}
!21 = !{}
!22 = !{!23, !24, i64 0}
!23 = !{!"edata_s", !24, i64 0, !16, i64 8, !10, i64 16, !25, i64 24, !24, i64 32, !10, i64 40, !10, i64 64}
!24 = !{!"long", !10, i64 0}
!25 = !{!"p1 _ZTS8hpdata_s", !16, i64 0}
!26 = !{!18, !18, i64 0}
!27 = !{!24, !24, i64 0}
!28 = !{!10, !10, i64 0}
!29 = !{!30, !31, i64 0}
!30 = !{!"tcache_s", !31, i64 0, !10, i64 8}
!31 = !{!"p1 _ZTS13tcache_slow_s", !16, i64 0}
!32 = !{!33, !36, i64 22}
!33 = !{!"cache_bin_s", !34, i64 0, !35, i64 8, !36, i64 16, !36, i64 18, !36, i64 20, !37, i64 22}
!34 = !{!"any p2 pointer", !16, i64 0}
!35 = !{!"cache_bin_stats_s", !24, i64 0}
!36 = !{!"short", !10, i64 0}
!37 = !{!"cache_bin_info_s", !36, i64 0}
!38 = !{!39, !10, i64 0}
!39 = !{!"cache_bin_fill_ctl_s", !10, i64 0, !10, i64 1}
!40 = !{!39, !10, i64 1}
!41 = !{!42, !36, i64 0}
!42 = !{!"cache_bin_ptr_array_s", !36, i64 0, !34, i64 8}
!43 = !{!33, !34, i64 0}
!44 = !{!33, !36, i64 20}
!45 = !{!42, !34, i64 8}
!46 = !{!33, !24, i64 8}
!47 = !{!16, !16, i64 0}
!48 = !{!33, !36, i64 16}
!49 = !{!33, !36, i64 18}
!50 = !{!51, !57, i64 40}
!51 = !{!"tcache_slow_s", !52, i64 0, !53, i64 16, !57, i64 40, !9, i64 48, !58, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !10, i64 76, !10, i64 148, !10, i64 184, !16, i64 224, !59, i64 232}
!52 = !{!"", !31, i64 0, !31, i64 8}
!53 = !{!"cache_bin_array_descriptor_s", !54, i64 0, !56, i64 16}
!54 = !{!"", !55, i64 0, !55, i64 8}
!55 = !{!"p1 _ZTS28cache_bin_array_descriptor_s", !16, i64 0}
!56 = !{!"p1 _ZTS11cache_bin_s", !16, i64 0}
!57 = !{!"p1 _ZTS7arena_s", !16, i64 0}
!58 = !{!"", !24, i64 0}
!59 = !{!"p1 _ZTS8tcache_s", !16, i64 0}
!60 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!61 = !{!36, !36, i64 0}
!62 = !{!63, !24, i64 56}
!63 = !{!"", !58, i64 0, !58, i64 8, !24, i64 16, !24, i64 24, !9, i64 32, !64, i64 36, !24, i64 40, !65, i64 48, !24, i64 56}
!64 = !{!"", !9, i64 0}
!65 = !{!"p1 _ZTS6tsdn_s", !16, i64 0}
!66 = !{!63, !65, i64 48}
!67 = !{!63, !24, i64 40}
!68 = !{!51, !31, i64 0}
!69 = !{!51, !31, i64 8}
!70 = !{!71, !31, i64 11976}
!71 = !{!"arena_s", !10, i64 0, !64, i64 8, !65, i64 16, !72, i64 24, !77, i64 11976, !78, i64 11984, !79, i64 11992, !64, i64 12104, !80, i64 12112, !79, i64 12120, !82, i64 12288, !9, i64 80640, !89, i64 80648, !58, i64 80656, !10, i64 80664, !10, i64 80704}
!72 = !{!"arena_stats_s", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !58, i64 48, !24, i64 56, !24, i64 64, !24, i64 72, !24, i64 80, !24, i64 88, !24, i64 96, !73, i64 104, !24, i64 184, !24, i64 192, !10, i64 200, !10, i64 968, !58, i64 11944}
!73 = !{!"pa_shard_stats_s", !24, i64 0, !74, i64 8}
!74 = !{!"pac_stats_s", !75, i64 0, !75, i64 24, !24, i64 48, !58, i64 56, !58, i64 64}
!75 = !{!"pac_decay_stats_s", !76, i64 0, !76, i64 8, !76, i64 16}
!76 = !{!"locked_u64_s", !58, i64 0}
!77 = !{!"", !31, i64 0}
!78 = !{!"", !55, i64 0}
!79 = !{!"malloc_mutex_s", !10, i64 0}
!80 = !{!"", !81, i64 0}
!81 = !{!"", !15, i64 0}
!82 = !{!"pa_shard_s", !83, i64 0, !58, i64 8, !84, i64 16, !18, i64 17, !85, i64 24, !97, i64 62272, !110, i64 68160, !9, i64 68304, !95, i64 68312, !113, i64 68320, !90, i64 68328, !89, i64 68336}
!83 = !{!"p1 _ZTS12pa_central_s", !16, i64 0}
end_hunk_0
