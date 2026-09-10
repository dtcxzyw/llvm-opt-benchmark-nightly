Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/prof_data?download=true
inline.NumInlined: 149
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@prof_tdata_destroy_locked:bb.a
  br i1 %.not306.i, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lj = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.lk = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.ll = and i64 %i.lh, -2
  %i.lm = inttoptr i64 %i.ll to ptr
  store ptr %i.lm, ptr %i.lk, align 8, !tbaa !40
  %i.ln = load ptr, ptr %i.gz, align 8, !tbaa !40
  %i.lo = ptrtoint ptr %i.ln to i64               ; 2 uses
  %i.lp = and i64 %i.lo, -2
  %i.lq = inttoptr i64 %i.lp to ptr
  store ptr %i.lq, ptr %i.lj, align 8, !tbaa !39
  %i.lr = ptrtoint ptr %i.gp to i64
  %i.ls = and i64 %i.lo, 1
  %i.lt = or i64 %i.ls, %i.lr
  %i.lu = inttoptr i64 %i.lt to ptr
  store ptr %i.lu, ptr %i.gz, align 8, !tbaa !40
  %i.lv = icmp eq ptr %.469.i, %4
  br i1 %i.lv, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.gx, ptr @tdatas, align 8, !tbaa !15
  br label %tdata_tree_remove.exit

bb.bh:                                            ; preds = %bb.bf
  %i.lw = getelementptr inbounds i8, ptr %.469.i, i64 -16 ; 2 uses
  %i.lx = getelementptr inbounds i8, ptr %.469.i, i64 -8
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !60
  %i.lz = icmp slt i32 %i.ly, 0
  br i1 %i.lz, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ma = load ptr, ptr %i.lw, align 8, !tbaa !57
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  store ptr %i.gx, ptr %i.mb, align 8, !tbaa !39
  br label %tdata_tree_remove.exit

bb.bj:                                            ; preds = %bb.bh
  %i.mc = ptrtoint ptr %i.gx to i64
  %i.md = load ptr, ptr %i.lw, align 8, !tbaa !57
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 32 ; 2 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !40
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = and i64 %i.mg, 1
  %i.mi = or i64 %i.mh, %i.mc
  %i.mj = inttoptr i64 %i.mi to ptr
  store ptr %i.mj, ptr %i.me, align 8, !tbaa !40
  br label %tdata_tree_remove.exit

bb.bk:                                            ; preds = %bb.be, %bb.bd
  %i.mk = or disjoint i64 %i.hb, 1
  %i.ml = inttoptr i64 %i.mk to ptr
  store ptr %i.ml, ptr %i.gz, align 8, !tbaa !40
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.critedge317.i
  %i.mm = getelementptr inbounds i8, ptr %.469.i, i64 -16 ; 2 uses
  %.not302.i = icmp ult ptr %i.mm, %4
  br i1 %.not302.i, label %._crit_edge.i, label %.lr.ph71.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %bb.bl, %bb.w
  %i.mn = load ptr, ptr %4, align 16, !tbaa !57
  store ptr %i.mn, ptr @tdatas, align 8, !tbaa !15
  br label %tdata_tree_remove.exit

tdata_tree_remove.exit:                           ; preds = %bb.o, %bb.q, %bb.r, %bb.t, %bb.v, %bb.ad, %bb.ae, %bb.ai, %bb.ak, %bb.al, %bb.as, %bb.au, %bb.av, %bb.ba, %bb.bb, %bb.bc, %bb.bg, %bb.bi, %bb.bj, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @je_ckh_delete(ptr noundef %0, ptr noundef nonnull %i.mo) #11
  %i.mp = icmp eq ptr %0, null                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  br i1 %i.mp, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %tdata_tree_remove.exit
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %7) #11
  br label %tsdn_rtree_ctx.exit

bb.bn:                                            ; preds = %tdata_tree_remove.exit
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.bm, %bb.bn
  %.0.i8 = phi ptr [ %7, %bb.bm ], [ %i.mq, %bb.bn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.mr = ptrtoint ptr %1 to i64                  ; 3 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef %0, ptr noundef nonnull %.0.i8, i64 noundef %i.mr)
  %i.ms = load ptr, ptr %8, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %.val = load i64, ptr %i.ms, align 8, !tbaa !48
  %i.mt = and i64 %.val, 4095
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.mt
  %i.mv = load atomic ptr, ptr %i.mu monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  br i1 %i.mp, label %bb.bo, label %bb.bp, !prof !49

bb.bo:                                            ; preds = %tsdn_rtree_ctx.exit
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %5) #11
  br label %tsdn_rtree_ctx.exit.i

bb.bp:                                            ; preds = %tsdn_rtree_ctx.exit
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i

tsdn_rtree_ctx.exit.i:                            ; preds = %bb.bp, %bb.bo
  %.0.i.i = phi ptr [ %5, %bb.bo ], [ %i.mw, %bb.bp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %0, ptr noundef nonnull %.0.i.i, i64 noundef %i.mr)
  %i.mx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !50 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !51, !range !20, !noundef !21
  %i.nb = icmp eq i32 %i.my, 232
  %i.nc = load ptr, ptr %6, align 8               ; 3 uses
  %i.nd = icmp eq ptr %i.nc, null
  %or.cond.i = select i1 %i.nb, i1 true, i1 %i.nd
  br i1 %or.cond.i, label %emap_alloc_ctx_lookup.exit, label %bb.bq

bb.bq:                                            ; preds = %tsdn_rtree_ctx.exit.i
  %.val.i = load i64, ptr %i.nc, align 8, !tbaa !48
  %i.ne = trunc i64 %.val.i to i32
  %i.nf = lshr i32 %i.ne, 20
  %i.ng = and i32 %i.nf, 255                      ; 2 uses
  %i.nh = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !19, !range !20, !noundef !21
  %i.ni = trunc nuw i8 %i.nh to i1
  %i.nj = icmp samesign ugt i32 %i.ng, 35
  %or.cond.not.i = select i1 %i.ni, i1 %i.nj, i1 false
  br i1 %or.cond.not.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nk = zext nneg i32 %i.ng to i64
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.nk
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !17
  br label %emap_alloc_ctx_lookup.exit

bb.bs:                                            ; preds = %bb.bq
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !22
  %i.np = and i64 %i.no, -4096
  %i.nq = load i64, ptr @je_sz_large_pad, align 8, !tbaa !17
  %i.nr = sub i64 %i.np, %i.nq
  br label %emap_alloc_ctx_lookup.exit

