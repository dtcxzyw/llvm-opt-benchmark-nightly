Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/prof_data?download=true
inline.NumInlined: 149
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@prof_tdata_destroy_locked:bb.a
  br i1 %.not307.i, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 32 ; 3 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !40
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = and i64 %i.jq, 1
  %.not308.i = icmp eq i64 %i.jr, 0
  br i1 %.not308.i, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.js = and i64 %i.go, -2
  %i.jt = inttoptr i64 %i.js to ptr
  store ptr %i.jt, ptr %i.jl, align 8, !tbaa !40
  %i.ju = load ptr, ptr %i.gz, align 8, !tbaa !40
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = or i64 %i.jv, 1
  %i.jx = inttoptr i64 %i.jw to ptr
  store ptr %i.jx, ptr %i.gz, align 8, !tbaa !40
  %i.jy = load ptr, ptr %i.jo, align 8, !tbaa !40
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = and i64 %i.jz, -2
  %i.kb = inttoptr i64 %i.ka to ptr
  store ptr %i.kb, ptr %i.jo, align 8, !tbaa !40
  %i.kc = load ptr, ptr %i.gz, align 8, !tbaa !40
  %i.kd = ptrtoint ptr %i.kc to i64               ; 2 uses
  %i.ke = and i64 %i.kd, -2
  %i.kf = inttoptr i64 %i.ke to ptr
  store ptr %i.kf, ptr %i.jm, align 8, !tbaa !39
  %i.kg = ptrtoint ptr %i.gp to i64
  %i.kh = and i64 %i.kd, 1
  %i.ki = or i64 %i.kh, %i.kg
  %i.kj = inttoptr i64 %i.ki to ptr
  store ptr %i.kj, ptr %i.gz, align 8, !tbaa !40
  %i.kk = getelementptr inbounds i8, ptr %.469.i, i64 -16 ; 2 uses
  %i.kl = getelementptr inbounds i8, ptr %.469.i, i64 -8
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !60
  %i.kn = icmp slt i32 %i.km, 0
  br i1 %i.kn, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ko = load ptr, ptr %i.kk, align 8, !tbaa !57
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  store ptr %i.gx, ptr %i.kp, align 8, !tbaa !39
  br label %tdata_tree_remove.exit

bb.bb:                                            ; preds = %bb.az
  %i.kq = ptrtoint ptr %i.gx to i64
  %i.kr = load ptr, ptr %i.kk, align 8, !tbaa !57
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 32 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = and i64 %i.ku, 1
  %i.kw = or i64 %i.kv, %i.kq
  %i.kx = inttoptr i64 %i.kw to ptr
  store ptr %i.kx, ptr %i.ks, align 8, !tbaa !40
  br label %tdata_tree_remove.exit

bb.bc:                                            ; preds = %bb.ay, %bb.ax
  %i.ky = or disjoint i64 %i.hb, 1
  %i.kz = inttoptr i64 %i.ky to ptr
  store ptr %i.kz, ptr %i.gz, align 8, !tbaa !40
  %i.la = load ptr, ptr %i.jl, align 8, !tbaa !40
  %i.lb = ptrtoint ptr %i.la to i64
  %i.lc = and i64 %i.lb, -2
  %i.ld = inttoptr i64 %i.lc to ptr
  store ptr %i.ld, ptr %i.jl, align 8, !tbaa !40
  br label %tdata_tree_remove.exit

bb.bd:                                            ; preds = %bb.aw
  %i.le = load ptr, ptr %i.gy, align 8, !tbaa !39 ; 3 uses
  %.not305.i = icmp eq ptr %i.le, null
  br i1 %.not305.i, label %bb.bk, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !40
  %i.lh = ptrtoint ptr %i.lg to i64               ; 2 uses
  %i.li = and i64 %i.lh, 1
  %.not306.i = icmp eq i64 %i.li, 0
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
  %.val.i = load i64, ptr %i.nc, align 8, !tbaa !48 ; 2 uses
  %i.ne = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !19, !range !20, !noundef !21
  %i.nf = trunc nuw i8 %i.ne to i1
  %9 = and i64 %.val.i, 264241152
  %i.ng = icmp samesign ugt i64 %9, 36700160
  %or.cond.not.i = select i1 %i.nf, i1 %i.ng, i1 false
  br i1 %or.cond.not.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %10 = lshr i64 %.val.i, 20
  %11 = and i64 %10, 255
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %11
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !17
  br label %emap_alloc_ctx_lookup.exit

