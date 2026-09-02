Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/jemalloc?download=true
inline.NumInlined: 642
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@je_batch_alloc:bb.a
  br label %cache_bin_low_water_adjust.exit

cache_bin_low_water_adjust.exit:                  ; preds = %bb.ah, %bb.ai
  %i.ft = getelementptr inbounds nuw i8, ptr %.1100, i64 8 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !112
  %i.fv = add i64 %i.fu, %spec.select.i128201
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !112
  %i.fw = icmp ne i64 %spec.select.i128201, 0
  %or.cond203 = and i1 %.0.i123, %i.fw
  br i1 %or.cond203, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %cache_bin_low_water_adjust.exit
  %xtraiter = and i64 %spec.select.i128201, 7     ; 3 uses
  %i.fx = icmp samesign ult i64 %spec.select.i128201, 8
  br i1 %i.fx, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %spec.select.i128201, 8184
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0202 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.gv, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.fy = getelementptr [8 x i8], ptr %i.fb, i64 %.0202
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.fz, i8 0, i64 %storemerge.i, i1 false)
  %i.ga = getelementptr [8 x i8], ptr %i.fb, i64 %.0202
  %i.gb = getelementptr i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gc, i8 0, i64 %storemerge.i, i1 false)
  %i.gd = getelementptr [8 x i8], ptr %i.fb, i64 %.0202
  %i.ge = getelementptr i8, ptr %i.gd, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gf, i8 0, i64 %storemerge.i, i1 false)
  %i.gg = getelementptr [8 x i8], ptr %i.fb, i64 %.0202
  %i.gh = getelementptr i8, ptr %i.gg, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gi, i8 0, i64 %storemerge.i, i1 false)
  %i.gj = getelementptr [8 x i8], ptr %i.fb, i64 %.0202
  %i.gk = getelementptr i8, ptr %i.gj, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gl, i8 0, i64 %storemerge.i, i1 false)
  %i.gm = getelementptr [8 x i8], ptr %i.fb, i64 %.0202
  %i.gn = getelementptr i8, ptr %i.gm, i64 40
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.go, i8 0, i64 %storemerge.i, i1 false)
  %i.gp = getelementptr [8 x i8], ptr %i.fb, i64 %.0202
  %i.gq = getelementptr i8, ptr %i.gp, i64 48
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gr, i8 0, i64 %storemerge.i, i1 false)
  %i.gs = getelementptr [8 x i8], ptr %i.fb, i64 %.0202
  %i.gt = getelementptr i8, ptr %i.gs, i64 56
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gu, i8 0, i64 %storemerge.i, i1 false)
  %i.gv = add nuw nsw i64 %.0202, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !173

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0202.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gv, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod219 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod219)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0202.epil = phi i64 [ %i.gy, %.lr.ph.epil ], [ %.0202.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.gw = getelementptr [8 x i8], ptr %i.fb, i64 %.0202.epil
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr align 1 %i.gx, i8 0, i64 %storemerge.i, i1 false)
  %i.gy = add nuw nsw i64 %.0202.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !174

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %cache_bin_low_water_adjust.exit
  %i.gz = add i64 %spec.select.i128201, %.095
  %i.ha = add i64 %spec.select.i128201, %.1104
  br label %.critedge119

.critedge119:                                     ; preds = %bb.ac, %mallocx_tcache_get.exit.thread, %mallocx_tcache_get.exit, %tcache_get_from_ind.exit.thread178, %tcache_get_from_ind.exit, %.loopexit, %bb.ag
  %.2105 = phi i64 [ %i.ha, %.loopexit ], [ %.1104, %tcache_get_from_ind.exit.thread178 ], [ %.1104, %bb.ag ], [ %.1104, %tcache_get_from_ind.exit ], [ %.1104, %mallocx_tcache_get.exit ], [ %.1104, %mallocx_tcache_get.exit.thread ], [ %.1104, %bb.ac ] ; 4 uses
  %.2101 = phi ptr [ %.1100, %.loopexit ], [ %.099, %tcache_get_from_ind.exit.thread178 ], [ %.099, %bb.ag ], [ %.099, %tcache_get_from_ind.exit ], [ %.099, %mallocx_tcache_get.exit ], [ %.099, %mallocx_tcache_get.exit.thread ], [ %.099, %bb.ac ] ; 2 uses
  %.196 = phi i64 [ %i.gz, %.loopexit ], [ %.095, %tcache_get_from_ind.exit.thread178 ], [ %.095, %bb.ag ], [ %.095, %tcache_get_from_ind.exit ], [ %.095, %mallocx_tcache_get.exit ], [ %.095, %mallocx_tcache_get.exit.thread ], [ %.095, %bb.ac ] ; 2 uses
  %i.hb = mul i64 %.196, %storemerge.i            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i8 1, ptr %4, align 8, !tbaa !125
  store <2 x ptr> %i.du, ptr %i.do, align 8, !tbaa !178
  store <2 x ptr> %i.dw, ptr %i.dr, align 8, !tbaa !178
  %i.hc = load i64, ptr %i.dn, align 8, !tbaa !41 ; 2 uses
  %i.hd = add i64 %i.hc, %i.hb
  store i64 %i.hd, ptr %i.dn, align 8, !tbaa !41
  %i.he = load i64, ptr %i.dq, align 8, !tbaa !41
  %i.hf = sub i64 %i.he, %i.hc
  %i.hg = icmp ult i64 %i.hb, %i.hf
  br i1 %i.hg, label %te_event_advance.exit, label %bb.aj, !prof !23