emap_alloc_ctx_lookup.exit:                       ; preds = %bb.bs, %bb.br, %tsdn_rtree_ctx.exit.i
  %i.ns = phi i64 [ 0, %tsdn_rtree_ctx.exit.i ], [ %i.nm, %bb.br ], [ %i.nr, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.nt = trunc nuw i8 %i.na to i1
  br i1 %i.nt, label %bb.bt, label %emap_alloc_ctx_usize_get.exit

bb.bt:                                            ; preds = %emap_alloc_ctx_lookup.exit
  %i.nu = zext i32 %i.my to i64
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.nu
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !17
  br label %emap_alloc_ctx_usize_get.exit

emap_alloc_ctx_usize_get.exit:                    ; preds = %emap_alloc_ctx_lookup.exit, %bb.bt
  %.0.i9 = phi i64 [ %i.nw, %bb.bt ], [ %i.ns, %emap_alloc_ctx_lookup.exit ]
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mv, i64 72
  %i.ny = atomicrmw sub ptr %i.nx, i64 %.0.i9 monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  br i1 %i.mp, label %bb.bu, label %bb.bv, !prof !49

bb.bu:                                            ; preds = %emap_alloc_ctx_usize_get.exit
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #11
  br label %tsdn_rtree_ctx.exit.i.i

bb.bv:                                            ; preds = %emap_alloc_ctx_usize_get.exit
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i.i

tsdn_rtree_ctx.exit.i.i:                          ; preds = %bb.bv, %bb.bu
  %.0.i.i.i = phi ptr [ %2, %bb.bu ], [ %i.nz, %bb.bv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i.i.i, i64 noundef %i.mr)
  %i.oa = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !51, !range !20, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.oc = trunc nuw i8 %i.ob to i1
  br i1 %i.oc, label %bb.bw, label %emap_alloc_ctx_usize_get.exit.i, !prof !23

bb.bw:                                            ; preds = %tsdn_rtree_ctx.exit.i.i
  call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %arena_dalloc_no_tcache.exit

emap_alloc_ctx_usize_get.exit.i:                  ; preds = %tsdn_rtree_ctx.exit.i.i
  call fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef nonnull %1)
  br label %arena_dalloc_no_tcache.exit

arena_dalloc_no_tcache.exit:                      ; preds = %bb.bw, %emap_alloc_ctx_usize_get.exit.i
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_prof_tctx_try_destroy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %4 = alloca [128 x %struct.tctx_tree_path_entry_t], align 16 ; 14 uses
  %5 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %6 = alloca %struct.rtree_contents_s, align 8   ; 6 uses
  %7 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %8 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %i.a = load i8, ptr @je_opt_prof_accum, align 1, !tbaa !19, !range !20, !noundef !21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %prof_tctx_should_destroy.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !68
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.c, label %prof_tctx_should_destroy.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load i8, ptr %i.e, align 8, !tbaa !69, !range !20, !noundef !21
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %prof_tctx_should_destroy.exit.thread, label %prof_tctx_should_destroy.exit

prof_tctx_should_destroy.exit:                    ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !70
  %.not6.i = icmp eq i64 %i.i, 0
  br i1 %.not6.i, label %bb.d, label %prof_tctx_should_destroy.exit.thread

bb.d:                                             ; preds = %prof_tctx_should_destroy.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71   ; 7 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !72     ; 5 uses
  store ptr null, ptr %1, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.o = tail call zeroext i1 @je_ckh_remove(ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef null, ptr noundef null) #11 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 117
  %i.q = load i8, ptr %i.p, align 1, !tbaa !38, !range !20, !noundef !21
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %prof_tdata_should_destroy.exit.thread.i, label %prof_tdata_should_destroy.exit.i

prof_tdata_should_destroy.exit.thread.i:          ; preds = %bb.d
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !37   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store atomic i8 0, ptr %i.t monotonic, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  br label %.sink.split.i

prof_tdata_should_destroy.exit.i:                 ; preds = %bb.d
  %i.v = tail call i64 @je_ckh_count(ptr noundef nonnull %i.m) #11
  %.not4.i.i.i = icmp eq i64 %i.v, 0
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !37   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store atomic i8 0, ptr %i.x monotonic, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.y) #11 ; 0 uses
  br i1 %.not4.i.i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %prof_tdata_should_destroy.exit.i
  %i.aa = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 72)) #11
  %.not.i.i35.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i35.i, label %malloc_mutex_trylock_final.exit.i.i.i, label %bb.f

malloc_mutex_trylock_final.exit.i.i.i:            ; preds = %bb.e
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 64) monotonic, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @je_tdatas_mtx) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %malloc_mutex_trylock_final.exit.i.i.i
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 56), align 8, !tbaa !28
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 56), align 8, !tbaa !28
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 48), align 8, !tbaa !29
  %.not.i.i.i.i = icmp eq ptr %i.ad, %0
  br i1 %.not.i.i.i.i, label %prof_tdata_destroy.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 48), align 8, !tbaa !29
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 40), align 8, !tbaa !30
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 40), align 8, !tbaa !30
  br label %prof_tdata_destroy.exit.i

prof_tdata_destroy.exit.i:                        ; preds = %bb.h, %bb.g
  tail call fastcc void @prof_tdata_destroy_locked(ptr noundef %0, ptr noundef nonnull %i.l)
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 64) monotonic, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %prof_tdata_destroy.exit.i, %prof_tdata_should_destroy.exit.thread.i
  %.sink.i = phi ptr [ %i.u, %prof_tdata_should_destroy.exit.thread.i ], [ getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 72), %prof_tdata_destroy.exit.i ]
  %i.ag = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %.sink.i) #11 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %prof_tdata_should_destroy.exit.i
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !77  ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aj = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ai) #11
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %malloc_mutex_trylock_final.exit.i.i, label %bb.j

malloc_mutex_trylock_final.exit.i.i:              ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store atomic i8 1, ptr %i.ak monotonic, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ah) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %malloc_mutex_trylock_final.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !28
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !29
  %.not.i.i36.i = icmp eq ptr %i.ap, %0
  br i1 %.not.i.i36.i, label %malloc_mutex_lock.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %0, ptr %i.ao, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !30
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !30
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.l, %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 132 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !78
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.m, label %bb.bw