bb.bs:                                            ; preds = %bb.bq
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !22
  %i.nl = and i64 %i.nk, -4096
  %i.nm = load i64, ptr @je_sz_large_pad, align 8, !tbaa !17
  %i.nn = sub i64 %i.nl, %i.nm
  br label %emap_alloc_ctx_lookup.exit

emap_alloc_ctx_lookup.exit:                       ; preds = %bb.bs, %bb.br, %tsdn_rtree_ctx.exit.i
  %i.no = phi i64 [ 0, %tsdn_rtree_ctx.exit.i ], [ %i.ni, %bb.br ], [ %i.nn, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.np = trunc nuw i8 %i.na to i1
  br i1 %i.np, label %bb.bt, label %emap_alloc_ctx_usize_get.exit

bb.bt:                                            ; preds = %emap_alloc_ctx_lookup.exit
  %i.nq = zext i32 %i.my to i64
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.nq
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !17
  br label %emap_alloc_ctx_usize_get.exit

emap_alloc_ctx_usize_get.exit:                    ; preds = %emap_alloc_ctx_lookup.exit, %bb.bt
  %.0.i9 = phi i64 [ %i.ns, %bb.bt ], [ %i.no, %emap_alloc_ctx_lookup.exit ]
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mv, i64 72
  %i.nu = atomicrmw sub ptr %i.nt, i64 %.0.i9 monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  br i1 %i.mp, label %bb.bu, label %bb.bv, !prof !49

bb.bu:                                            ; preds = %emap_alloc_ctx_usize_get.exit
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #11
  br label %tsdn_rtree_ctx.exit.i.i

bb.bv:                                            ; preds = %emap_alloc_ctx_usize_get.exit
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i.i

tsdn_rtree_ctx.exit.i.i:                          ; preds = %bb.bv, %bb.bu
  %.0.i.i.i = phi ptr [ %2, %bb.bu ], [ %i.nv, %bb.bv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i.i.i, i64 noundef %i.mr)
  %i.nw = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !51, !range !20, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.ny = trunc nuw i8 %i.nx to i1
  br i1 %i.ny, label %bb.bw, label %emap_alloc_ctx_usize_get.exit.i, !prof !23

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
end_hunk_0
begin_hunk_1_@je_prof_tctx_try_destroy:bb.a
  %i.mq = icmp slt i32 %i.mp, 0
  br i1 %i.mq, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.mr = load ptr, ptr %i.mn, align 8, !tbaa !81
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 112
  store ptr %i.ja, ptr %i.ms, align 8, !tbaa !86
  br label %tctx_tree_remove.exit.i

bb.bo:                                            ; preds = %bb.bm
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

bb.bp:                                            ; preds = %bb.bl, %bb.bk
  %i.nb = or disjoint i64 %i.je, 1
  %i.nc = inttoptr i64 %i.nb to ptr
  store ptr %i.nc, ptr %i.jc, align 8, !tbaa !87
  %i.nd = load ptr, ptr %i.lo, align 8, !tbaa !87
  %i.ne = ptrtoint ptr %i.nd to i64
  %i.nf = and i64 %i.ne, -2
  %i.ng = inttoptr i64 %i.nf to ptr
  store ptr %i.ng, ptr %i.lo, align 8, !tbaa !87
  br label %tctx_tree_remove.exit.i

bb.bq:                                            ; preds = %bb.bj
  %i.nh = load ptr, ptr %i.jb, align 8, !tbaa !86 ; 3 uses
  %.not305.i.i = icmp eq ptr %i.nh, null
  br i1 %.not305.i.i, label %bb.bx, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 120
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !87
  %i.nk = ptrtoint ptr %i.nj to i64               ; 2 uses
  %i.nl = and i64 %i.nk, 1
  %.not306.i.i = icmp eq i64 %i.nl, 0
  br i1 %.not306.i.i, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %bb.br
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
  br i1 %i.ny, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store ptr %i.ja, ptr %i.aw, align 8, !tbaa !79
  br label %tctx_tree_remove.exit.i

bb.bu:                                            ; preds = %bb.bs
  %i.nz = getelementptr inbounds i8, ptr %.4388.i.i, i64 -16 ; 2 uses
  %i.oa = getelementptr inbounds i8, ptr %.4388.i.i, i64 -8
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !85
  %i.oc = icmp slt i32 %i.ob, 0
  br i1 %i.oc, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.od = load ptr, ptr %i.nz, align 8, !tbaa !81
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 112
  store ptr %i.ja, ptr %i.oe, align 8, !tbaa !86
  br label %tctx_tree_remove.exit.i

bb.bw:                                            ; preds = %bb.bu
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

bb.bx:                                            ; preds = %bb.br, %bb.bq
  %i.on = or disjoint i64 %i.je, 1
  %i.oo = inttoptr i64 %i.on to ptr
  store ptr %i.oo, ptr %i.jc, align 8, !tbaa !87
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.critedge317.i.i
  %i.op = getelementptr inbounds i8, ptr %.4388.i.i, i64 -16 ; 2 uses
  %.not302.i.i = icmp ult ptr %i.op, %4
  br i1 %.not302.i.i, label %._crit_edge.i.i, label %.lr.ph390.i.i, !llvm.loop !63

._crit_edge.i.i:                                  ; preds = %bb.by, %bb.aj
  %i.oq = load ptr, ptr %4, align 16, !tbaa !81
  store ptr %i.oq, ptr %i.aw, align 8, !tbaa !79
  br label %tctx_tree_remove.exit.i

tctx_tree_remove.exit.i:                          ; preds = %._crit_edge.i.i, %bb.bw, %bb.bv, %bb.bt, %bb.bp, %bb.bo, %bb.bn, %bb.bi, %bb.bh, %bb.bf, %bb.ay, %bb.ax, %bb.av, %bb.ar, %bb.aq, %bb.ai, %bb.ag, %bb.ae, %bb.ad, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.or = load i8, ptr @je_opt_prof_accum, align 1, !tbaa !19, !range !20, !noundef !21
  %i.os = trunc nuw i8 %i.or to i1
  br i1 %i.os, label %.thread49.i, label %bb.bz

bb.bz:                                            ; preds = %tctx_tree_remove.exit.i
  %.val.i.i = load ptr, ptr %i.aw, align 8, !tbaa !79
  %i.ot = icmp eq ptr %.val.i.i, null
  br i1 %i.ot, label %prof_gctx_should_destroy.exit.i, label %.thread49.i

prof_gctx_should_destroy.exit.i:                  ; preds = %bb.bz
  %i.ou = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ov = load i32, ptr %i.ou, align 8, !tbaa !88
  %.not.i38.i = icmp eq i32 %i.ov, 0
  br i1 %.not.i38.i, label %bb.ca, label %.thread49.i

bb.ca:                                            ; preds = %prof_gctx_should_destroy.exit.i
  store i32 1, ptr %i.ou, align 8, !tbaa !88
  %i.ow = load ptr, ptr %i.k, align 8, !tbaa !77  ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 64
  store atomic i8 0, ptr %i.ox monotonic, align 1
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 72
  %i.oz = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.oy) #11 ; 0 uses
  unreachable