bb.aj:                                            ; preds = %.critedge119
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i132151, ptr noundef nonnull %4) #20
  br label %te_event_advance.exit

te_event_advance.exit:                            ; preds = %.critedge119, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.hh = icmp ult i64 %.196, %i.dy
  br i1 %i.hh, label %bb.ak, label %select.unfold

bb.ak:                                            ; preds = %te_event_advance.exit
  %i.hi = call noalias ptr @mallocx(i64 noundef %2, i32 noundef %3) #23 ; 2 uses
  %.not115 = icmp eq ptr %i.hi, null
  br i1 %.not115, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hj = add i64 %.2105, 1
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2105
  store ptr %i.hi, ptr %i.hk, align 8, !tbaa !109
  br label %select.unfold

select.unfold:                                    ; preds = %bb.al, %te_event_advance.exit, %arena_get_from_ind.exit
  %.5 = phi ptr [ %.4, %bb.al ], [ %.4, %te_event_advance.exit ], [ null, %arena_get_from_ind.exit ]
  %.6 = phi i64 [ %i.hj, %bb.al ], [ %.2105, %te_event_advance.exit ], [ %.0103, %arena_get_from_ind.exit ] ; 2 uses
  %.3102 = phi ptr [ %.2101, %bb.al ], [ %.2101, %te_event_advance.exit ], [ %.099, %arena_get_from_ind.exit ]
  %i.hl = phi i1 [ true, %bb.al ], [ true, %te_event_advance.exit ], [ false, %arena_get_from_ind.exit ]
  br i1 %i.hl, label %bb.x, label %.critedge

.critedge:                                        ; preds = %bb.ak, %bb.ab, %select.unfold, %bb.x, %sz_s2u_compute.exit28.i, %bb.n, %bb.e, %tsd_fetch_impl.exit, %aligned_usize_get.exit, %tsd_fetch_impl.exit.thread
  %.7 = phi i64 [ 0, %tsd_fetch_impl.exit.thread ], [ 0, %aligned_usize_get.exit ], [ 0, %bb.e ], [ 0, %bb.n ], [ 0, %tsd_fetch_impl.exit ], [ 0, %sz_s2u_compute.exit28.i ], [ %.2105, %bb.ak ], [ %.0103, %bb.ab ], [ %.6, %select.unfold ], [ %.0103, %bb.x ]
  ret i64 %.7
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @arena_choose(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null, ret: address, provenance) %1) unnamed_addr #11 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %arena_choose_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !24
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.e, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.d = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %arena_choose_impl.exit, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !179
  br label %arena_choose_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.k, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext false), !inline_history !180 ; 7 uses
  %i.k = load i8, ptr %0, align 8, !tbaa !40, !range !38, !noundef !39
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !184  ; 2 uses
  %.not43.i = icmp eq ptr %i.p, null
  br i1 %.not43.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not44.i = icmp eq ptr %i.p, %i.j
  br i1 %.not44.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #20, !inline_history !180
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  tail call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef %i.j) #20, !inline_history !180
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e
  %.0.i = phi ptr [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.j, %bb.j ] ; 6 uses
  %i.q = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20 ; 2 uses
  %i.r = icmp ult i32 %i.q, 3
  br i1 %i.r, label %arena_choose_impl.exit, label %percpu_arena_ind_limit.exit.i

percpu_arena_ind_limit.exit.i:                    ; preds = %bb.k
  %i.s = getelementptr i8, ptr %.0.i, i64 80640   ; 2 uses
  %.0.val48.i = load i32, ptr %i.s, align 64, !tbaa !96
  %i.t = icmp eq i32 %i.q, 4
  %i.u = load i32, ptr @je_ncpus, align 4         ; 4 uses
  %i.v = icmp ugt i32 %i.u, 1
  %or.cond.i.i = and i1 %i.t, %i.v
  %2 = and i32 %i.u, 1
  %3 = lshr i32 %i.u, 1
  %spec.select.i = add nuw i32 %3, %2
  %.0.i47.i = select i1 %or.cond.i.i, i32 %spec.select.i, i32 %i.u
  %i.w = icmp ult i32 %.0.val48.i, %.0.i47.i
  br i1 %i.w, label %bb.l, label %arena_choose_impl.exit