bb.m:                                             ; preds = %malloc_mutex_lock.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !79 ; 3 uses
  store ptr %i.ax, ptr %4, align 16, !tbaa !81
  %.not374.i.i = icmp eq ptr %i.ax, null
  br i1 %.not374.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !82 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.0375.i.i = phi ptr [ %4, %.lr.ph.i.i ], [ %i.cj, %bb.t ] ; 8 uses
  %i.bc = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.pr.i.i, %bb.t ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !82 ; 2 uses
  %i.bf = tail call i32 @llvm.ucmp.i32.i64(i64 %i.az, i64 %i.be)
  %i.bg = icmp eq i64 %i.az, %i.be
  br i1 %i.bg, label %bb.o, label %prof_tctx_comp.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.bh = load i64, ptr %i.ba, align 8, !tbaa !83 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !83 ; 2 uses
  %i.bk = tail call i32 @llvm.ucmp.i32.i64(i64 %i.bh, i64 %i.bj)
  %i.bl = icmp eq i64 %i.bh, %i.bj
  br i1 %i.bl, label %bb.p, label %prof_tctx_comp.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.bm = load i64, ptr %i.bb, align 8, !tbaa !84
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !84
  %i.bp = tail call i32 @llvm.ucmp.i32.i64(i64 %i.bm, i64 %i.bo)
  br label %prof_tctx_comp.exit.i.i