.thread49.i:                                      ; preds = %prof_gctx_should_destroy.exit.i, %bb.bz, %tctx_tree_remove.exit.i
  %i.pa = load ptr, ptr %i.k, align 8, !tbaa !77  ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 64
  store atomic i8 0, ptr %i.pb monotonic, align 1
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 72
  %i.pd = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.pc) #11 ; 0 uses
  %i.pe = icmp eq ptr %0, null                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  br i1 %i.pe, label %bb.cc, label %bb.cd

bb.cb:                                            ; preds = %malloc_mutex_lock.exit.i
  store i32 3, ptr %i.at, align 4, !tbaa !78
  %i.pf = load ptr, ptr %i.k, align 8, !tbaa !77  ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 64
  store atomic i8 0, ptr %i.pg monotonic, align 1
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 72
  %i.pi = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ph) #11 ; 0 uses
  br label %prof_tctx_destroy.exit

bb.cc:                                            ; preds = %.thread49.i
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %7) #11
  br label %tsdn_rtree_ctx.exit.i

bb.cd:                                            ; preds = %.thread49.i
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i

tsdn_rtree_ctx.exit.i:                            ; preds = %bb.cd, %bb.cc
  %.0.i32.i = phi ptr [ %7, %bb.cc ], [ %i.pj, %bb.cd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.pk = ptrtoint ptr %1 to i64                  ; 3 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef %0, ptr noundef nonnull %.0.i32.i, i64 noundef %i.pk)
  %i.pl = load ptr, ptr %8, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %.val.i = load i64, ptr %i.pl, align 8, !tbaa !48
  %i.pm = and i64 %.val.i, 4095
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.pm
  %i.po = load atomic ptr, ptr %i.pn monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  br i1 %i.pe, label %bb.ce, label %bb.cf, !prof !49