bb.l:                                             ; preds = %percpu_arena_ind_limit.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !185
  %.not45.i = icmp eq ptr %i.y, %0
  br i1 %.not45.i, label %arena_choose_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = tail call i32 @sched_getcpu() #20, !inline_history !180 ; 3 uses
  %i.aa = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  %i.ab = icmp eq i32 %i.aa, 3
  br i1 %i.ab, label %percpu_arena_choose.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = load i32, ptr @je_ncpus, align 4, !tbaa !20
  %i.ad = lshr i32 %i.ac, 1                       ; 2 uses
  %i.ae = icmp ult i32 %i.z, %i.ad
  %i.af = select i1 %i.ae, i32 0, i32 %i.ad
  %spec.select.i.i = sub nuw i32 %i.z, %i.af
  br label %percpu_arena_choose.exit.i

percpu_arena_choose.exit.i:                       ; preds = %bb.n, %bb.m
  %.0.i.i = phi i32 [ %i.z, %bb.m ], [ %spec.select.i.i, %bb.n ] ; 4 uses
  %.0.val.i = load i32, ptr %i.s, align 64, !tbaa !96
  %.not46.i = icmp eq i32 %.0.val.i, %.0.i.i
  br i1 %.not46.i, label %bb.u, label %bb.o

bb.o:                                             ; preds = %percpu_arena_choose.exit.i
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !50  ; 4 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 80640
  %.val.i.i = load i32, ptr %i.ah, align 64, !tbaa !96
  %.not.i50.i = icmp eq i32 %.val.i.i, %.0.i.i
  br i1 %.not.i50.i, label %percpu_arena_update.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = zext i32 %.0.i.i to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ai
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.q, label %arena_get.exit.i.i, !prof !21

bb.q:                                             ; preds = %bb.p
  %i.am = tail call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef %.0.i.i, ptr noundef nonnull @je_arena_config_default), !inline_history !181
  br label %arena_get.exit.i.i

arena_get.exit.i.i:                               ; preds = %bb.q, %bb.p
  %.0.i18.i.i = phi ptr [ %i.am, %bb.q ], [ %i.ak, %bb.p ] ; 3 uses
  tail call void @je_arena_nthreads_dec(ptr noundef nonnull %i.ag, i1 noundef zeroext false) #20, !inline_history !182
  tail call void @je_arena_nthreads_inc(ptr noundef %.0.i18.i.i, i1 noundef zeroext false) #20, !inline_history !182
  store ptr %.0.i18.i.i, ptr %i.g, align 8, !tbaa !50
  %i.an = tail call i32 @je_arena_nthreads_get(ptr noundef nonnull %i.ag, i1 noundef zeroext false) #20, !inline_history !182
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.r, label %je_arena_migrate.exit.i.i

bb.r:                                             ; preds = %arena_get.exit.i.i
  %i.ap = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !38, !noundef !39
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %je_arena_migrate.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef nonnull %i.ag, i1 noundef zeroext false, i1 noundef zeroext true) #20, !inline_history !182
  br label %je_arena_migrate.exit.i.i

je_arena_migrate.exit.i.i:                        ; preds = %bb.s, %bb.r, %arena_get.exit.i.i
  %i.ar = load i8, ptr %0, align 8, !tbaa !40, !range !38, !noundef !39
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.t, label %percpu_arena_update.exit.i

bb.t:                                             ; preds = %je_arena_migrate.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @je_tcache_arena_reassociate(ptr noundef nonnull %0, ptr noundef nonnull %i.au, ptr noundef nonnull %i.at, ptr noundef %.0.i18.i.i) #20, !inline_history !183
  br label %percpu_arena_update.exit.i

percpu_arena_update.exit.i:                       ; preds = %bb.t, %je_arena_migrate.exit.i.i, %bb.o
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !50
  br label %bb.u