prof_tctx_comp.exit.i.i:                          ; preds = %bb.p, %bb.o, %bb.n
  %.1.i.i.i = phi i32 [ %i.bf, %bb.n ], [ %i.bp, %bb.p ], [ %i.bk, %bb.o ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0375.i.i, i64 8
  store i32 %.1.i.i.i, ptr %i.bq, align 8, !tbaa !85
  %i.br = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %prof_tctx_comp.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !86 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0375.i.i, i64 16
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !81
  br label %bb.t

bb.r:                                             ; preds = %prof_tctx_comp.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !87
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = and i64 %i.bx, -2                       ; 2 uses
  %i.bz = inttoptr i64 %i.by to ptr               ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0375.i.i, i64 16
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !81
  %i.cb = icmp eq i32 %.1.i.i.i, 0
  br i1 %i.cb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %.0375.i.i, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.0375.i.i, i64 16 ; 2 uses
  store i32 1, ptr %i.cc, align 8, !tbaa !85
  %.not298376.i.i = icmp eq i64 %i.by, 0
  br i1 %.not298376.i.i, label %.loopexit.i.i, label %.lr.ph378.i.i

.lr.ph378.i.i:                                    ; preds = %bb.s, %.lr.ph378.i.i
  %.1377.i.i = phi ptr [ %i.ci, %.lr.ph378.i.i ], [ %i.cd, %bb.s ] ; 2 uses
  %i.ce = phi ptr [ %i.ch, %.lr.ph378.i.i ], [ %i.bz, %bb.s ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.1377.i.i, i64 8
  store i32 -1, ptr %i.cf, align 8, !tbaa !85
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 112
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !86 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.1377.i.i, i64 16 ; 3 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !81
  %.not298.i.i = icmp eq ptr %i.ch, null
  br i1 %.not298.i.i, label %.loopexit.i.i, label %.lr.ph378.i.i, !llvm.loop !61

bb.t:                                             ; preds = %bb.r, %bb.q
  %.pr.i.i = phi ptr [ %i.bz, %bb.r ], [ %i.bt, %bb.q ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0375.i.i, i64 16 ; 2 uses
  %.not.i37.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i37.i, label %.loopexit.i.i, label %bb.n, !llvm.loop !62

.loopexit.i.i:                                    ; preds = %bb.t, %.lr.ph378.i.i, %bb.s, %bb.m
  %.2274.i.i = phi ptr [ %.0375.i.i, %bb.s ], [ null, %bb.m ], [ %.0375.i.i, %.lr.ph378.i.i ], [ null, %bb.t ] ; 6 uses
  %.3.i.i = phi ptr [ %i.cd, %bb.s ], [ %4, %bb.m ], [ %i.ci, %.lr.ph378.i.i ], [ %i.cj, %bb.t ] ; 5 uses
  %i.ck = getelementptr inbounds i8, ptr %.3.i.i, i64 -16 ; 5 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !81 ; 5 uses
  %.not299.i.i = icmp eq ptr %i.cl, %1
  br i1 %.not299.i.i, label %bb.z, label %bb.u

bb.u:                                             ; preds = %.loopexit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 120 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !87
  %i.co = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cp = and i64 %i.co, -2
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = and i64 %i.ct, 1                        ; 2 uses
  %i.cv = or disjoint i64 %i.cu, %i.cp
  %i.cw = inttoptr i64 %i.cv to ptr
  store ptr %i.cw, ptr %i.cm, align 8, !tbaa !87
  %i.cx = load ptr, ptr %i.cq, align 8, !tbaa !86
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 112
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !86
  %i.cz = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = and i64 %i.da, -2
  %i.dc = or disjoint i64 %i.db, %i.cu
  %i.dd = inttoptr i64 %i.dc to ptr
  store ptr %i.dd, ptr %i.cm, align 8, !tbaa !87
  %i.de = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = and i64 %i.df, -2
  %i.dh = and i64 %i.co, 1
  %i.di = or disjoint i64 %i.dg, %i.dh
  %i.dj = inttoptr i64 %i.di to ptr
  store ptr %i.dj, ptr %i.cr, align 8, !tbaa !87
  store ptr %i.cl, ptr %.2274.i.i, align 8, !tbaa !81
  store ptr %1, ptr %i.ck, align 8, !tbaa !81
  %i.dk = icmp eq ptr %.2274.i.i, %4
  br i1 %i.dk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dl = load ptr, ptr %.2274.i.i, align 8, !tbaa !81
  store ptr %i.dl, ptr %i.aw, align 8, !tbaa !79
  br label %bb.af

bb.w:                                             ; preds = %bb.u
  %i.dm = getelementptr inbounds i8, ptr %.2274.i.i, i64 -16 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.2274.i.i, i64 -8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !85
  %i.dp = icmp slt i32 %i.do, 0
  %i.dq = load ptr, ptr %.2274.i.i, align 8, !tbaa !81 ; 2 uses
  br i1 %i.dp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !81
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 112
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !86
  br label %bb.af

bb.y:                                             ; preds = %bb.w
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = load ptr, ptr %i.dm, align 8, !tbaa !81
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 120 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !87
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = and i64 %i.dx, 1
  %i.dz = or i64 %i.dy, %i.dt
  %i.ea = inttoptr i64 %i.dz to ptr
  store ptr %i.ea, ptr %i.dv, align 8, !tbaa !87
  br label %bb.af

bb.z:                                             ; preds = %.loopexit.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !86 ; 5 uses
  %.not300.i.i = icmp eq ptr %i.ec, null
  br i1 %.not300.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 120 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !87
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = and i64 %i.ef, -2
  %i.eh = inttoptr i64 %i.eg to ptr
  store ptr %i.eh, ptr %i.ed, align 8, !tbaa !87
  %i.ei = icmp eq ptr %i.ck, %4
  br i1 %i.ei, label %9, label %bb.ab

9:                                                ; preds = %bb.aa
  store ptr %i.ec, ptr %i.aw, align 8, !tbaa !79
  br label %tctx_tree_remove.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.ej = getelementptr inbounds i8, ptr %.3.i.i, i64 -32 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.3.i.i, i64 -24
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !85
  %i.em = icmp slt i32 %i.el, 0
  br i1 %i.em, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !81
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 112
  store ptr %i.ec, ptr %i.eo, align 8, !tbaa !86
  br label %tctx_tree_remove.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.ep = ptrtoint ptr %i.ec to i64
  %i.eq = load ptr, ptr %i.ej, align 8, !tbaa !81
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 120 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !87
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = and i64 %i.et, 1
  %i.ev = or i64 %i.eu, %i.ep
  %i.ew = inttoptr i64 %i.ev to ptr
  store ptr %i.ew, ptr %i.er, align 8, !tbaa !87
  br label %tctx_tree_remove.exit.i

bb.ae:                                            ; preds = %bb.z
  %i.ex = icmp eq ptr %i.ck, %4
  br i1 %i.ex, label %10, label %bb.af

10:                                               ; preds = %bb.ae
  store ptr null, ptr %i.aw, align 8, !tbaa !79
  br label %tctx_tree_remove.exit.i

bb.af:                                            ; preds = %bb.ae, %bb.y, %bb.x, %bb.v
  %i.ey = phi ptr [ %i.cl, %bb.ae ], [ %1, %bb.v ], [ %1, %bb.y ], [ %1, %bb.x ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 120
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !87
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = and i64 %i.fb, 1
  %.not301.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not301.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fd = getelementptr inbounds i8, ptr %.3.i.i, i64 -32
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !81
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 112
  store ptr null, ptr %i.ff, align 8, !tbaa !86
  br label %tctx_tree_remove.exit.i

bb.ah:                                            ; preds = %bb.af
  store ptr null, ptr %i.ck, align 8, !tbaa !81
  %i.fg = getelementptr inbounds i8, ptr %.3.i.i, i64 -32 ; 2 uses
  %.not302387.i.i = icmp ult ptr %i.fg, %4
  br i1 %.not302387.i.i, label %._crit_edge.i.i, label %.lr.ph390.i.i

.lr.ph390.i.i:                                    ; preds = %bb.ah, %bb.bt
  %.4388.i.i = phi ptr [ %i.op, %bb.bt ], [ %i.fg, %bb.ah ] ; 19 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.4388.i.i, i64 8
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !85
  %i.fj = icmp slt i32 %i.fi, 0
  %i.fk = getelementptr inbounds nuw i8, ptr %.4388.i.i, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !81 ; 2 uses
  br i1 %i.fj, label %bb.ai, label %bb.aw

bb.ai:                                            ; preds = %.lr.ph390.i.i
  %i.fm = load ptr, ptr %.4388.i.i, align 8, !tbaa !81 ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 112
  store ptr %i.fl, ptr %i.fn, align 8, !tbaa !86
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 120 ; 8 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !87 ; 4 uses
  %i.fq = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.fr = and i64 %i.fq, 1
  %.not311.i.i = icmp eq i64 %i.fr, 0
  br i1 %.not311.i.i, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fs = and i64 %i.fq, -2                       ; 2 uses
  %i.ft = inttoptr i64 %i.fs to ptr               ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 112 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !86 ; 6 uses
  %.not314.i.i = icmp eq ptr %i.fv, null
  br i1 %.not314.i.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 120 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !87
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = and i64 %i.fy, 1
  %.not315.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not315.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %i.ft, ptr %i.fo, align 8, !tbaa !87
  %i.ga = load ptr, ptr %i.fw, align 8, !tbaa !87
  %i.gb = ptrtoint ptr %i.ga to i64               ; 2 uses
  %i.gc = and i64 %i.gb, -2
  %i.gd = inttoptr i64 %i.gc to ptr
  store ptr %i.gd, ptr %i.fu, align 8, !tbaa !86
  %i.ge = and i64 %i.gb, 1
  %i.gf = or disjoint i64 %i.ge, %i.fs
  %i.gg = inttoptr i64 %i.gf to ptr
  store ptr %i.gg, ptr %i.fw, align 8, !tbaa !87
  %i.gh = ptrtoint ptr %i.fv to i64
  %i.gi = load ptr, ptr %i.fo, align 8, !tbaa !87
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = or i64 %i.gj, %i.gh
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fv, i64 112 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !86
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = and i64 %i.gk, 1
  %i.gp = or i64 %i.go, %i.gn
  %i.gq = inttoptr i64 %i.gp to ptr
  store ptr %i.gq, ptr %i.fo, align 8, !tbaa !87
  store ptr %i.fm, ptr %i.gl, align 8, !tbaa !86
  br label %bb.an

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.gr = ptrtoint ptr %i.fv to i64
  %i.gs = or i64 %i.gr, 1
  %i.gt = inttoptr i64 %i.gs to ptr
  store ptr %i.gt, ptr %i.fo, align 8, !tbaa !87
  store ptr %i.fm, ptr %i.fu, align 8, !tbaa !86
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0275.i.i = phi ptr [ %i.fv, %bb.al ], [ %i.ft, %bb.am ] ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %.4388.i.i, i64 -16 ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %.4388.i.i, i64 -8
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !85
  %i.gx = icmp slt i32 %i.gw, 0
  br i1 %i.gx, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gy = load ptr, ptr %i.gu, align 8, !tbaa !81
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 112
  store ptr %.0275.i.i, ptr %i.gz, align 8, !tbaa !86
  br label %tctx_tree_remove.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.ha = ptrtoint ptr %.0275.i.i to i64
  %i.hb = load ptr, ptr %i.gu, align 8, !tbaa !81
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 120 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !87
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = and i64 %i.he, 1
  %i.hg = or i64 %i.hf, %i.ha
  %i.hh = inttoptr i64 %i.hg to ptr
  store ptr %i.hh, ptr %i.hc, align 8, !tbaa !87
  br label %tctx_tree_remove.exit.i

bb.aq:                                            ; preds = %bb.ai
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fp, i64 112 ; 3 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !86 ; 8 uses
  %.not312.i.i = icmp eq ptr %i.hj, null
  br i1 %.not312.i.i, label %.critedge317.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 120
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !87
  %i.hm = ptrtoint ptr %i.hl to i64               ; 2 uses
  %i.hn = and i64 %i.hm, 1
  %.not313.i.i = icmp eq i64 %i.hn, 0
  br i1 %.not313.i.i, label %.critedge317.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 120
  %i.hp = and i64 %i.hm, -2
  %i.hq = inttoptr i64 %i.hp to ptr
  store ptr %i.hq, ptr %i.hi, align 8, !tbaa !86
  store ptr %i.fp, ptr %i.ho, align 8, !tbaa !87
  %i.hr = ptrtoint ptr %i.hj to i64               ; 2 uses
  %i.hs = load ptr, ptr %i.fo, align 8, !tbaa !87
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = or i64 %i.ht, %i.hr
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hj, i64 112 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !86
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = and i64 %i.hu, 1
  %i.hz = or i64 %i.hy, %i.hx
  %i.ia = inttoptr i64 %i.hz to ptr
  store ptr %i.ia, ptr %i.fo, align 8, !tbaa !87
  store ptr %i.fm, ptr %i.hv, align 8, !tbaa !86
  %i.ib = icmp eq ptr %.4388.i.i, %4
  br i1 %i.ib, label %11, label %bb.at

11:                                               ; preds = %bb.as
  store ptr %i.hj, ptr %i.aw, align 8, !tbaa !79
  br label %tctx_tree_remove.exit.i

bb.at:                                            ; preds = %bb.as
  %i.ic = getelementptr inbounds i8, ptr %.4388.i.i, i64 -16
  %i.id = getelementptr inbounds i8, ptr %.4388.i.i, i64 -8
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !85
  %i.if = icmp slt i32 %i.ie, 0
  %i.ig = load ptr, ptr %i.ic, align 8, !tbaa !81 ; 2 uses
  br i1 %i.if, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 112
  store ptr %i.hj, ptr %i.ih, align 8, !tbaa !86
  br label %tctx_tree_remove.exit.i

bb.av:                                            ; preds = %bb.at
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 120 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !87
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = and i64 %i.ik, 1
  %i.im = or disjoint i64 %i.il, %i.hr
  %i.in = inttoptr i64 %i.im to ptr
  store ptr %i.in, ptr %i.ii, align 8, !tbaa !87
  br label %tctx_tree_remove.exit.i

.critedge317.i.i:                                 ; preds = %bb.ar, %bb.aq
  %i.io = ptrtoint ptr %i.hj to i64
  %i.ip = or i64 %i.io, 1
  %i.iq = inttoptr i64 %i.ip to ptr
  store ptr %i.iq, ptr %i.fo, align 8, !tbaa !87
  store ptr %i.fm, ptr %i.hi, align 8, !tbaa !86
  store ptr %i.fp, ptr %.4388.i.i, align 8, !tbaa !81
  br label %bb.bt

bb.aw:                                            ; preds = %.lr.ph390.i.i
  %i.ir = ptrtoint ptr %i.fl to i64               ; 2 uses
  %i.is = load ptr, ptr %.4388.i.i, align 8, !tbaa !81 ; 10 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 120 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !87
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = and i64 %i.iv, 1
  %i.ix = or i64 %i.iw, %i.ir                     ; 2 uses
  %i.iy = inttoptr i64 %i.ix to ptr
  store ptr %i.iy, ptr %i.it, align 8, !tbaa !87
  %i.iz = getelementptr inbounds nuw i8, ptr %i.is, i64 112
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !86 ; 9 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 112 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 120 ; 15 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !87
  %i.je = ptrtoint ptr %i.jd to i64               ; 4 uses
  %i.jf = and i64 %i.je, 1
  %.not303.i.i = icmp eq i64 %i.jf, 0
  br i1 %.not303.i.i, label %bb.bf, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jg = getelementptr inbounds nuw i8, ptr %i.is, i64 112 ; 2 uses
  %i.jh = and i64 %i.je, -2
  %i.ji = inttoptr i64 %i.jh to ptr               ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 112
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !86 ; 2 uses
  %.not309.i.i = icmp eq ptr %i.jk, null
  br i1 %.not309.i.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 120 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !87
  %i.jn = ptrtoint ptr %i.jm to i64               ; 2 uses
  %i.jo = and i64 %i.jn, 1
  %.not310.i.i = icmp eq i64 %i.jo, 0
  br i1 %.not310.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jp = and i64 %i.jn, -2
  %i.jq = inttoptr i64 %i.jp to ptr
  store ptr %i.jq, ptr %i.jl, align 8, !tbaa !87
  %i.jr = load ptr, ptr %i.jc, align 8, !tbaa !87
  %i.js = ptrtoint ptr %i.jr to i64               ; 2 uses
  %i.jt = and i64 %i.js, -2
  %i.ju = inttoptr i64 %i.jt to ptr               ; 3 uses
  %i.jv = ptrtoint ptr %i.is to i64               ; 2 uses
  %i.jw = and i64 %i.js, 1
  %i.jx = or i64 %i.jw, %i.jv
  %i.jy = inttoptr i64 %i.jx to ptr
  store ptr %i.jy, ptr %i.jc, align 8, !tbaa !87
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 120 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !87
  %i.kb = ptrtoint ptr %i.ka to i64               ; 2 uses
  %i.kc = and i64 %i.kb, -2
  %i.kd = inttoptr i64 %i.kc to ptr
  store ptr %i.kd, ptr %i.jg, align 8, !tbaa !86
  %i.ke = and i64 %i.kb, 1
  %i.kf = or i64 %i.ke, %i.jv
  %i.kg = inttoptr i64 %i.kf to ptr
  store ptr %i.kg, ptr %i.jz, align 8, !tbaa !87
  %i.kh = load ptr, ptr %i.jc, align 8, !tbaa !87
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = and i64 %i.ki, 1
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ju, i64 112 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !86
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = or i64 %i.kj, %i.km
  %i.ko = inttoptr i64 %i.kn to ptr
  store ptr %i.ko, ptr %i.jc, align 8, !tbaa !87
  store ptr %i.ja, ptr %i.kk, align 8, !tbaa !86
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ji, i64 120 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !87
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = or i64 %i.kr, 1
  %i.kt = inttoptr i64 %i.ks to ptr
  store ptr %i.kt, ptr %i.kp, align 8, !tbaa !87
  %i.ku = load ptr, ptr %i.jc, align 8, !tbaa !87
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = and i64 %i.kv, -2
  %i.kx = inttoptr i64 %i.kw to ptr
  store ptr %i.kx, ptr %i.jg, align 8, !tbaa !86
  store ptr %i.is, ptr %i.jc, align 8, !tbaa !87
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.0271.i.i = phi ptr [ %i.ju, %bb.az ], [ %i.ja, %bb.ba ] ; 3 uses
  %i.ky = icmp eq ptr %.4388.i.i, %4
  br i1 %i.ky, label %12, label %bb.bc

12:                                               ; preds = %bb.bb
  store ptr %.0271.i.i, ptr %i.aw, align 8, !tbaa !79
  br label %tctx_tree_remove.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.kz = getelementptr inbounds i8, ptr %.4388.i.i, i64 -16 ; 2 uses
  %i.la = getelementptr inbounds i8, ptr %.4388.i.i, i64 -8
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !85
  %i.lc = icmp slt i32 %i.lb, 0
  br i1 %i.lc, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ld = load ptr, ptr %i.kz, align 8, !tbaa !81
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 112
  store ptr %.0271.i.i, ptr %i.le, align 8, !tbaa !86
  br label %tctx_tree_remove.exit.i

bb.be:                                            ; preds = %bb.bc
  %i.lf = ptrtoint ptr %.0271.i.i to i64
  %i.lg = load ptr, ptr %i.kz, align 8, !tbaa !81
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 120 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !87
  %i.lj = ptrtoint ptr %i.li to i64
  %i.lk = and i64 %i.lj, 1
  %i.ll = or i64 %i.lk, %i.lf
  %i.lm = inttoptr i64 %i.ll to ptr
  store ptr %i.lm, ptr %i.lh, align 8, !tbaa !87
  br label %tctx_tree_remove.exit.i

bb.bf:                                            ; preds = %bb.aw
  %i.ln = and i64 %i.ix, 1
  %.not304.i.i = icmp eq i64 %i.ln, 0
  br i1 %.not304.i.i, label %bb.bm, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lo = getelementptr inbounds nuw i8, ptr %i.is, i64 120 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.is, i64 112
  %i.lq = load ptr, ptr %i.jb, align 8, !tbaa !86 ; 2 uses
  %.not307.i.i = icmp eq ptr %i.lq, null
  br i1 %.not307.i.i, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 120 ; 3 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !87
  %i.lt = ptrtoint ptr %i.ls to i64
  %i.lu = and i64 %i.lt, 1
  %.not308.i.i = icmp eq i64 %i.lu, 0
  br i1 %.not308.i.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lv = and i64 %i.ir, -2
  %i.lw = inttoptr i64 %i.lv to ptr
  store ptr %i.lw, ptr %i.lo, align 8, !tbaa !87
  %i.lx = load ptr, ptr %i.jc, align 8, !tbaa !87
  %i.ly = ptrtoint ptr %i.lx to i64
  %i.lz = or i64 %i.ly, 1
  %i.ma = inttoptr i64 %i.lz to ptr
  store ptr %i.ma, ptr %i.jc, align 8, !tbaa !87
  %i.mb = load ptr, ptr %i.lr, align 8, !tbaa !87
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = and i64 %i.mc, -2
  %i.me = inttoptr i64 %i.md to ptr
  store ptr %i.me, ptr %i.lr, align 8, !tbaa !87
  %i.mf = load ptr, ptr %i.jc, align 8, !tbaa !87
  %i.mg = ptrtoint ptr %i.mf to i64               ; 2 uses
  %i.mh = and i64 %i.mg, -2
  %i.mi = inttoptr i64 %i.mh to ptr
  store ptr %i.mi, ptr %i.lp, align 8, !tbaa !86
  %i.mj = ptrtoint ptr %i.is to i64
  %i.mk = and i64 %i.mg, 1
  %i.ml = or i64 %i.mk, %i.mj
  %i.mm = inttoptr i64 %i.ml to ptr
  store ptr %i.mm, ptr %i.jc, align 8, !tbaa !87
  %i.mn = getelementptr inbounds i8, ptr %.4388.i.i, i64 -16 ; 2 uses
  %i.mo = getelementptr inbounds i8, ptr %.4388.i.i, i64 -8
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !85
  %i.mq = icmp slt i32 %i.mp, 0
  br i1 %i.mq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.mr = load ptr, ptr %i.mn, align 8, !tbaa !81
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 112
  store ptr %i.ja, ptr %i.ms, align 8, !tbaa !86
  br label %tctx_tree_remove.exit.i

bb.bk:                                            ; preds = %bb.bi
  %i.mt = ptrtoint ptr %i.ja to i64
  %i.mu = load ptr, ptr %i.mn, align 8, !tbaa !81
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 120 ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !87
  %i.mx = ptrtoint ptr %i.mw to i64
  %i.my = and i64 %i.mx, 1
  %i.mz = or i64 %i.my, %i.mt
  %i.na = inttoptr i64 %i.mz to ptr
  store ptr %i.na, ptr %i.mv, align 8, !tbaa !87
  br label %tctx_tree_remove.exit.i

bb.bl:                                            ; preds = %bb.bh, %bb.bg
  %i.nb = or disjoint i64 %i.je, 1
  %i.nc = inttoptr i64 %i.nb to ptr
  store ptr %i.nc, ptr %i.jc, align 8, !tbaa !87
  %i.nd = load ptr, ptr %i.lo, align 8, !tbaa !87
  %i.ne = ptrtoint ptr %i.nd to i64
  %i.nf = and i64 %i.ne, -2
  %i.ng = inttoptr i64 %i.nf to ptr
  store ptr %i.ng, ptr %i.lo, align 8, !tbaa !87
  br label %tctx_tree_remove.exit.i

bb.bm:                                            ; preds = %bb.bf
  %i.nh = load ptr, ptr %i.jb, align 8, !tbaa !86 ; 3 uses
  %.not305.i.i = icmp eq ptr %i.nh, null
  br i1 %.not305.i.i, label %bb.bs, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 120
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !87
  %i.nk = ptrtoint ptr %i.nj to i64               ; 2 uses
  %i.nl = and i64 %i.nk, 1
  %.not306.i.i = icmp eq i64 %i.nl, 0
  br i1 %.not306.i.i, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nm = getelementptr inbounds nuw i8, ptr %i.is, i64 112
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nh, i64 120
  %i.no = and i64 %i.nk, -2
  %i.np = inttoptr i64 %i.no to ptr
  store ptr %i.np, ptr %i.nn, align 8, !tbaa !87
  %i.nq = load ptr, ptr %i.jc, align 8, !tbaa !87
  %i.nr = ptrtoint ptr %i.nq to i64               ; 2 uses
  %i.ns = and i64 %i.nr, -2
  %i.nt = inttoptr i64 %i.ns to ptr
  store ptr %i.nt, ptr %i.nm, align 8, !tbaa !86
  %i.nu = ptrtoint ptr %i.is to i64
  %i.nv = and i64 %i.nr, 1
  %i.nw = or i64 %i.nv, %i.nu
  %i.nx = inttoptr i64 %i.nw to ptr
  store ptr %i.nx, ptr %i.jc, align 8, !tbaa !87
  %i.ny = icmp eq ptr %.4388.i.i, %4
  br i1 %i.ny, label %13, label %bb.bp

13:                                               ; preds = %bb.bo
  store ptr %i.ja, ptr %i.aw, align 8, !tbaa !79
  br label %tctx_tree_remove.exit.i

bb.bp:                                            ; preds = %bb.bo
  %i.nz = getelementptr inbounds i8, ptr %.4388.i.i, i64 -16 ; 2 uses
  %i.oa = getelementptr inbounds i8, ptr %.4388.i.i, i64 -8
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !85
  %i.oc = icmp slt i32 %i.ob, 0
  br i1 %i.oc, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.od = load ptr, ptr %i.nz, align 8, !tbaa !81
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 112
  store ptr %i.ja, ptr %i.oe, align 8, !tbaa !86
  br label %tctx_tree_remove.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.of = ptrtoint ptr %i.ja to i64
  %i.og = load ptr, ptr %i.nz, align 8, !tbaa !81
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 120 ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !87
  %i.oj = ptrtoint ptr %i.oi to i64
  %i.ok = and i64 %i.oj, 1
  %i.ol = or i64 %i.ok, %i.of
  %i.om = inttoptr i64 %i.ol to ptr
  store ptr %i.om, ptr %i.oh, align 8, !tbaa !87
  br label %tctx_tree_remove.exit.i

bb.bs:                                            ; preds = %bb.bn, %bb.bm
  %i.on = or disjoint i64 %i.je, 1
  %i.oo = inttoptr i64 %i.on to ptr
  store ptr %i.oo, ptr %i.jc, align 8, !tbaa !87
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.critedge317.i.i
  %i.op = getelementptr inbounds i8, ptr %.4388.i.i, i64 -16 ; 2 uses
  %.not302.i.i = icmp ult ptr %i.op, %4
  br i1 %.not302.i.i, label %._crit_edge.i.i, label %.lr.ph390.i.i, !llvm.loop !63

._crit_edge.i.i:                                  ; preds = %bb.bt, %bb.ah
  %i.oq = load ptr, ptr %4, align 16, !tbaa !81
  store ptr %i.oq, ptr %i.aw, align 8, !tbaa !79
  br label %tctx_tree_remove.exit.i

tctx_tree_remove.exit.i:                          ; preds = %._crit_edge.i.i, %bb.br, %bb.bq, %13, %bb.bl, %bb.bk, %bb.bj, %bb.be, %bb.bd, %12, %bb.av, %bb.au, %11, %bb.ap, %bb.ao, %bb.ag, %10, %bb.ad, %bb.ac, %9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.or = load i8, ptr @je_opt_prof_accum, align 1, !tbaa !19, !range !20, !noundef !21
  %i.os = trunc nuw i8 %i.or to i1
  br i1 %i.os, label %.thread49.i, label %bb.bu

bb.bu:                                            ; preds = %tctx_tree_remove.exit.i
  %.val.i.i = load ptr, ptr %i.aw, align 8, !tbaa !79
  %14 = icmp eq ptr %.val.i.i, null
  br i1 %14, label %prof_gctx_should_destroy.exit.i, label %.thread49.i

prof_gctx_should_destroy.exit.i:                  ; preds = %bb.bu
  %i.ot = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !88
  %.not.i38.i = icmp eq i32 %i.ou, 0
  br i1 %.not.i38.i, label %bb.bv, label %.thread49.i

bb.bv:                                            ; preds = %prof_gctx_should_destroy.exit.i
  store i32 1, ptr %i.ot, align 8, !tbaa !88
  %i.ov = load ptr, ptr %i.k, align 8, !tbaa !77  ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 64
  store atomic i8 0, ptr %i.ow monotonic, align 1
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 72
  %i.oy = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ox) #11 ; 0 uses
  unreachable

.thread49.i:                                      ; preds = %prof_gctx_should_destroy.exit.i, %bb.bu, %tctx_tree_remove.exit.i
  %i.oz = load ptr, ptr %i.k, align 8, !tbaa !77  ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 64
  store atomic i8 0, ptr %i.pa monotonic, align 1
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 72
  %i.pc = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.pb) #11 ; 0 uses
  %i.pd = icmp eq ptr %0, null                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  br i1 %i.pd, label %bb.bx, label %bb.by

bb.bw:                                            ; preds = %malloc_mutex_lock.exit.i
  store i32 3, ptr %i.at, align 4, !tbaa !78
  %i.pe = load ptr, ptr %i.k, align 8, !tbaa !77  ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 64
  store atomic i8 0, ptr %i.pf monotonic, align 1
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 72
  %i.ph = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.pg) #11 ; 0 uses
  br label %prof_tctx_destroy.exit

bb.bx:                                            ; preds = %.thread49.i
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %7) #11
  br label %tsdn_rtree_ctx.exit.i