bb.ce:                                            ; preds = %tsdn_rtree_ctx.exit.i
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %5) #11
  br label %tsdn_rtree_ctx.exit.i.i

bb.cf:                                            ; preds = %tsdn_rtree_ctx.exit.i
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i.i

tsdn_rtree_ctx.exit.i.i:                          ; preds = %bb.cf, %bb.ce
  %.0.i.i.i = phi ptr [ %5, %bb.ce ], [ %i.pp, %bb.cf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %0, ptr noundef nonnull %.0.i.i.i, i64 noundef %i.pk)
  %i.pq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !50 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !51, !range !20, !noundef !21
  %i.pu = icmp eq i32 %i.pr, 232
  %i.pv = load ptr, ptr %6, align 8               ; 3 uses
  %i.pw = icmp eq ptr %i.pv, null
  %or.cond.i.i = select i1 %i.pu, i1 true, i1 %i.pw
  br i1 %or.cond.i.i, label %emap_alloc_ctx_lookup.exit.i, label %bb.cg

bb.cg:                                            ; preds = %tsdn_rtree_ctx.exit.i.i
  %.val.i39.i = load i64, ptr %i.pv, align 8, !tbaa !48 ; 2 uses
  %i.px = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !19, !range !20, !noundef !21
  %i.py = trunc nuw i8 %i.px to i1
  %9 = and i64 %.val.i39.i, 264241152
  %i.pz = icmp samesign ugt i64 %9, 36700160
  %or.cond.not.i.i = select i1 %i.py, i1 %i.pz, i1 false
  br i1 %or.cond.not.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %10 = lshr i64 %.val.i39.i, 20
  %11 = and i64 %10, 255
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %11
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !17
  br label %emap_alloc_ctx_lookup.exit.i

bb.ci:                                            ; preds = %bb.cg
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !22
  %i.qe = and i64 %i.qd, -4096
  %i.qf = load i64, ptr @je_sz_large_pad, align 8, !tbaa !17
  %i.qg = sub i64 %i.qe, %i.qf
  br label %emap_alloc_ctx_lookup.exit.i

emap_alloc_ctx_lookup.exit.i:                     ; preds = %bb.ci, %bb.ch, %tsdn_rtree_ctx.exit.i.i
  %i.qh = phi i64 [ 0, %tsdn_rtree_ctx.exit.i.i ], [ %i.qb, %bb.ch ], [ %i.qg, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.qi = trunc nuw i8 %i.pt to i1
  br i1 %i.qi, label %bb.cj, label %emap_alloc_ctx_usize_get.exit.i

bb.cj:                                            ; preds = %emap_alloc_ctx_lookup.exit.i
  %i.qj = zext i32 %i.pr to i64
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.qj
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !17
  br label %emap_alloc_ctx_usize_get.exit.i

emap_alloc_ctx_usize_get.exit.i:                  ; preds = %bb.cj, %emap_alloc_ctx_lookup.exit.i
  %.0.i33.i = phi i64 [ %i.ql, %bb.cj ], [ %i.qh, %emap_alloc_ctx_lookup.exit.i ]
  %i.qm = getelementptr inbounds nuw i8, ptr %i.po, i64 72
  %i.qn = atomicrmw sub ptr %i.qm, i64 %.0.i33.i monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  br i1 %i.pe, label %bb.ck, label %bb.cl, !prof !49

bb.ck:                                            ; preds = %emap_alloc_ctx_usize_get.exit.i
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #11
  br label %tsdn_rtree_ctx.exit.i.i.i

bb.cl:                                            ; preds = %emap_alloc_ctx_usize_get.exit.i
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i.i.i

tsdn_rtree_ctx.exit.i.i.i:                        ; preds = %bb.cl, %bb.ck
  %.0.i.i.i.i = phi ptr [ %2, %bb.ck ], [ %i.qo, %bb.cl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i.i.i.i, i64 noundef %i.pk)
  %i.qp = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !51, !range !20, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.qr = trunc nuw i8 %i.qq to i1
  br i1 %i.qr, label %bb.cm, label %emap_alloc_ctx_usize_get.exit.i.i, !prof !23

bb.cm:                                            ; preds = %tsdn_rtree_ctx.exit.i.i.i
  call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %prof_tctx_destroy.exit

emap_alloc_ctx_usize_get.exit.i.i:                ; preds = %tsdn_rtree_ctx.exit.i.i.i
  call fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef nonnull %1)
  br label %prof_tctx_destroy.exit