bb.u:                                             ; preds = %percpu_arena_update.exit.i, %percpu_arena_choose.exit.i
  %.1.i = phi ptr [ %i.av, %percpu_arena_update.exit.i ], [ %.0.i, %percpu_arena_choose.exit.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store ptr %0, ptr %i.aw, align 16, !tbaa !185
  br label %arena_choose_impl.exit

arena_choose_impl.exit:                           ; preds = %bb.a, %bb.c, %bb.d, %bb.k, %percpu_arena_ind_limit.exit.i, %bb.l, %bb.u
  %.037.i = phi ptr [ %1, %bb.a ], [ %.0.i, %percpu_arena_ind_limit.exit.i ], [ %.0.i, %bb.k ], [ %.1.i, %bb.u ], [ %.0.i, %bb.l ], [ %i.f, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.037.i
}

declare i64 @je_arena_fill_small_fresh(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define internal void @jemalloc_constructor() #2 {
bb.a:
  %i.a = load i32, ptr @je_malloc_init_state, align 4, !tbaa !20
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %malloc_init.exit, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @malloc_init_hard() ; 0 uses
  br label %malloc_init.exit

malloc_init.exit:                                 ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_jemalloc_prefork() #2 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 920
  %i.c = load i8, ptr %i.b, align 8, !tbaa !24
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 19 uses
  %i.e = load atomic i32, ptr @narenas_total acquire, align 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 1952
  tail call void @je_witness_prefork(ptr noundef nonnull %i.f) #20
  tail call void @je_ctl_prefork(ptr noundef %.0.i) #20
  tail call void @je_tcache_prefork(ptr noundef %.0.i) #20
  tail call void @je_malloc_mutex_prefork(ptr noundef %.0.i, ptr noundef nonnull @arenas_lock) #20
  tail call void @je_background_thread_prefork0(ptr noundef %.0.i) #20
  tail call void @je_prof_prefork0(ptr noundef %.0.i) #20
  tail call void @je_background_thread_prefork1(ptr noundef %.0.i) #20
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %tsd_fetch_impl.exit
  %wide.trip.count = zext i32 %i.e to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.03541 = phi i32 [ %i.j, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %arena_get.exit.thread
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %arena_get.exit.thread ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %indvars.iv
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 10 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %arena_get.exit.thread, label %arena_get.exit, !prof !21

arena_get.exit:                                   ; preds = %bb.c
  switch i32 %.03541, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
  ]

bb.d:                                             ; preds = %arena_get.exit
  tail call void @je_arena_prefork0(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

bb.e:                                             ; preds = %arena_get.exit
  tail call void @je_arena_prefork1(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

bb.f:                                             ; preds = %arena_get.exit
  tail call void @je_arena_prefork2(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

bb.g:                                             ; preds = %arena_get.exit
  tail call void @je_arena_prefork3(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

bb.h:                                             ; preds = %arena_get.exit
  tail call void @je_arena_prefork4(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

bb.i:                                             ; preds = %arena_get.exit
  tail call void @je_arena_prefork5(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

bb.j:                                             ; preds = %arena_get.exit
  tail call void @je_arena_prefork6(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

bb.k:                                             ; preds = %arena_get.exit
  tail call void @je_arena_prefork7(ptr noundef %.0.i, ptr noundef nonnull %i.h) #20
  br label %arena_get.exit.thread

bb.l:                                             ; preds = %arena_get.exit
end_hunk_0
begin_hunk_1_@malloc_init_hard:bb.a
malloc_init_hard_needed.exit:                     ; preds = %bb.f
  %.not = icmp eq i32 %i.h, 2
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %malloc_init_hard_needed.exit
  %i.ad = tail call fastcc zeroext i1 @malloc_init_hard_a0_locked()
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  %i.ae = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !213 ; 0 uses
  br label %malloc_init_hard_cleanup.exit

bb.n:                                             ; preds = %bb.l, %malloc_init_hard_needed.exit
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  %i.af = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !3 ; 0 uses
  %i.ag = tail call ptr @je_malloc_tsd_boot0() #20 ; 13 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %malloc_init_hard_cleanup.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr @je_malloc_init_state, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.ai = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %1) #20, !inline_history !214 ; 0 uses
  %i.aj = call i32 @__sched_cpucount(i64 noundef 128, ptr noundef nonnull %1) #20, !inline_history !214 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.ak = icmp eq i32 %i.aj, -1
  %i.al = select i1 %i.ak, i32 1, i32 %i.aj
  store i32 %i.al, ptr @je_ncpus, align 4, !tbaa !20
  %i.am = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  %.not2.i = icmp eq i32 %i.am, 2
  br i1 %.not2.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = call i64 @sysconf(i32 noundef 84) #20, !inline_history !215 ; 2 uses
  %i.ao = call i64 @sysconf(i32 noundef 83) #20, !inline_history !215
  %.not.i.i23 = icmp eq i64 %i.an, %i.ao
  br i1 %.not.i.i23, label %bb.q, label %malloc_cpu_count_is_deterministic.exit.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.ap = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %0) #20, !inline_history !215 ; 0 uses
  %i.aq = call i32 @__sched_cpucount(i64 noundef 128, ptr noundef nonnull %0) #20, !inline_history !215
  %i.ar = sext i32 %i.aq to i64
  %.not5.i.i = icmp eq i64 %i.an, %i.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br label %malloc_cpu_count_is_deterministic.exit.i

malloc_cpu_count_is_deterministic.exit.i:         ; preds = %bb.q, %bb.p
  %.1.i.i = phi i1 [ %.not5.i.i, %bb.q ], [ false, %bb.p ]
  %i.as = load i32, ptr @je_opt_narenas, align 4
  %i.at = icmp ne i32 %i.as, 0
  %or.cond.not.i = select i1 %.1.i.i, i1 true, i1 %i.at
  br i1 %or.cond.not.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %malloc_cpu_count_is_deterministic.exit.i
  store i32 2, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  call void @je_malloc_write(ptr noundef nonnull @.str.94) #20, !inline_history !216
  %i.au = load i8, ptr @je_opt_abort_conf, align 1, !tbaa !40, !range !38, !noundef !39
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @je_malloc_abort_invalid_conf() #20, !inline_history !216
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aw = load i8, ptr @je_opt_abort, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @abort() #21, !inline_history !216
  unreachable

bb.v:                                             ; preds = %bb.t, %malloc_cpu_count_is_deterministic.exit.i, %bb.o
  %i.ay = call i32 @pthread_atfork(ptr noundef nonnull @je_jemalloc_prefork, ptr noundef nonnull @je_jemalloc_postfork_parent, ptr noundef nonnull @je_jemalloc_postfork_child) #20, !inline_history !216
  %.not.i24 = icmp eq i32 %i.ay, 0
  br i1 %.not.i24, label %malloc_init_hard_recursible.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @je_malloc_write(ptr noundef nonnull @.str.95) #20, !inline_history !216
  %i.az = load i8, ptr @je_opt_abort, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.x, label %malloc_init_hard_cleanup.exit

bb.x:                                             ; preds = %bb.w
  call void @abort() #21, !inline_history !216
  unreachable

malloc_init_hard_recursible.exit:                 ; preds = %bb.v
  %i.bb = call zeroext i1 @je_background_thread_boot0() #20, !inline_history !216
  br i1 %i.bb, label %malloc_init_hard_cleanup.exit, label %bb.y

bb.y:                                             ; preds = %malloc_init_hard_recursible.exit
  %i.bc = call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !1
  %.not.i26 = icmp eq i32 %i.bc, 0
  br i1 %.not.i26, label %malloc_mutex_trylock_final.exit.i28, label %bb.z

malloc_mutex_trylock_final.exit.i28:              ; preds = %bb.y
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @init_lock) #20, !inline_history !2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %malloc_mutex_trylock_final.exit.i28
  %i.bd = load i64, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 56), align 8, !tbaa !46
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 56), align 8, !tbaa !46
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 48), align 8, !tbaa !47
  %.not.i.i27 = icmp eq ptr %i.bf, %i.ag
  br i1 %.not.i.i27, label %malloc_mutex_lock.exit29, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.ag, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 48), align 8, !tbaa !47
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 40), align 8, !tbaa !48
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 40), align 8, !tbaa !48
  br label %malloc_mutex_lock.exit29

malloc_mutex_lock.exit29:                         ; preds = %bb.aa, %bb.ab
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 920
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !24
  %i.bk = icmp eq i8 %i.bj, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 6 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !24
  %i.bn = add i8 %i.bm, 1
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !24
  br i1 %i.bk, label %bb.ac, label %pre_reentrancy.exit

bb.ac:                                            ; preds = %malloc_mutex_lock.exit29
  call void @je_tsd_slow_update(ptr noundef nonnull %i.ag) #20, !inline_history !217
  br label %pre_reentrancy.exit

pre_reentrancy.exit:                              ; preds = %malloc_mutex_lock.exit29, %bb.ac
  %i.bo = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  %.not.i30 = icmp eq i32 %i.bo, 2
  br i1 %.not.i30, label %thread-pre-split.i, label %bb.ad

bb.ad:                                            ; preds = %pre_reentrancy.exit
  %i.bp = call i32 @sched_getcpu() #20, !inline_history !218
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  store i32 2, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  %i.br = load i32, ptr @je_opt_narenas, align 4, !tbaa !20 ; 2 uses
  %.not7.i = icmp eq i32 %i.br, 0
  br i1 %.not7.i, label %bb.af, label %malloc_narenas_default.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.bs = load i32, ptr @je_ncpus, align 4, !tbaa !20 ; 2 uses
  %i.bt = icmp ugt i32 %i.bs, 1
  br i1 %i.bt, label %bb.ag, label %malloc_narenas_default.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.bu = shl i32 %i.bs, 16
  %i.bv = load i32, ptr @je_opt_narenas_ratio, align 4, !tbaa !20
  %i.bw = zext i32 %i.bu to i64
  %i.bx = zext i32 %i.bv to i64
  %i.by = mul nuw i64 %i.bx, %i.bw
  %i.bz = lshr exact i64 %i.by, 16
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = lshr i32 %i.ca, 15
  %.lobit.i.i.i = and i32 %i.cb, 1
  %i.cc = lshr i32 %i.ca, 16
  %i.cd = add nuw nsw i32 %.lobit.i.i.i, %i.cc
  %..i.i = call i32 @llvm.umax.i32(i32 %i.cd, i32 1)
  br label %malloc_narenas_default.exit.i

malloc_narenas_default.exit.i:                    ; preds = %bb.ag, %bb.af, %bb.ae
  %i.ce = phi i32 [ %i.br, %bb.ae ], [ %..i.i, %bb.ag ], [ 1, %bb.af ]
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.96, i32 noundef %i.ce) #20, !inline_history !218
  %i.cf = load i8, ptr @je_opt_abort, align 1, !tbaa !40, !range !38, !noundef !39
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.ah, label %thread-pre-split.i