bb.by:                                            ; preds = %.thread49.i
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i

tsdn_rtree_ctx.exit.i:                            ; preds = %bb.by, %bb.bx
  %.0.i32.i = phi ptr [ %7, %bb.bx ], [ %i.pi, %bb.by ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.pj = ptrtoint ptr %1 to i64                  ; 3 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef %0, ptr noundef nonnull %.0.i32.i, i64 noundef %i.pj)
  %i.pk = load ptr, ptr %8, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %.val.i = load i64, ptr %i.pk, align 8, !tbaa !48
  %i.pl = and i64 %.val.i, 4095
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.pl
  %i.pn = load atomic ptr, ptr %i.pm monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  br i1 %i.pd, label %bb.bz, label %bb.ca, !prof !49

bb.bz:                                            ; preds = %tsdn_rtree_ctx.exit.i
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %5) #11
  br label %tsdn_rtree_ctx.exit.i.i

bb.ca:                                            ; preds = %tsdn_rtree_ctx.exit.i
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i.i

tsdn_rtree_ctx.exit.i.i:                          ; preds = %bb.ca, %bb.bz
  %.0.i.i.i = phi ptr [ %5, %bb.bz ], [ %i.po, %bb.ca ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %0, ptr noundef nonnull %.0.i.i.i, i64 noundef %i.pj)
  %i.pp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !50 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !51, !range !20, !noundef !21
  %i.pt = icmp eq i32 %i.pq, 232
  %i.pu = load ptr, ptr %6, align 8               ; 3 uses
  %i.pv = icmp eq ptr %i.pu, null
  %or.cond.i.i = select i1 %i.pt, i1 true, i1 %i.pv
  br i1 %or.cond.i.i, label %emap_alloc_ctx_lookup.exit.i, label %bb.cb