prof_tctx_should_destroy.exit.thread:             ; preds = %bb.b, %bb.a, %bb.c, %prof_tctx_should_destroy.exit
  %i.qs = load ptr, ptr %1, align 8, !tbaa !72
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !37 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 64
  store atomic i8 0, ptr %i.qu monotonic, align 1
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 72
  %i.qw = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.qv) #11 ; 0 uses
  br label %prof_tctx_destroy.exit

prof_tctx_destroy.exit:                           ; preds = %emap_alloc_ctx_usize_get.exit.i.i, %bb.cm, %bb.cb, %prof_tctx_should_destroy.exit.thread
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

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !95
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !23

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !95
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !23

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !95
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !23

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !95
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !23

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !95
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !23

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !95
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %.preheader.6
  %i.aq = tail call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %1, ptr noundef nonnull @je_arena_emap_global, ptr noundef nonnull %2, i64 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false) #11
  br label %rtree_leaf_elm_lookup.exit

bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !96 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !95
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !95
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !96
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !96
  store i64 %i.e, ptr %i.at, align 8, !tbaa !95
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !96
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !96
  store i64 %i.c, ptr %i.d, align 8, !tbaa !95
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !96
  %i.az = lshr i64 %3, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  br label %rtree_leaf_elm_lookup.exit

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !97
  %i.bd = ptrtoint ptr %i.bc to i64               ; 5 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !50, !alias.scope !98
  %i.bh = trunc i64 %i.bd to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.bj = and i8 %i.bh, 1
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !51, !alias.scope !98
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = lshr i64 %i.bd, 1
  %5 = trunc i64 %4 to i8
  %i.bl = and i8 %5, 1
  store i8 %i.bl, ptr %i.bk, align 8, !tbaa !99, !alias.scope !98
  %6 = lshr i64 %i.bd, 2
  %7 = trunc i64 %6 to i32
  %i.bm = and i32 %7, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !100, !alias.scope !98
  %i.bo = shl i64 %i.bd, 16
  %i.bp = ashr exact i64 %i.bo, 16
  %i.bq = and i64 %i.bp, -128
  %i.br = inttoptr i64 %i.bq to ptr
  store ptr %i.br, ptr %0, align 8, !tbaa !45, !alias.scope !98
  ret void
}

declare void @je_rtree_ctx_data_init(ptr noundef) local_unnamed_addr #1

declare ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

declare zeroext i1 @je_ckh_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @je_arena_dalloc_small(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1) unnamed_addr #8 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #11
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %2, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i, i64 noundef %i.c)
  %i.d = load ptr, ptr %3, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @je_large_dalloc(ptr noundef %0, ptr noundef %i.d) #11
  ret void
}