bb.ah:                                            ; preds = %malloc_narenas_default.exit.i
  call void @abort() #21, !inline_history !218
  unreachable

bb.ai:                                            ; preds = %bb.ad
  %i.ch = load i32, ptr @je_ncpus, align 4, !tbaa !20 ; 5 uses
  %i.ci = icmp ugt i32 %i.ch, 4094
  br i1 %i.ci, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.97, i32 noundef %i.ch) #20, !inline_history !218
  %i.cj = load i8, ptr @je_opt_abort, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.ak, label %malloc_init_narenas.exit.thread

bb.ak:                                            ; preds = %bb.aj
  call void @abort() #21, !inline_history !218
  unreachable

bb.al:                                            ; preds = %bb.ai
  %i.cl = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20 ; 2 uses
  %3 = icmp ne i32 %i.cl, 1
  %4 = and i32 %i.ch, 1                           ; 2 uses
  %.not6.i = icmp eq i32 %4, 0
  %or.cond.i31 = or i1 %.not6.i, %3
  br i1 %or.cond.i31, label %percpu_arena_ind_limit.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.98, i32 noundef %i.ch) #20, !inline_history !218
  %i.cm = load i8, ptr @je_opt_abort, align 1, !tbaa !40, !range !38, !noundef !39
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.an, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.am
  %.pre.i = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  %.pre17.i.a = load i32, ptr @je_ncpus, align 4  ; 2 uses
  %.pre = and i32 %.pre17.i.a, 1
  br label %percpu_arena_ind_limit.exit.i