bb.cb:                                            ; preds = %tsdn_rtree_ctx.exit.i.i
  %.val.i39.i = load i64, ptr %i.pu, align 8, !tbaa !48
  %i.pw = trunc i64 %.val.i39.i to i32
  %i.px = lshr i32 %i.pw, 20
  %i.py = and i32 %i.px, 255                      ; 2 uses
  %i.pz = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !19, !range !20, !noundef !21
  %i.qa = trunc nuw i8 %i.pz to i1
  %i.qb = icmp samesign ugt i32 %i.py, 35
  %or.cond.not.i.i = select i1 %i.qa, i1 %i.qb, i1 false
  br i1 %or.cond.not.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qc = zext nneg i32 %i.py to i64
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.qc
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !17
  br label %emap_alloc_ctx_lookup.exit.i

bb.cd:                                            ; preds = %bb.cb
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !22
  %i.qh = and i64 %i.qg, -4096
  %i.qi = load i64, ptr @je_sz_large_pad, align 8, !tbaa !17
  %i.qj = sub i64 %i.qh, %i.qi
  br label %emap_alloc_ctx_lookup.exit.i

emap_alloc_ctx_lookup.exit.i:                     ; preds = %bb.cd, %bb.cc, %tsdn_rtree_ctx.exit.i.i
  %i.qk = phi i64 [ 0, %tsdn_rtree_ctx.exit.i.i ], [ %i.qe, %bb.cc ], [ %i.qj, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.ql = trunc nuw i8 %i.ps to i1
  br i1 %i.ql, label %bb.ce, label %emap_alloc_ctx_usize_get.exit.i

bb.ce:                                            ; preds = %emap_alloc_ctx_lookup.exit.i
  %i.qm = zext i32 %i.pq to i64
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.qm
  %i.qo = load i64, ptr %i.qn, align 8, !tbaa !17
  br label %emap_alloc_ctx_usize_get.exit.i

emap_alloc_ctx_usize_get.exit.i:                  ; preds = %bb.ce, %emap_alloc_ctx_lookup.exit.i
  %.0.i33.i = phi i64 [ %i.qo, %bb.ce ], [ %i.qk, %emap_alloc_ctx_lookup.exit.i ]
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pn, i64 72
  %i.qq = atomicrmw sub ptr %i.qp, i64 %.0.i33.i monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  br i1 %i.pd, label %bb.cf, label %bb.cg, !prof !49

bb.cf:                                            ; preds = %emap_alloc_ctx_usize_get.exit.i
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #11
  br label %tsdn_rtree_ctx.exit.i.i.i

bb.cg:                                            ; preds = %emap_alloc_ctx_usize_get.exit.i
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i.i.i

tsdn_rtree_ctx.exit.i.i.i:                        ; preds = %bb.cg, %bb.cf
  %.0.i.i.i.i = phi ptr [ %2, %bb.cf ], [ %i.qr, %bb.cg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i.i.i.i, i64 noundef %i.pj)
  %i.qs = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !51, !range !20, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.qu = trunc nuw i8 %i.qt to i1
  br i1 %i.qu, label %bb.ch, label %emap_alloc_ctx_usize_get.exit.i.i, !prof !23

bb.ch:                                            ; preds = %tsdn_rtree_ctx.exit.i.i.i
  call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %prof_tctx_destroy.exit

emap_alloc_ctx_usize_get.exit.i.i:                ; preds = %tsdn_rtree_ctx.exit.i.i.i
  call fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef nonnull %1)
  br label %prof_tctx_destroy.exit

prof_tctx_should_destroy.exit.thread:             ; preds = %bb.b, %bb.a, %bb.c, %prof_tctx_should_destroy.exit
  %i.qv = load ptr, ptr %1, align 8, !tbaa !72
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !37 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 64
  store atomic i8 0, ptr %i.qx monotonic, align 1
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 72
  %i.qz = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.qy) #11 ; 0 uses
  br label %prof_tctx_destroy.exit

prof_tctx_destroy.exit:                           ; preds = %emap_alloc_ctx_usize_get.exit.i.i, %bb.ch, %bb.bw, %prof_tctx_should_destroy.exit.thread
  ret void
}

declare void @je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @rtree_read(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 18)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = lshr i64 %3, 30
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %3, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !95   ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.i = lshr i64 %3, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %rtree_leaf_elm_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !95
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !23

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !95
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !96   ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !95
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !96
  store ptr %i.u, ptr %i.r, align 8, !tbaa !96
  store i64 %i.c, ptr %i.d, align 8, !tbaa !95
  store ptr %i.s, ptr %i.t, align 8, !tbaa !96
  %i.v = lshr i64 %3, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  br label %rtree_leaf_elm_lookup.exit
end_hunk_0