declare void @je_large_dalloc(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @je_tsd_fetch_slow(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #9

; Function Attrs: nounwind uwtable
define internal fastcc ptr @tdata_tree_iter_recurse(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr3 = phi ptr [ %i.j, %tailrecurse ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.tr3, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = tail call fastcc ptr @tdata_tree_iter_recurse(ptr noundef %i.c, ptr noundef %1, ptr noundef %2) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.e = tail call ptr %1(ptr noundef nonnull @tdatas, ptr noundef nonnull %.tr3, ptr noundef %2) #11, !callees !101 ; 2 uses
  %.not19 = icmp eq ptr %i.e, null
  br i1 %.not19, label %tailrecurse, label %._crit_edge

tailrecurse:                                      ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr3, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, -2                         ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %tailrecurse, %.lr.ph, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.d, %.lr.ph ], [ %i.e, %bb.b ], [ null, %tailrecurse ]
  ret ptr %.1
}

declare void @je_ckh_delete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS12prof_tdata_s", !12, i64 0}
!14 = !{!"", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"_Bool", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{i8 0, i8 2}
!21 = !{}
!22 = !{!8, !8, i64 0}
!23 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!24 = !{!"", !16, i64 0}
!25 = !{!"", !9, i64 0}
!26 = !{!"p1 _ZTS6tsdn_s", !12, i64 0}
!27 = !{!"", !24, i64 0, !24, i64 8, !16, i64 16, !16, i64 24, !9, i64 32, !25, i64 36, !16, i64 40, !26, i64 48, !16, i64 56}
!28 = !{!27, !16, i64 56}
!29 = !{!27, !26, i64 48}
!30 = !{!27, !16, i64 40}
!31 = !{!"p1 _ZTS14malloc_mutex_s", !12, i64 0}
!32 = !{!"", !13, i64 0, !13, i64 8}
!33 = !{!"", !16, i64 0, !16, i64 8, !9, i64 16, !9, i64 20, !12, i64 24, !12, i64 32, !12, i64 40}
!34 = !{!"prof_cnt_s", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56}
!35 = !{!"any p2 pointer", !12, i64 0}
!36 = !{!"prof_tdata_s", !31, i64 0, !16, i64 8, !16, i64 16, !32, i64 24, !16, i64 40, !33, i64 48, !8, i64 96, !18, i64 112, !18, i64 113, !18, i64 114, !18, i64 115, !18, i64 116, !18, i64 117, !18, i64 118, !34, i64 120, !35, i64 184}
!37 = !{!36, !31, i64 0}
!38 = !{!36, !18, i64 117}
!39 = !{!36, !13, i64 24}
!40 = !{!36, !13, i64 32}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"p1 _ZTS7edata_s", !12, i64 0}
!43 = !{!"rtree_metadata_s", !9, i64 0, !9, i64 4, !18, i64 8, !18, i64 9}
!44 = !{!"rtree_contents_s", !42, i64 0, !43, i64 8}
!45 = !{!44, !42, i64 0}
!46 = !{!"p1 _ZTS8hpdata_s", !12, i64 0}
!47 = !{!"edata_s", !16, i64 0, !12, i64 8, !8, i64 16, !46, i64 24, !16, i64 32, !8, i64 40, !8, i64 64}
!48 = !{!47, !16, i64 0}
!49 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!50 = !{!44, !9, i64 8}
!51 = !{!44, !18, i64 17}
!52 = !{!13, !13, i64 0}
!53 = distinct !{!53, !41}
!54 = distinct !{!54, !41}
!55 = distinct !{!55, !41}
!56 = !{!"", !13, i64 0, !9, i64 8}
!57 = !{!56, !13, i64 0}
!58 = !{!36, !16, i64 8}
!59 = !{!36, !16, i64 16}
!60 = !{!56, !9, i64 8}
!61 = distinct !{!61, !41}
!62 = distinct !{!62, !41}
!63 = distinct !{!63, !41}
!64 = !{!"p1 _ZTS11prof_gctx_s", !12, i64 0}
!65 = !{!"p1 _ZTS11prof_tctx_s", !12, i64 0}
!66 = !{!"", !65, i64 0, !65, i64 8}
!67 = !{!"prof_tctx_s", !13, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !34, i64 32, !64, i64 96, !16, i64 104, !66, i64 112, !18, i64 128, !9, i64 132, !34, i64 136}
!68 = !{!67, !16, i64 32}
!69 = !{!67, !18, i64 128}
!70 = !{!67, !16, i64 24}
!71 = !{!67, !64, i64 96}
!72 = !{!67, !13, i64 0}
!73 = !{!"", !65, i64 0}
!74 = !{!"", !64, i64 0, !64, i64 8}
!75 = !{!"prof_bt_s", !35, i64 0, !9, i64 8}
!76 = !{!"prof_gctx_s", !31, i64 0, !9, i64 8, !73, i64 16, !74, i64 24, !34, i64 40, !75, i64 104, !8, i64 120}
!77 = !{!76, !31, i64 0}
!78 = !{!67, !9, i64 132}
!79 = !{!73, !65, i64 0}
!80 = !{!"", !65, i64 0, !9, i64 8}
!81 = !{!80, !65, i64 0}
!82 = !{!67, !16, i64 8}
!83 = !{!67, !16, i64 16}
!84 = !{!67, !16, i64 104}
!85 = !{!80, !9, i64 8}
!86 = !{!67, !65, i64 112}
!87 = !{!67, !65, i64 120}
!88 = !{!76, !9, i64 8}
!89 = distinct !{!89, !"rtree_leaf_elm_read"}
!90 = distinct !{!90, !89, !"rtree_leaf_elm_read: argument 0"}
end_hunk_1