bb.an:                                            ; preds = %bb.am
  call void @abort() #21, !inline_history !218
  unreachable

percpu_arena_ind_limit.exit.i:                    ; preds = %._crit_edge.i, %bb.al
  %.pre-phi = phi i32 [ %.pre, %._crit_edge.i ], [ %4, %bb.al ]
  %i.co = phi i32 [ %.pre17.i.a, %._crit_edge.i ], [ %i.ch, %bb.al ] ; 3 uses
  %i.cp = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.cl, %bb.al ]
  %i.cq = icmp eq i32 %i.cp, 1
  %i.cr = icmp ugt i32 %i.co, 1
  %or.cond.i.i = and i1 %i.cr, %i.cq
  %i.cs = lshr i32 %i.co, 1
  %spec.select.i = add nuw i32 %i.cs, %.pre-phi
  %.0.i.i = select i1 %or.cond.i.i, i32 %spec.select.i, i32 %i.co ; 2 uses
  %i.ct = load i32, ptr @je_opt_narenas, align 4, !tbaa !20 ; 2 uses
  %i.cu = icmp ult i32 %i.ct, %.0.i.i
  br i1 %i.cu, label %thread-pre-split15.sink.split.i, label %bb.ao

thread-pre-split.i:                               ; preds = %malloc_narenas_default.exit.i, %pre_reentrancy.exit
  %.pr.i = load i32, ptr @je_opt_narenas, align 4, !tbaa !20
  br label %bb.ao

bb.ao:                                            ; preds = %thread-pre-split.i, %percpu_arena_ind_limit.exit.i
  %.pr16.i = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.ct, %percpu_arena_ind_limit.exit.i ] ; 2 uses
  %i.cv = icmp eq i32 %.pr16.i, 0
  br i1 %i.cv, label %bb.ap, label %thread-pre-split15.i

bb.ap:                                            ; preds = %bb.ao
  %i.cw = load i32, ptr @je_ncpus, align 4, !tbaa !20 ; 2 uses
  %i.cx = icmp ugt i32 %i.cw, 1
  br i1 %i.cx, label %bb.aq, label %thread-pre-split15.sink.split.i

bb.aq:                                            ; preds = %bb.ap
  %i.cy = shl i32 %i.cw, 16
  %i.cz = load i32, ptr @je_opt_narenas_ratio, align 4, !tbaa !20
  %i.da = zext i32 %i.cy to i64
  %i.db = zext i32 %i.cz to i64
  %i.dc = mul nuw i64 %i.db, %i.da
  %i.dd = lshr exact i64 %i.dc, 16
  %i.de = trunc i64 %i.dd to i32                  ; 2 uses
  %i.df = lshr i32 %i.de, 15
  %.lobit.i.i12.i = and i32 %i.df, 1
  %i.dg = lshr i32 %i.de, 16
  %i.dh = add nuw nsw i32 %.lobit.i.i12.i, %i.dg
  %..i13.i = call i32 @llvm.umax.i32(i32 %i.dh, i32 1)
  br label %thread-pre-split15.sink.split.i

thread-pre-split15.sink.split.i:                  ; preds = %bb.aq, %bb.ap, %percpu_arena_ind_limit.exit.i
  %.0.i.sink.i = phi i32 [ %.0.i.i, %percpu_arena_ind_limit.exit.i ], [ %..i13.i, %bb.aq ], [ 1, %bb.ap ] ; 2 uses
  store i32 %.0.i.sink.i, ptr @je_opt_narenas, align 4, !tbaa !20
  br label %thread-pre-split15.i

thread-pre-split15.i:                             ; preds = %thread-pre-split15.sink.split.i, %bb.ao
  %i.di = phi i32 [ %.pr16.i, %bb.ao ], [ %.0.i.sink.i, %thread-pre-split15.sink.split.i ] ; 3 uses
  store i32 %i.di, ptr @je_narenas_auto, align 4, !tbaa !20
  %i.dj = icmp ugt i32 %i.di, 4094
  br i1 %i.dj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %thread-pre-split15.i
  store i32 4094, ptr @je_narenas_auto, align 4, !tbaa !20
  call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.99, i32 noundef 4094) #20, !inline_history !218
  %.pre18.i = load i32, ptr @je_narenas_auto, align 4, !tbaa !20
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %thread-pre-split15.i
  %i.dk = phi i32 [ %.pre18.i, %bb.ar ], [ %i.di, %thread-pre-split15.i ]
  store atomic i32 %i.dk, ptr @narenas_total release, align 4
  %i.dl = load ptr, ptr @a0, align 8, !tbaa !50
  %i.dm = call zeroext i1 @je_arena_init_huge(ptr noundef nonnull %i.ag, ptr noundef %i.dl) #20, !inline_history !218
  br i1 %i.dm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dn = atomicrmw add ptr @narenas_total, i32 1 release, align 4 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.do = load atomic i32, ptr @narenas_total acquire, align 4
  store i32 %i.do, ptr @je_manual_arena_base, align 4, !tbaa !20
  %i.dp = call ptr @je_b0get() #20
  %i.dq = call zeroext i1 @je_background_thread_boot1(ptr noundef nonnull %i.ag, ptr noundef %i.dp) #20
  br i1 %i.dq, label %malloc_init_narenas.exit.thread, label %bb.aw

malloc_init_narenas.exit.thread:                  ; preds = %bb.aj, %bb.au
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  %i.dr = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !213 ; 0 uses
  %i.ds = load i8, ptr %i.bl, align 1, !tbaa !24
  %i.dt = add i8 %i.ds, -1                        ; 2 uses
  store i8 %i.dt, ptr %i.bl, align 1, !tbaa !24
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %bb.av, label %malloc_init_hard_cleanup.exit

bb.av:                                            ; preds = %malloc_init_narenas.exit.thread
  call void @je_tsd_slow_update(ptr noundef nonnull %i.ag) #20, !inline_history !219
  br label %malloc_init_hard_cleanup.exit

bb.aw:                                            ; preds = %bb.au
  %i.dv = load i8, ptr @je_opt_hpa, align 1, !tbaa !40, !range !38, !noundef !39
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %arena_get.exit, label %bb.ay

arena_get.exit:                                   ; preds = %bb.aw
  %i.dx = load atomic ptr, ptr @je_arenas acquire, align 64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) @je_opt_hpa_opts, i64 80, i1 false), !tbaa.struct !222
  %i.dy = load atomic i8, ptr @je_background_thread_enabled_state monotonic, align 1, !range !38, !noundef !39
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 %i.dy, ptr %i.dz, align 4, !tbaa !223
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 12288
  %i.eb = call zeroext i1 @je_pa_shard_enable_hpa(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ea, ptr noundef nonnull %2, ptr noundef nonnull @je_opt_hpa_sec_opts) #20
  br i1 %i.eb, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %arena_get.exit
  call fastcc void @malloc_init_hard_cleanup(ptr noundef nonnull %i.ag, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %malloc_init_hard_cleanup.exit

.critedge:                                        ; preds = %arena_get.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.ay

bb.ay:                                            ; preds = %.critedge, %bb.aw
  %i.ec = load i32, ptr @je_opt_percpu_arena, align 4, !tbaa !20 ; 2 uses
  %.not.i.i34 = icmp eq i32 %i.ec, 2
  %i.ed = add i32 %i.ec, 3
  %spec.select.i.i = select i1 %.not.i.i34, i32 2, i32 %i.ed
  store i32 %spec.select.i.i, ptr @je_opt_percpu_arena, align 4, !tbaa !20
  %i.ee = call zeroext i1 @je_malloc_mutex_boot() #20, !inline_history !220
  br i1 %i.ee, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call fastcc void @malloc_init_hard_cleanup(ptr noundef nonnull %i.ag, i1 noundef zeroext true)
  br label %malloc_init_hard_cleanup.exit

bb.ba:                                            ; preds = %bb.ay
  store i32 0, ptr @je_malloc_init_state, align 4, !tbaa !20
  %i.ef = load i8, ptr @je_opt_junk_alloc, align 1, !tbaa !40, !range !38, !noundef !39
  %i.eg = load i8, ptr @je_opt_junk_free, align 1, !tbaa !40, !range !38, !noundef !39
  %i.eh = shl nuw nsw i8 %i.eg, 1
  %i.ei = or disjoint i8 %i.eh, %i.ef
  %i.ej = load i8, ptr @je_opt_zero, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ek = shl nuw nsw i8 %i.ej, 2
  %i.el = or disjoint i8 %i.ei, %i.ek
  %i.em = load i8, ptr @je_opt_utrace, align 1, !tbaa !40, !range !38, !noundef !39
  %i.en = shl nuw nsw i8 %i.em, 3
  %i.eo = or disjoint i8 %i.el, %i.en
  %i.ep = load i8, ptr @je_opt_xmalloc, align 1, !tbaa !40, !range !38, !noundef !39
  %i.eq = shl nuw nsw i8 %i.ep, 4
  %i.er = or disjoint i8 %i.eo, %i.eq
  %i.es = load i8, ptr @malloc_slow_flags, align 1, !tbaa !24
  %i.et = or i8 %i.er, %i.es                      ; 2 uses
  store i8 %i.et, ptr @malloc_slow_flags, align 1, !tbaa !24
  %i.eu = icmp ne i8 %i.et, 0
  %i.ev = zext i1 %i.eu to i8
  store i8 %i.ev, ptr @je_malloc_slow, align 1, !tbaa !40
  %i.ew = load i8, ptr %i.bl, align 1, !tbaa !24
  %i.ex = add i8 %i.ew, -1                        ; 2 uses
  store i8 %i.ex, ptr %i.bl, align 1, !tbaa !24
  %i.ey = icmp eq i8 %i.ex, 0
  br i1 %i.ey, label %bb.bb, label %post_reentrancy.exit

bb.bb:                                            ; preds = %bb.ba
  call void @je_tsd_slow_update(ptr noundef nonnull %i.ag) #20, !inline_history !7
  br label %post_reentrancy.exit

post_reentrancy.exit:                             ; preds = %bb.ba, %bb.bb
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  %i.ez = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !3 ; 0 uses
  call void @je_malloc_tsd_boot1() #20
  %i.fa = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 920
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !24
  %.not.i = icmp eq i8 %i.fc, 0
  br i1 %.not.i, label %tsd_fetch_impl.exit, label %bb.bc, !prof !23

bb.bc:                                            ; preds = %post_reentrancy.exit
  %i.fd = call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.fa, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %post_reentrancy.exit, %bb.bc
  %.0.i = phi ptr [ %i.fd, %bb.bc ], [ %i.fa, %post_reentrancy.exit ] ; 2 uses
  %i.fe = load i8, ptr @je_opt_background_thread, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %tsd_fetch_impl.exit
  call void @je_background_thread_ctl_init(ptr noundef %.0.i) #20
  %i.fg = call zeroext i1 @je_background_thread_create(ptr noundef %.0.i, i32 noundef 0) #20
  br i1 %i.fg, label %malloc_init_hard_cleanup.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd, %tsd_fetch_impl.exit
  br label %malloc_init_hard_cleanup.exit

malloc_init_hard_cleanup.exit:                    ; preds = %bb.w, %bb.av, %malloc_init_narenas.exit.thread, %bb.ax, %bb.bd, %malloc_init_hard_recursible.exit, %bb.n, %bb.be, %bb.az, %bb.m, %.loopexit
  %.1 = phi i1 [ true, %bb.m ], [ false, %.loopexit ], [ true, %bb.n ], [ true, %bb.av ], [ true, %bb.az ], [ true, %malloc_init_hard_recursible.exit ], [ false, %bb.be ], [ true, %bb.ax ], [ true, %bb.bd ], [ true, %malloc_init_narenas.exit.thread ], [ true, %bb.w ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @malloc_init_hard_cleanup(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
bb.a:
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @init_lock, i64 64) monotonic, align 8
  %i.a = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @init_lock, i64 72)) #20, !inline_history !3 ; 0 uses
  br i1 %1, label %bb.b, label %post_reentrancy.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !24
  %i.d = add i8 %i.c, -1                          ; 2 uses
  store i8 %i.d, ptr %i.b, align 1, !tbaa !24
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %post_reentrancy.exit

bb.c:                                             ; preds = %bb.b
end_hunk_1
